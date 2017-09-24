0x000000:
    if !(== self.sprite_index 219s) goto 0x000018
0x000014:
    exit
0x000018:
    if !(== self.specialx 1s) goto 0x000474
0x00002C:
    stog.alarm[2s] = 2s
    if !(== global.mnfight 2s) goto 0x000088
0x000054:
    stog.alarm[2s] = (+ (round[]:int32 (random[]:int32 (var 10s))) 8s)
    goto 0x00011C
0x000088:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0000C0
0x0000A0:
    pushenv (int32 self.blcon) 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    popenv 0x0000B0
0x0000C0:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x0000F8
0x0000D8:
    pushenv (int32 self.blconwd) 0x0000F4
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    popenv 0x0000E8
0x0000F8:
    exit
    self.specialx = 0s
    stog.alarm[2s] = -1s
0x00011C:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000174
0x000154:
    pushenv (int32 self.blcon) 0x000170
0x000164:
    call (instance_destroy[]:int32 )
0x000170:
    popenv 0x000164
0x000174:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x0001AC
0x00018C:
    pushenv (int32 self.blconwd) 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    popenv 0x00019C
0x0001AC:
    if !(== self.gg 0s) goto 0x000228
0x0001C0:
    self.xx = (- (- self.x (random[]:int32 (/ self.sprite_width (double 2s)))) 40s)
    self.yy = (+ self.y (random[]:int32 (/ self.sprite_height (double 3s))))
0x000228:
    if !(== self.gg 1s) goto 0x0002A4
0x00023C:
    self.xx = (+ (+ self.x (random[]:int32 (/ self.sprite_width (double 3s)))) 100s)
    self.yy = (+ self.y (random[]:int32 (/ self.sprite_height (double 3s))))
0x0002A4:
    if !(== self.gg 2s) goto 0x00030C
0x0002B8:
    self.xx = (- (+ self.x (random[]:int32 self.sprite_width)) (/ self.sprite_width (double 2s)))
    self.yy = (- self.y 18s)
0x00030C:
    self.blcon = (instance_create[]:int32 (var 186s) self.yy self.xx)
    push 14s
    stog.depth* = (int32 self.blcon)
    push 22s
    stog.sprite_index* = (int32 self.blcon)
    if !(== self.gg 0s) goto 0x000390
0x000378:
    stog.msg[0s] = "PET?"
0x000390:
    if !(== self.gg 1s) goto 0x0003BC
0x0003A4:
    stog.msg[0s] = "PAT?"
0x0003BC:
    if !(== self.gg 2s) goto 0x0003E8
0x0003D0:
    stog.msg[0s] = "POT?"
0x0003E8:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    push 13s
    stog.depth* = (int32 self.blconwd)
0x000474:
    exit
