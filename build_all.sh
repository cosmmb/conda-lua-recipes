# Issues:
# - lua-luaffi doesn't build on 5.3
# - lua-sundown isn't compatible with 5.1 (goto keywords used)
# - lua-crypto isn't compatible with 5.3 (there is a fork, see lua-crypto/build.sh)
# - lua-paths isn't compatible with 5.3
# - lua-audio isn't compatible with 5.1 and 5.2, not sure why, some luaL_register error
# - lua-hdf5 isn't compatible with vanilla Lua, even with luabitopt and luaffi. Not sure why.
# - lua-cunn isn't working with LuaJIT, I don't know why

conda clean --index-cache --packages --source-cache
conda build lua-5.1.5
conda build lua-5.2.4
conda build lua-5.3.2
conda build luajit-2.0.4
conda build fftw
conda build sox
conda build sdl2
conda build luarocks --lua="all"
conda build lua-luafilesystem --lua="all"
conda build lua-penlight --lua="all"
conda build lua-luaffifb --lua=5.1 --lua=5.2 # ffi doesn't work with 5.3. all packages that depend on it won't build for 5.3
conda build lua-argcheck --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-cjson --lua="all"
conda build lua-uuid --lua="all"
conda build lua-lbase64 --lua="all"
conda build lua-llthreads2 --lua="all"
conda build lua-lzmq --lua="all"
conda build lua-fftw3 --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-sdl2 --lua=2.0 # currently only supported by luajit
conda build lua-sundown --lua=5.2 --lua=2.0
conda build lua-class --lua=5.2 --lua=2.0
conda build lua-crypto --lua=5.2 --lua=5.1 --lua=2.0 # TODO: there is a fork that is compatible with 5.3
conda build lua-cwrap --lua="all"
conda build lua-dok --lua=5.2 --lua=2.0
conda build lua-paths --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-torch --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-sys --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-xlua --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-trepl --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-audio --lua=2.0
conda build lua-gnuplot --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-env --lua=5.2 --lua=2.0
conda build lua-graph --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-threads --lua=2.0
conda build lua-image --lua=5.2 --lua=2.0
conda build lua-cephes --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-randomkit --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-distributions --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-nn --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-nngraph --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-totem --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-luabitop --lua=5.1 --lua=5.2
conda build lua-hdf5 --lua=2.0
conda build lua-optim --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-pprint --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-signal --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-nnx --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-cutorch --lua=5.1 --lua=5.2 --lua=2.0
conda build lua-cunn --lua=5.1 --lua=5.2