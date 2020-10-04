# TLDR Contribution Helper

Finds commands in your `$PATH` to contribute TLDR pages to the [TLDR repository](https://github.com/tldr-pages/tldr/pulls).

This shell script lists all the binaries in your `$PATH` using `compgen -c`, and generates the `contribution-list.log` with the possible list of commands that haven't been contributed to [TLDR](https://github.com/tldr-pages/tldr/pulls) yet..
