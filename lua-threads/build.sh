# Make sure luarocks can see all dependencies
$PREFIX/bin/luarocks-admin make_manifest --local-tree

# Install torch
$PREFIX/bin/luarocks install rocks/threads-scm-1.rockspec --local-tree
