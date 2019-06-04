using System;
using System.Collections.Generic;
using System.IO;

namespace src
{

    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 1)
            {
                Console.WriteLine("Please, specify the result of the AutoHotKey script against your installed Keyboard layout.");
                Environment.Exit(42);
            }

            var compliance = new Compliance();

            var actual = args[0];
            var expected = "expected.txt";
            var output = "result.log";

            if (args.Length >= 2)
            {
                expected = args[1];
            }

            if (args.Length >= 3)
            {
                output = args[2];
            }

            using (var eStream = File.OpenRead(expected))
            using (var eReader = new StreamReader(eStream))
            using (var aStream = File.OpenRead(actual))
            using (var aReader = new StreamReader(aStream))
            {
                var lineNum = 1;

                var eLine = "";

                while ((eLine = eReader.ReadLine()) != null)
                {
                    var aLine = aReader.ReadLine();
                    if (aLine == null)
                    {
                        Console.WriteLine("EOF while reading the actual layout.");
                        Environment.Exit(42);
                    }

                    compliance = Merge(compliance, CompareLines(lineNum, aLine, eLine));

                    lineNum++;
                }
            }

            var total = compliance.Total;
            var succeeded = compliance.Succeeded;
            var percent = 100.0 * ((Double)succeeded / (Double)total);

            Console.WriteLine($"Success: {percent:###.##}%");
            Console.WriteLine($"Total: {total}, Succeeded: {succeeded}, Failed: {total - succeeded}.");

            if (percent != 100.00)
            {
                foreach (var diff in compliance.Diffs)
                {
                    var eChar = diff.Expected;
                    var aChar = diff.Actual;

                    var eCodePoint = ((int) eChar).ToString("X4");
                    var aCodePoint = ((int) aChar).ToString("X4");

                    Console.WriteLine($"{expected}({diff.LineNumber}, {diff.ColumnNumber}): Expected: '{eChar}' (U+{eCodePoint}), Actual: '{aChar}' (U+{aCodePoint}).");
                }
            }
        }
        private static Compliance CompareLines(int lineNum, string actual, string expected)
        {
            var length = Math.Min(actual.Length, expected.Length);
            var succeeded = 0;
            var characters = 0;

            var diffs = new List<Diff>();

            // TODO: improve alg if line lengths are different

            for (var column = 0; column < length; column++)
            {
                if (actual[column] == expected[column])
                {
                    if (actual[column] != ' ')
                    {
                        succeeded++;
                        characters++;
                    }
                }

                else
                {
                    characters++;

                    diffs.Add(new Diff
                    {
                        LineNumber = lineNum,
                        ColumnNumber = column + 1,
                        Actual = actual[column],
                        Expected = expected[column],
                    });
                }
            }

            return new Compliance
            {
                Total = characters,
                Succeeded = succeeded,
                Diffs = diffs.ToArray(),
            };
        }
        private static Compliance Merge(Compliance left, Compliance right)
        {
            left.Total += right.Total;
            left.Succeeded += right.Succeeded;

            var arr = new List<Diff>(left.Diffs ?? new Diff[] { });
            arr.AddRange(right.Diffs ?? new Diff[] { });

            left.Diffs = arr.ToArray();

            return left;
        }
    }
}
