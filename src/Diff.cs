using System;

namespace src
{
    public sealed class Diff
    {
        public int LineNumber { get; set; }
        public int ColumnNumber { get; set; }
        public Char Expected { get; set; }
        public Char Actual { get; set; }
    }
}
