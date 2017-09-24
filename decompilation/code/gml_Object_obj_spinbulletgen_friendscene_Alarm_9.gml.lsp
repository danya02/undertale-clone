0x000000:
    if (== self.spec 3s) goto 0x000028
0x000014:
    push (== self.spec 5s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x0000B8
0x000030:
    self.bone = (instance_create[]:int32 (var 1664s) (- self.y 50s) (+ self.x 50s))
    push 2276s
    stog.sprite_index* = (int32 self.bone)
    if !(== self.spec 5s) goto 0x0000AC
0x000094:
    push 2278s
    stog.sprite_index* = (int32 self.bone)
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    if (== self.spec 4s) goto 0x0000E0
0x0000CC:
    push (== self.spec 6s)
    goto 0x0000E4
0x0000E0:
    push 1s
0x0000E4:
    if !pop goto 0x000170
0x0000E8:
    self.spear = (instance_create[]:int32 (var 1664s) (- self.y 50s) (- self.x 70s))
    push 2277s
    stog.sprite_index* = (int32 self.spear)
    if !(== self.spec 6s) goto 0x000164
0x00014C:
    push 2279s
    stog.sprite_index* = (int32 self.spear)
0x000164:
    call (instance_destroy[]:int32 )
0x000170:
    exit
