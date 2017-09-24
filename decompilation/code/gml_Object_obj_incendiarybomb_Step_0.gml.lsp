0x000000:
    self.on = 0s
    push self.x
    if !(> -5s 0s:idealborder) goto 0x00004C
0x00002C:
    push self.x
    push (< -5s 1s:idealborder)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    self.on = 1s
0x000060:
    if !(>= self.y (- 761.y 20s)) goto 0x0000AC
0x000080:
    if !(< self.y 761.y) goto 0x0000AC
0x000098:
    push (== self.on 1s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    if !pop goto 0x000150
0x0000B4:
    self.bomb = (instance_create[]:int32 (var 323s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.bomb)) goto 0x000144
0x0000F4:
    push 1s
    stog.number* = (int32 self.bomb)
    push self.hspeed
    stog.hspeed* = (int32 self.bomb)
    push self.dmg
    stog.dmg* = (int32 self.bomb)
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    exit
