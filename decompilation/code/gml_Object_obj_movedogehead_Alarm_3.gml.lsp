0x000000:
    if !(== global.mnfight 2s) goto 0x000048
0x000014:
    stog.alarm[1s] = (+ (round[]:int32 (random[]:int32 (var 20s))) 10s)
    goto 0x0000BC
0x000048:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000080
0x000060:
    pushenv (int32 self.blcon) 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x0000B8
0x000098:
    pushenv (int32 self.blconwd) 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    popenv 0x0000A8
0x0000B8:
    exit
0x0000BC:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000114
0x0000F4:
    pushenv (int32 self.blcon) 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x00014C
0x00012C:
    pushenv (int32 self.blconwd) 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    popenv 0x00013C
0x00014C:
    if !(== self.gg 0s) goto 0x0001C8
0x000160:
    self.xx = (- (- self.x (random[]:int32 (/ self.sprite_width (double 2s)))) 40s)
    self.yy = (+ self.y (random[]:int32 (/ self.sprite_height (double 3s))))
0x0001C8:
    if !(== self.gg 1s) goto 0x000244
0x0001DC:
    self.xx = (+ (+ self.x (random[]:int32 (/ self.sprite_width (double 3s)))) 100s)
    self.yy = (+ self.y (random[]:int32 (/ self.sprite_height (double 3s))))
0x000244:
    if !(== self.gg 2s) goto 0x0002AC
0x000258:
    self.xx = (- (+ self.x (random[]:int32 self.sprite_width)) (/ self.sprite_width (double 2s)))
    self.yy = (- self.y 18s)
0x0002AC:
    self.blcon = (instance_create[]:int32 (var 186s) self.yy self.xx)
    push 14s
    stog.depth* = (int32 self.blcon)
    push 22s
    stog.sprite_index* = (int32 self.blcon)
    stog.msg[0s] = "FETCH?"
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    push 13s
    stog.depth* = (int32 self.blconwd)
0x0003A8:
    exit
