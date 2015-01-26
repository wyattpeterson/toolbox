$packages = [
"screen",
"tmux",
"vim",
"git",
"tree",
"sensible-utils",
"curl",
"sshfs",
"chromium-browser",
"apt-transport-https",
"python-pip",
"build-essential",
"libpython-dev",
"libyaml-dev",
"python-yaml"
]

package { $packages: ensure => "installed" }
