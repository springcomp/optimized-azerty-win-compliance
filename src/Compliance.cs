public sealed class Compliance
{
	public int Total { get; set; } = default!;
	public int Succeeded { get; set; } = default!;
	public Diff[] Diffs { get; set; } = Array.Empty<Diff>();

	public Compliance Merge(Compliance other)
	=> Compliance.Merge(this, other);

	public static Compliance CompareLines(int lineNum, string actual, string expected)
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
