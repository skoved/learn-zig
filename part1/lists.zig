const std = @import("std");

pub fn main() void {
    const a = [5]i32{1, 2, 3, 4, 5};

    // we already saw this .{...} syntax with structs
    // it works with arrays too
    const b: [5]i32 = .{1, 2, 3, 4, 5};

    // use _ to let the compiler infer the length
    const c = [_]i32{1, 2, 3, 4, 5};

    // this is how to create a slice in zig
    // but this technically isn't a slice
    // since 1 and 4 are values know at compile time
    const d: []const i32 = a[1..4];

    // because `end` is declared var, it isn't compile-time known
    var end: usize = 3;

    // but because it's a var we need to mutate it, else the compiler
    // will insist we make it `const`
    end += 1;

    const e = a[1..end];

    std.debug.print("{any}\n", .{@TypeOf(a)});
    std.debug.print("{any}\n", .{@TypeOf(b)});
    std.debug.print("{any}\n", .{@TypeOf(c)});
    std.debug.print("{any}\n", .{@TypeOf(d)});
    std.debug.print("{any}\n", .{@TypeOf(e)});
}
