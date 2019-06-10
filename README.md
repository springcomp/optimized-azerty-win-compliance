## Keyboard Layout Testing Tool

This repository contains a very simple [AutoHotKey](https://www.autohotkey.com/) script and accompanying compliance testing command-line tool, to test available keystrokes from the currently selected keyboard layout and compare the result against a known state.

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

    PS> cd src/
    PS> dotnet run ..\actual.txt ..\expected.txt

This will gather the results and report the compliance rate of the layout.

<a name="compliance"></a>
### Current compliance level

The referred to AZERTY-NF layout is currently reporting the following results:

    Success: 97,34%
    Total: 752, Succeeded: 732, Failed: 20.
    ..\expected.txt(21, 2): Expected: '1' (U+0031), Actual: 'À' (U+00C0).
    ..\expected.txt(21, 3): Expected: '2' (U+0032), Actual: 'É' (U+00C9).
    ..\expected.txt(21, 4): Expected: '3' (U+0033), Actual: 'È' (U+00C8).
    ..\expected.txt(21, 5): Expected: '4' (U+0034), Actual: 'Ê' (U+00CA).
    ..\expected.txt(21, 6): Expected: '5' (U+0035), Actual: '(' (U+0028).
    ..\expected.txt(21, 7): Expected: '6' (U+0036), Actual: ')' (U+0029).
    ..\expected.txt(21, 8): Expected: '7' (U+0037), Actual: ''' (U+2018).
    ..\expected.txt(21, 9): Expected: '8' (U+0038), Actual: ''' (U+2019).
    ..\expected.txt(21, 10): Expected: '9' (U+0039), Actual: '«' (U+00AB).
    ..\expected.txt(21, 11): Expected: '0' (U+0030), Actual: '»' (U+00BB).
    ..\expected.txt(26, 2): Expected: 'à' (U+00E0), Actual: '1' (U+0031).
    ..\expected.txt(26, 3): Expected: 'é' (U+00E9), Actual: '2' (U+0032).
    ..\expected.txt(26, 4): Expected: 'è' (U+00E8), Actual: '3' (U+0033).
    ..\expected.txt(26, 5): Expected: 'ê' (U+00EA), Actual: '4' (U+0034).
    ..\expected.txt(26, 6): Expected: '(' (U+0028), Actual: '5' (U+0035).
    ..\expected.txt(26, 7): Expected: ')' (U+0029), Actual: '6' (U+0036).
    ..\expected.txt(26, 8): Expected: ''' (U+2018), Actual: '7' (U+0037).
    ..\expected.txt(26, 9): Expected: ''' (U+2019), Actual: '8' (U+0038).
    ..\expected.txt(26, 10): Expected: '«' (U+00AB), Actual: '9' (U+0039).
    ..\expected.txt(26, 11): Expected: '»' (U+00BB), Actual: '0' (U+0030).

The only deviation from the standard comes from the SGCaps feature that allows typing upper case accented characters
when <kbd>Caps Lock</kbd> is enabled. The standard chose to carry out the legacy behavior of the current AZERTY layout
by mandating that numbers be input instead of the corresponding upper case letter in that case.

For this reason, this repository also contains an alternate `expected_sgcaps.txt` file for a customized layout allowing direct input of upper case accented characters when using <kbd>Caps Lock</kbd> which is a popular option.
