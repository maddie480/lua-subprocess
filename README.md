# lua-subprocess

[Please use the original repository](https://github.com/xlq/lua-subprocess), unless:
- lua-subprocess simply doesn't work at all for you on Windows.
- You're trying to build lua-subprocess for Windows via Visual Studio.
- You're trying to build lua-subprocess for any other platform via LuaRocks.
- You absolutely hate LuaRocks on Windows.
- You absolutely love LuaRocks on every other platform.

Also, [please read the original `subprocess.txt` first.](/subprocess.txt)

This repository contains some minor fixes to get lua-subprocess to work properly on Windows, and a hackily glued `.rockspec`.

For clarity, I am not intending to maintain this fork. I'm simply sharing my "fixes" in case they are helpful for anyone else dealing with the inability of Lua's `io.popen` to communicate with a subprocess properly, but also with the inability of the original code to even start a process on Windows.  
If anyone is willing to maintain lua-subprocess (maybe even as a proper rock), feel free to fork this (or the original) repository and to include the fixes from this repository. The MIT license of the original repository (top of `subprocess.c`) still applies to this fork.

### LuaRocks:

The following command should take care of everything for you, assuming it works in the first place:

`luarocks install https://raw.githubusercontent.com/0x0ade/lua-subprocess/master/subprocess-scm-1.rockspec`

### Windows / Visual Studio:

The Visual Studio project assumes that you've installed (or at least got a symlink to your installation of) LuaRocks to `luarocks` in this folder.
If this is not the case (and it probably isn't), feel free to change the build properties.

The resulting binary is named `subprocess.dll` to match the existing Linux binary name in the original `Makefile`, and more importantly, to match the existing `luaopen_subprocess` function name.


