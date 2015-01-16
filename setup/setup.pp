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
"apt-transport-https"
]

package { $packages: ensure => "installed" }
