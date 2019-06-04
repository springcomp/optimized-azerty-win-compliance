## Keyboard Layout Testing Tool

This repository contains a very simple [AutoHotKey]()https://www.autohotkey.com/) script and accompanying compliance testing command-line tool, to test available keystrokes from the currently selected keyboard layout and compare the result against a know state.

This tool is currently being used to test compliance of the [AZERTY-NF](https://springcomp.github.io/optimized-azerty-win/) keyboard layout.

### How to test

This repository contains the current `expected.txt` file that stores the requested keystrokes for a NF Z71-300 standard-compliant AZERTY keyboard layout.

In order to test the keyboard layout, please follow the steps outlined hereafter:

- Install and select the desired keyboard layout.
- Run the `nf-z71-300.ahk` script.
- Open an empty Notepad® text file
- In Notepad®, hit <kbd>Ctrl</kbd>+<kbd>r</kbd> to run the test.
- When the test completes, save the resulting file in the UTF-8 encoding. For instance, save the file as `actual.txt`.

You can now compile and run the accompanying `compliance.exe` command-line tool, with the following command:

    ````
    PS> cd src/
    PS> dotnet run ..\expected.txt ..\actual.txt
    ````

This will gather the results and report the compliance rate of the layout.

### Current compliance level

The referred to AZERTY-NF layout is currently reporting the following results:

    ````
    Success: 96,95%
    Total: 524, Succeeded: 508, Failed: 16.
    ..\expected.txt(37, 1): Expected: 'a' (U+0101), Actual: '_' (U+02CD).
    ..\expected.txt(37, 2): Expected: 'e' (U+0113), Actual: 'a' (U+0061).
    ..\expected.txt(37, 3): Expected: '?' (U+1E21), Actual: '_' (U+02CD).
    ..\expected.txt(37, 4): Expected: 'i' (U+012B), Actual: 'e' (U+0065).
    ..\expected.txt(37, 5): Expected: 'o' (U+014D), Actual: '_' (U+02CD).
    ..\expected.txt(37, 6): Expected: 'u' (U+016B), Actual: 'g' (U+0067).
    ..\expected.txt(37, 7): Expected: '?' (U+0233), Actual: '_' (U+02CD).
    ..\expected.txt(37, 8): Expected: '?' (U+01E3), Actual: 'i' (U+0069).
    ..\expected.txt(38, 1): Expected: 'A' (U+0100), Actual: '_' (U+02CD).
    ..\expected.txt(38, 2): Expected: 'E' (U+0112), Actual: 'A' (U+0041).
    ..\expected.txt(38, 3): Expected: '?' (U+1E20), Actual: '_' (U+02CD).
    ..\expected.txt(38, 4): Expected: 'I' (U+012A), Actual: 'E' (U+0045).
    ..\expected.txt(38, 5): Expected: 'O' (U+014C), Actual: '_' (U+02CD).
    ..\expected.txt(38, 6): Expected: 'U' (U+016A), Actual: 'G' (U+0047).
    ..\expected.txt(38, 7): Expected: '?' (U+0232), Actual: '_' (U+02CD).
    ..\expected.txt(38, 8): Expected: '?' (U+01E2), Actual: 'I' (U+0049).
    ````
