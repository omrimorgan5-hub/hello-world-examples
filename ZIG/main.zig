const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    const stdout_file = std.Io.File.stdout();
    const stdin_file = std.Io.File.stdin();

    // Writer setup
    var write_buf: [1024]u8 = undefined;
    var writer = stdout_file.writer(io, &write_buf);
    
    try writer.interface.print("Enter your name: ", .{});
    try writer.flush(); 

    // Reader setup
    var read_buf: [1024]u8 = undefined;
    var reader = stdin_file.reader(io, &read_buf);

    if (try reader.interface.takeDelimiter('\n')) |raw_name| {
        // Trim \r (Windows) and whitespace
        const name = std.mem.trim(u8, raw_name, " \r\t");
        
        // Print using the writer's interface
        try writer.interface.print("Hello, {s}!\n", .{name});
        try writer.flush();
    }
}
