0x000000:
    if !(> self.hspeed 0s) goto 0x000028
0x000014:
    push (< self.image_xscale 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000048
0x000030:
    self.image_xscale = (* self.image_xscale -1s)
0x000048:
    if !(< self.hspeed 0s) goto 0x000070
0x00005C:
    push (> self.image_xscale 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000090
0x000078:
    self.image_xscale = (* self.image_xscale -1s)
0x000090:
    if !(bool (instance_exists[]:int32 self.parent)) goto 0x00033C
0x0000A8:
    self.finish = 0s
    if !(== (int32 self.parent):sider 0s) goto 0x000104
0x0000D4:
    if !(< self.x (int32 self.parent):x) goto 0x000104
0x0000F8:
    self.finish = 1s
0x000104:
    if !(== (int32 self.parent):sider 1s) goto 0x000154
0x000124:
    if !(> self.x (int32 self.parent):x) goto 0x000154
0x000148:
    self.finish = 1s
0x000154:
    self.sd = (int32 self.parent):sider
    if !(== self.sd 0s) goto 0x0001D0
0x000184:
    push (< (distance_to_point[]:int32 (+ (int32 self.parent):y 110s) (+ (int32 self.parent):x 70s)) 80s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x000218
0x0001D8:
    self.image_xscale = (* self.image_xscale 0.75d)
    self.image_yscale = (* self.image_yscale 0.75d)
0x000218:
    if !(== self.sd 1s) goto 0x000278
0x00022C:
    push (< (distance_to_point[]:int32 (+ (int32 self.parent):y 110s) (- (int32 self.parent):x 70s)) 80s)
    goto 0x00027C
0x000278:
    push 0s
0x00027C:
    if !pop goto 0x0002C0
0x000280:
    self.image_xscale = (* self.image_xscale 0.75d)
    self.image_yscale = (* self.image_yscale 0.75d)
0x0002C0:
    if !(<= (abs[]:int32 self.image_xscale) 0.1d) goto 0x0002F0
0x0002E4:
    self.finish = 1s
0x0002F0:
    if !(== self.finish 1s) goto 0x000338
0x000304:
    pushenv (int32 self.parent) 0x000328
0x000314:
    call (event_user[]:int32 (var 3s))
0x000328:
    popenv 0x000314
0x00032C:
    call (instance_destroy[]:int32 )
0x000338:
    goto 0x000348
0x00033C:
    call (instance_destroy[]:int32 )
0x000348:
    exit
