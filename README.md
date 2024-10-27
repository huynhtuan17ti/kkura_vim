# kkura_vim
vim settings and commands

## Tmux
https://tmuxcheatsheet.com/

## LeaderF
https://github.com/Yggdroot/LeaderF

## Code operations
- `z-c` to close a fold.
- `z-o` to open a fold.
- `w` to move to next word.
- `W` to move to next word (seperated by space).
- `d-w` to delete next word.
- `<Leader + cc>` comment selected lines.
- `<Leader + cu>` uncomment selected lines.
- `<Shift + arrow>` for cursor selecting.
- `d` to delete selected code.
- `y` to copy selected code.
- `p` to paste selected code.

## Errors/Warnings/Infos
- `<F5>` to show function information (arguments, inputs, …)

- `<Leader + d>` at the beggining of line to show error details

```sh
:lnext # jump to next error
:lprevious # jump to previous error
```

## Navigation
`h/j/k/l/` basic operators in vim.

`<Shift + w> + h/j/k/l` to select buffer in following direction.

`<Shift + G>` and `gg` to move to the begin or end of the active buffer.

`<F2>` Use Leaderf to search in file level.

`<F3>` Use Leaderf to search in line level.

`<Ctrl + t>` To open a file in Leaderf in new tab.

`<Ctrl + ]>` To open a file in Leaderf in vertical split.

`<Ctrl> + right` to move to next tab.

`<Ctrl> + right` to move to previous tab.