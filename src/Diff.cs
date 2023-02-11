public sealed class Diff
{
	public int LineNumber { get; set; } = default!;
	public int ColumnNumber { get; set; } = default!;
	public Char Expected { get; set; } = default!;
	public Char Actual { get; set; } = default!;
}
