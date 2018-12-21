
set osabi GNU/Linux
set debug aarch64
set history save on
set history filename C:/Projects/IssueReports/SimpleGlApp/.out/debug_lumin_clang-3.8_aarch64/SimpleGlApp.gdb_history

# Set this so that gdb can find the shared library files on host. Those files
# usually contain symbol data (debug and/or symbol table).
set solib-search-path C:/Projects/IssueReports/SimpleGlApp/.out/debug_lumin_clang-3.8_aarch64

# Sysroot provides a mapping for where to look for a loaded library on the host. 
# If the program loads /some/dir/libfoo.so and sysroot is c:\mysrc, then gdb 
# will look for the file at c:\mysrc\some\dir\libfoo.so. When sysroot is not
# set, gdb transfers the file up through gdbserver. This is wasteful if you have
# the library on the host already.
set sysroot C:/Projects/IssueReports/SimpleGlApp/.out/debug_lumin_clang-3.8_aarch64

# Set this so that gdb can find the source files if the paths in the debug info
# aren't absolute or don't accurately reflect where the files are on host
directory C:/Projects/IssueReports/SimpleGlApp/.out/debug_lumin_clang-3.8_aarch64

python

# Python 2.7 compatibility
from __future__ import print_function
# Set up the pretty printer
import sys
sys.path.append("C:/Users/jeff/MagicLeap/mlsdk/v0.19.0/tools/toolchains/share/pretty-printers/libc++/v1")
from printers import register_libcxx_printers
register_libcxx_printers(None)

# Try to connect for a few seconds, sometimes the device gdbserver takes
# a little bit to come up.
def target_remote_with_retry(target, timeout_seconds):
    import time
    end_time = time.time() + timeout_seconds
    while True:
        try:
            gdb.execute('target remote ' + target)
            return True
        except gdb.error as e:
            time_left = end_time - time.time()
            if time_left < 0 or time_left > timeout_seconds:
                print("Error: unable to connect to device.", file=sys.stderr)
                print(e, file=sys.stderr)
                return False
            time.sleep(min(0.25, time_left))

target_remote_with_retry(':7777', 10)

end
