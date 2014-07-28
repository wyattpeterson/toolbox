$packages = [
"screen",
"tmux",
"vim",
"git",
"tree",
"sensible-utils",
"curl",
"sshfs"
]

package { $packages: ensure => "installed" }
