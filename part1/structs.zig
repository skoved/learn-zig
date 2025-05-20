const std = @import("std");

const useri = @import("models/user.zig");
const User = useri.User;
const MAX_POWER = useri.MAX_POWER;

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    const user = User{
        .name = "Goku",
        .power = 9001,
    };

    // call diagnose on user
    user.diagnose();

    // The above is syntactical sugar for:
    User.diagnose(user);

    std.debug.print("{s}'s power is {d}\n", .{user.name, user.power});
}
