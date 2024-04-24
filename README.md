# AP Style LaTeX Template

This is a $\LaTeX$ template that aims to superficially emulate the layout of an AP-exam style test - both the Free
Response, and Multiple Choice portions. It is designed to compile with TeXLive 2023, but should also compile
on `tectonic` and other similar distributions. As it is based on TeXLive, it will, of course, work on Overleaf.

## Using the template

> [!IMPORTANT]
> Make sure you read the [editing instructions section](#editing-instructions) below to get a brief description of
> how this document's file structure is set up. It's designed closer to the structure of source code,
> not the typical structure of a $\LaTeX$ document.

### On Overleaf (easiest)[^1]

You can view a read-only copy of this repository on [Overleaf here](https://www.overleaf.com/read/kqyyygvfntng#f382d8).
Simply make a copy of it to use and edit.

Or, if you prefer (or if the Overleaf link is not available), simply download this repository as a `zip` file and
upload it to Overleaf to use it.

> [!TIP]
> If Overleaf fails to compile, click the menu button in the top right, and ensure that you are:
>
> - Using the `pdfLaTeX` compiler
> - Using the TeXLive 2023 distribution
> - Set the 'Main document' to `root.tex` (by default, Overleaf may try to compile from `prelude.tex` instead)

### Compile locally

You may also compile this template with a local TeX distribution. This template was originally created on the
TeXLive 2023 distribution, but will probably also work with similar distributions like `tectonic`. However, I recommend
you use `TeXLive` and `latexmk` to compile it to ensure that no strange behavior occurs.
A [latexmkrc](/latexmkrc) file is included to compile with the correct settings automatically when using `latexmk`. Simply
clone and enter the root directory of this repository; then run `latexmk` to produce an output `root.pdf` in `/build`.

## Editing instructions

This template is designed to be easy to edit and its various sections are separated into various files.
The headers/footers, free response section, multiple choice section, and the last page are all located in
appropriately named files in the `/src` directory. You can simply edit the questions in `frq.tex` or `mcq.tex`
and make some minor adjustments in `root.tex`, and not worry about the rest of the formatting. Of course, if you would like,
most of the formatting is documented in their respective files.

In particular, the following information may be helpful:

- Packages are imported and page formatting is set up in the `lib/prelude.tex` file, separate from the rest of the content-based files.
- The `splitcycle.tex` file shows how to display a code block. You can remove it if you don't need this functionality.
- The headers and footers are defined in `header-and-footer.tex`. This file defines the header and footer for the
  first page, and the rest of the pages EXCEPT the last (the first and last pages have separate headers/footers from the rest).
  - The header and footer for the LAST page is defined in `end.tex`, separately from the `header-and-footer.tex` file.
- The 'time limits' set at the beginning of the FRQ section are defined in the `root.tex` file, just before the `input{src/frq.tex}` line, NOT the `frq.tex` file itself.
- In the `mcq.tex` file, a custom `\columnbreak` macro is provided to break into the next column. This is useful if
  you don't want a question to span across multiple columns.

## Licensing and Copyright

This template's source code is licensed under the GNU General Public License. You are hereby permitted to use and redistribute this template for any purpose[^2],
with or without modification, as long as you retain a copy of this license and the source code for viewing on request.

[^1]:
    Though Overleaf is convenient, I highly recommend that you avoid using the hosted version at [overleaf.com](https://www.overleaf.com).
    It's the very definition of [Service as a Software Substitute (SaaSS)](https://www.gnu.org/philosophy/who-does-that-server-really-serve.en.html), and there's no reason why you shouldn't be using local software if it's available. Overleaf itself is [free software](https://github.com/overleaf/overleaf), and you should try to self host it if you are able.

[^2]: As with all of my software, this comes with one caveat: Use it for good, not evil.
