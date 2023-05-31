# Luajit-Rust test example

This is an example of a minimal Rust library that compiles a DLL on Windows that luajit can interface with.

# Setup

In [MinGW64](https://www.msys2.org/), ensure `pactoys` is installed:

```
pacman -S pactoys
```

Then, in a MinGW64 shell, install luajit:

```
pacboy -S luajit
```

Build with cargo:

```
cargo build
```

Then, you should be able to run the test program:

```
luajit luajit_rust_test.lua
```

Example run:

```
$ luajit luajit_rust_test.lua
4 + 5 == 9ULL (with literal signifier)
4 + 5 == 9 (without literal signifier)
See https://luajit.org/ext_ffi_api.html#literals for more on literal signifiers.
```

# Copyright

The code in the files `luajit_rust_test.lua` and `src/lib.rs` and the
configuration within the file `Cargo.toml` all do not possess a minimal degree
of creativity, so is uncopyrightable from the author's perspective, and
therefore is in the public domain.

The README.md file is copyrightable and is considered all rights reserved.
