0x000000:
    if !(== self.act 1s) goto 0x0000C0
0x000014:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0000C0
0x00002C:
    if !(== self.skip 0s) goto 0x0000C0
0x000040:
    self.skip = 1s
    self.fader = (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push 0.05d
    stog.tspeed* = (int32 self.fader)
    stog.alarm[1s] = 30s
    pushenv 782s 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    popenv 0x0000B0
0x0000C0:
    exit
