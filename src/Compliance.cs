namespace src
{
    public sealed class Compliance
    {
        public int Total { get; set; }
        public int Succeeded { get; set; }
        public Diff[] Diffs { get; set; }
    }
}
