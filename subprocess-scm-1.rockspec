package = "subprocess"
version = "scm-1"
source = {
   url = "git://github.com/0x0ade/lua-subprocess.git"
}
description = {
   summary = "A Lua module written in C that allows you to create child processes and communicate with them.",
   detailed = "A Lua module written in C that allows you to create child processes and communicate with them. The API is based on the Python subprocess module, but is not yet as complete.",
   homepage = "https://github.com/xlq/lua-subprocess",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, <= 5.3"
}
build = {
   platforms = {
      unix = {
         type = "builtin",
         modules = {
            subprocess = {
               sources = { "subprocess.c", "liolib-copy.c" },
               defines = { "OS_POSIX" }
            }
         }
      },
      windows = {
         type = "builtin",
         modules = {
            subprocess = {
               sources = { "subprocess.c", "liolib-copy.c" },
               defines = { "OS_WINDOWS", "LUA_BUILD_AS_DLL", "_CRT_SECURE_NO_WARNINGS" }
            }
         }
      }
   }
}
