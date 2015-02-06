$packages = [
"cgroup-lite",
"apparmor",
"apparmor-utils",
"lxc-docker",
"python-pip"
]

package { $packages: ensure => "installed" }

$pip_packages = [
    "boto",
    "awscli",
]

package { $pip_packages:
    ensure => "latest",
    provider => pip,
}


