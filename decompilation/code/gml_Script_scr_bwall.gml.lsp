0x000000:
    self.i = 0s
    if !(< self.i self.argument3) goto 0x00018C
0x000024:
    self.bone = (instance_create[]:int32 (var 501s) (var 900s) (var 900s))
    push -5s
    push (- 3s:idealborder self.argument0)
    stog.y* = (int32 self.bone)
    push self.argument1
    stog.hspeed* = (int32 self.bone)
    push (- 320s (* self.argument2 self.argument1))
    stog.x* = (int32 self.bone)
    if !(< (int32 self.bone):x 320s) goto 0x00011C
0x0000E8:
    stog.x* = (- (int32 self.bone):x (* self.i 15s))
0x00011C:
    push (int32 self.bone)
    if !(> (int32 self.bone):x 320s) goto 0x000170
0x00013C:
    stog.x* = (+ (int32 self.bone):x (* self.i 15s))
0x000170:
    push (int32 self.bone)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00018C:
    exit
