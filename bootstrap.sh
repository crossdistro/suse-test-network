REPOS="
    http://download.opensuse.org/repositories/home:/pavlix:/Networking/openSUSE_Tumbleweed/home:pavlix:Networking.repo
"
zypper="zypper --non-interactive"

# Install repositories
for repo in $REPOS; do
    zypper ar -p 50 $repo || true
done

# Refresh repositories
$zypper --gpg-auto-import-keys refresh 

# Install systemd with vendor change
$zypper install --from home_pavlix_Networking systemd systemd-sysvinit udev
