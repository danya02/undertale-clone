0x000000:
    global.invc = (- global.invc 1s)
    if !(> global.invc 0s) goto 0x000044
0x00002C:
    self.image_speed = 0.5d
    goto 0x00005C
0x000044:
    self.image_index = 0s
    self.image_speed = 0s
0x00005C:
    if !(== 1569.left 1s) goto 0x0000E8
0x000070:
    if !(== self.movement 1s) goto 0x0000E8
0x000084:
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x0000CC
0x0000A0:
    self.x = (- self.x (/ global.sp (double 2s)))
    goto 0x0000E8
0x0000CC:
    self.x = (- self.x global.sp)
0x0000E8:
    if !(== 1569.right 1s) goto 0x000174
0x0000FC:
    if !(== self.movement 1s) goto 0x000174
0x000110:
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x000158
0x00012C:
    self.x = (+ self.x (/ global.sp (double 2s)))
    goto 0x000174
0x000158:
    self.x = (+ self.x global.sp)
0x000174:
    if !(== 1569.up 1s) goto 0x000200
0x000188:
    if !(== self.movement 1s) goto 0x000200
0x00019C:
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x0001E4
0x0001B8:
    self.y = (- self.y (/ global.sp (double 2s)))
    goto 0x000200
0x0001E4:
    self.y = (- self.y global.sp)
0x000200:
    if !(== 1569.down 1s) goto 0x00028C
0x000214:
    if !(== self.movement 1s) goto 0x00028C
0x000228:
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x000270
0x000244:
    self.y = (+ self.y (/ global.sp (double 2s)))
    goto 0x00028C
0x000270:
    self.y = (+ self.y global.sp)
0x00028C:
    if !(< global.hp 1s) goto 0x0002B4
0x0002A0:
    call (script_execute[]:int32 (var 158s))
0x0002B4:
    exit
