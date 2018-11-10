# Switch interfaces and proxy server easily

```shell
> ./switch_interfaces --help
A small script for helping me switch interfaces + local proxies.

Usage: switch_interfaces (primary | secondary)
       switch_interfaces --status
       switch_interfaces --help

With:
    (primary, secondary) are configured in /home/mvalais/.switch_interfaces.conf,
    which should look like something like (in brackets = optionnal service
    name that should be launched when this interface goes up):

    primary=eth1[,cntlm]
    secondary=enp0s3[,squid]

Environement variables:
  COLOR = (auto | always) [value: auto]
    In auto mode, colors will be removed when launched from a tty instead of
    an interactive shell.
  TIMEOUT = 1s, 2s, 1m... [value: ]
    During connexion or deconnexion using nmcli, the tool may get stuck/stall.

Example of /home/mvalais/.switch_interfaces.conf:

# Set the primary and secondary interfaces you want to switch back and forth.
# After the comma ',<service>' means that a service (here, cntlm and squid) can
# be associated so that when the interface is up, the service is launched. You
# can skip this though (and remove the comma). Uncomment to enable

# Example 1:
# primary=eth1,cntlm
# secondary=enp0s3,squid

# Example 2:
# primary=eth1
# secondary=enp0s3

Maël Valais, 2018
```

Written using [shellcheck] and [shfmt] as well as the [shellcheck-vscode]
and [shell-format-vscode]\ (using vscode).

[shellcheck]: https://www.shellcheck.net
[shfmt]: https://github.com/mvdan/sh
[shell-format-vscode]: https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format
[shellcheck-vscode]: https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck

## Install

    git clone <this project>
    cd <this project>
    make install

Maël Valais, 2018