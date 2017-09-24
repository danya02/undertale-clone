0x000000:
    if !(== global.phasing 0s) goto 0x0002AC
0x000014:
    if !(== global.interact 0s) goto 0x0002AC
0x000028:
    if !(== global.facing 1s) goto 0x0000CC
0x00003C:
    if !(== (collision_point[]:int32 (var 1s) (var 0s) (var 820s) (- self.bbox_top 2s) (+ self.bbox_right 2s)) -4s) goto 0x0000BC
0x000088:
    self.x = (+ self.xprevious 3s)
    self.y = (- self.yprevious 3s)
    goto 0x0000CC
0x0000BC:
    self.x = self.xprevious
0x0000CC:
    if !(== global.facing 0s) goto 0x000170
0x0000E0:
    if !(== (collision_point[]:int32 (var 1s) (var 0s) (var 820s) (+ self.bbox_bottom 3s) (- self.bbox_left 3s)) -4s) goto 0x000160
0x00012C:
    self.x = (- self.xprevious 3s)
    self.y = (+ self.yprevious 3s)
    goto 0x000170
0x000160:
    self.y = self.yprevious
0x000170:
    if !(== global.facing 2s) goto 0x0001AC
0x000184:
    self.x = self.xprevious
    self.y = (- self.yprevious 3s)
0x0001AC:
    if !(== global.facing 3s) goto 0x0001E8
0x0001C0:
    self.y = self.yprevious
    self.x = (- self.xprevious 3s)
0x0001E8:
    if !(== 1569.down 1s) goto 0x000210
0x0001FC:
    push (== 1569.right 1s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000238
0x000218:
    self.x = self.xprevious
    self.y = self.yprevious
0x000238:
    if !(!= (% self.x 3s) 0s) goto 0x00026C
0x000254:
    self.x = (- self.x 1s)
0x00026C:
    if !(!= (% self.y 3s) 0s) goto 0x0002A0
0x000288:
    self.y = (- self.y 1s)
0x0002A0:
    self.moving = 0s
0x0002AC:
    if (== global.interact 5s) goto 0x000304
0x0002C0:
    if (== global.interact 1s) goto 0x000304
0x0002D4:
    if !(== global.interact 3s) goto 0x0002FC
0x0002E8:
    push (== global.phasing 0s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    goto 0x000308
0x000304:
    push 1s
0x000308:
    if !pop goto 0x00032C
0x00030C:
    self.x = self.xprevious
    self.y = self.yprevious
0x00032C:
    exit
