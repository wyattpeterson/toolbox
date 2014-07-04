$packages = [
"screen",
"tmux",
"vim",
"git",
"tree",
"sensible-utils"
]

package { $packages: ensure => "installed" }
