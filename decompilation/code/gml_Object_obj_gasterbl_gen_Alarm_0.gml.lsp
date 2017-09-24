0x000000:
    if !(== self.type 0s) goto 0x0004AC
0x000014:
    stog.alarm[0s] = 13s
    stog.gb[(int32 self.num)] = (instance_create[]:int32 (var 498s) (+ 743.y 8s) (+ 743.x 8s))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.num):gb)) goto 0x0004AC
0x000098:
    self.dd = (random[]:int32 (var 360s))
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
    push -1s
    if !(> (int32 (int32 self.num):gb):idealy 440s) goto 0x0001D0
0x0001A8:
    push 440s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x0001D0:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealy 40s) goto 0x000228
0x000200:
    push 40s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x000228:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealx 50s) goto 0x000280
0x000258:
    push 50s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x000280:
    push -1s
    if !(> (int32 (int32 self.num):gb):idealx 590s) goto 0x0002D8
0x0002B0:
    push 590s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x0002D8:
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 400s)))
    push -1s
    stog.x* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 300s)))
    push -1s
    stog.y* = (int32 (int32 self.num):gb)
    push -1s
    pushenv (int32 (int32 self.num):gb) 0x000408
0x0003C0:
    self.idealrot = (+ (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.idealy self.idealx) 90s)
0x000408:
    popenv 0x0003C0
0x00040C:
    push 1s
    push -1s
    stog.image_xscale* = (int32 (int32 self.num):gb)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.num):gb)
    push 1s
    push -1s
    stog.terminal* = (int32 (int32 self.num):gb)
    push 9s
    push -1s
    stog.pause* = (int32 (int32 self.num):gb)
0x0004AC:
    if !(== self.type 1s) goto 0x000958
0x0004C0:
    stog.alarm[0s] = 16s
    stog.gb[(int32 self.num)] = (instance_create[]:int32 (var 498s) (+ 743.y 8s) (+ 743.x 8s))
    self.dd = (random[]:int32 (var 360s))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.num):gb)) goto 0x000958
0x00055C:
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
    push -1s
    if !(> (int32 (int32 self.num):gb):idealy 440s) goto 0x00067C
0x000654:
    push 440s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x00067C:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealy 40s) goto 0x0006D4
0x0006AC:
    push 40s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x0006D4:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealx 50s) goto 0x00072C
0x000704:
    push 50s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x00072C:
    push -1s
    if !(> (int32 (int32 self.num):gb):idealx 590s) goto 0x000784
0x00075C:
    push 590s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x000784:
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 400s)))
    push -1s
    stog.x* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 300s)))
    push -1s
    stog.y* = (int32 (int32 self.num):gb)
    push -1s
    pushenv (int32 (int32 self.num):gb) 0x0008B4
0x00086C:
    self.idealrot = (+ (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.idealy self.idealx) 90s)
0x0008B4:
    popenv 0x00086C
0x0008B8:
    push 1s
    push -1s
    stog.image_xscale* = (int32 (int32 self.num):gb)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.num):gb)
    push 1s
    push -1s
    stog.terminal* = (int32 (int32 self.num):gb)
    push 14s
    push -1s
    stog.pause* = (int32 (int32 self.num):gb)
0x000958:
    if !(== self.type 2s) goto 0x000E04
0x00096C:
    stog.alarm[0s] = 20s
    stog.gb[(int32 self.num)] = (instance_create[]:int32 (var 498s) (+ 743.y 8s) (+ 743.x 8s))
    self.dd = (random[]:int32 (var 360s))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.num):gb)) goto 0x000E04
0x000A08:
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 200s)))
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
    push -1s
    if !(> (int32 (int32 self.num):gb):idealy 440s) goto 0x000B28
0x000B00:
    push 440s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x000B28:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealy 40s) goto 0x000B80
0x000B58:
    push 40s
    push -1s
    stog.idealy* = (int32 (int32 self.num):gb)
0x000B80:
    push -1s
    if !(< (int32 (int32 self.num):gb):idealx 50s) goto 0x000BD8
0x000BB0:
    push 50s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x000BD8:
    push -1s
    if !(> (int32 (int32 self.num):gb):idealx 590s) goto 0x000C30
0x000C08:
    push 590s
    push -1s
    stog.idealx* = (int32 (int32 self.num):gb)
0x000C30:
    push -1s
    push (+ (int32 (int32 self.num):gb):x (lengthdir_x[]:int32 self.dd (var 400s)))
    push -1s
    stog.x* = (int32 (int32 self.num):gb)
    push -1s
    push (+ (int32 (int32 self.num):gb):y (lengthdir_y[]:int32 self.dd (var 300s)))
    push -1s
    stog.y* = (int32 (int32 self.num):gb)
    push -1s
    pushenv (int32 (int32 self.num):gb) 0x000D60
0x000D18:
    self.idealrot = (+ (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.idealy self.idealx) 90s)
0x000D60:
    popenv 0x000D18
0x000D64:
    push 2s
    push -1s
    stog.image_xscale* = (int32 (int32 self.num):gb)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.num):gb)
    push 1s
    push -1s
    stog.terminal* = (int32 (int32 self.num):gb)
    push 20s
    push -1s
    stog.pause* = (int32 (int32 self.num):gb)
0x000E04:
    self.num = (+ self.num 1s)
0x000E1C:
    exit
