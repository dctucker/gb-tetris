# gb-tetris

Game Boy Tetris disassembly

## Introduction

Here we disassemble various ROMs of the original Tetris for the original Game Boy (DMG).

Most related projects focus on the Japanese cartridge. This project synthesizes previous efforts in an attempt to highlight the differences between the Japanese and the World versions of the cartridge, possibly leading to a higher-level implementation of these instructions.

## Approach

Starting from the two main disassemblies:

- [davFaithid's] provides a good starting point for use with [rgbds], showing that a disassembled version can be compiled back into a working `.gb`.
- [osnr's] uses [Jeff Frohwein's] `TETRIS.TAB` to regenerate the disassembly using [GBDis] V1.3.

A [spreadsheet] is used to transform `TETRIS.TAB` into a format that can be used to annotate disassembly generated by [rgbds]. [Tetris.xl.tab] is an intermediate step used for pasting into the spreadsheet.

There's also a [NO$GMB] for reference, and some output from [bdm].

## Results

Copying the appropriate [symbols file](/tetris-rev1.sym) and running `mgbdis --overwrite tetris.gb` produces new files in [disassembly](/disassembly).

[mgbdis]: https://github.com/mattcurrie/mgbdis
[osnr's]: https://github.com/osnr/tetris
[davFaithid's]: https://github.com/davFaithid/tetris-disassembly/

[rgbds]: https://rgbds.gbdev.io/
[bdm]: https://mattcurrie.com/bdm-demo/

[rgbds parser]: https://github.com/gbdev/rgbds/issues/864
[GBDis]: http://www.devrs.com/gb/files/software.html
[Jeff Frohwein's]: http://www.devrs.com/gb/files/doxs.html
[NO$GMB]: https://problemkaputt.de/gmb.htm
[spreadsheet]: /TetrisDisasm.xlsx
[Tetris.xl.tab]: /Tetris.xl.tab
