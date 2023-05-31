local ffi = require("ffi")
ffi.cdef[[
    size_t add(size_t left, size_t right);
]]
local lib = ffi.load("./target/debug/luajit_rust_test.dll")
local output = lib.add(4, 5)
print("4 + 5 == " .. tostring(output) .. " (with literal signifier)")
print("4 + 5 == " .. tonumber(output) .. " (without literal signifier)")
print("See https://luajit.org/ext_ffi_api.html#literals for more on literal signifiers.")
