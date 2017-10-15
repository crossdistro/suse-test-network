# Automation for testing SUSE network configuration stack

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
