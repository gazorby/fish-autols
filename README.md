# fish-autols

> Automatically run `eza` or `ls` when changing directories

A fish plugin to list files after `cd` automatically.

If you have [eza](https://github.com/eza-community/eza) ([exa](https://the.exa.website/) fork) installed (recommended), it will be used instead of `ls`. With eza, if a git repository is detected, eza's `--git` option will be used to show each file's git status

## 🚀 Install

```
fisher install gazorby/fish-autols
```

## 🛠 Configuration

Configuration is done through environment variables.

To avoid spamming your `config.fish`, you can set environment variables using `set -Ux` once, to make them persistent across restarts and share them across fish's instances.

⚠️ : Don't use quotes in variables, set them as a list: `set -Ux AUTO_LS_EXA_OPTIONS --long --all`

### Default options

`AUTO_LS_EXA_OPTIONS`

default exa options used when not in git repository

default : `--long --all`

`AUTO_LS_EXA_GIT_OPTIONS`

default exa options used when inside a git repository

default : `--long --all --group --header --git`

## 👍 Thanks

**fish-autols** © 2017+, Rico Sta. Cruz. Released under the [MIT] License.<br>
Authored and maintained by Rico Sta. Cruz with help from contributors ([list][contributors]).

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[![](https://img.shields.io/github/followers/rstacruz.svg?style=social&label=@rstacruz)](https://github.com/rstacruz) &nbsp;
[![](https://img.shields.io/twitter/follow/rstacruz.svg?style=social&label=@rstacruz)](https://twitter.com/rstacruz)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/rstacruz/fish-autols/contributors
