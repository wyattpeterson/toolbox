$packages = [
"screen",
"tmux",
"vim",
"git",
"tree"
]

package { $packages: ensure => "installed" }
