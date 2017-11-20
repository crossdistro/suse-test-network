# Automation for testing SUSE network configuration stack

## Modified packages and dependencies

  * systemd
      - Modified to also build resolved and better support networkd
  * yast2, yast2-network
      - Modified to attempt to switch between networkd and other stuff

## Adding new packages to the home subproject

    package=...

    osc linkpac openSUSE:Factory $package home:pavlix:Networking

## Troubleshooting

### systemd-resolved service refuses to start

When I attempt to start resolved after installing modified systemd
package, it fails with errors logged. Upgrading the whole distribution
seems to help.

    zypper dist-upgrade --allow-vendor-change

Just restarting the machine also seems to work.

    reboot

There must be some problem that gets fixed by either of those actions.

### Vagrant shared folder not mounted after reboot

https://github.com/hashicorp/vagrant/issues/7695

Workaround:

    vagrant reload
