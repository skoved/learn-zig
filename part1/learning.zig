const std = @import("std");

const useri = @import("models/user.zig");
const User = useri.User;
const MAX_POWER = useri.MAX_POWER;

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    const user = User{
        .power = 9001,
        .name = "Goku",
    };

    std.debug.print("{s}'s power is {d}\n", .{user.name, user.power});
}
