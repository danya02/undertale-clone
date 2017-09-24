0x000000:
    if !(== global.phasing 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0002B4
0x000030:
    if !(== global.facing 3s) goto 0x0000D4
0x000044:
    if !(== (collision_point[]:int32 (var 1s) (var 0s) (var 820s) (- self.bbox_top 2s) (- self.bbox_left 2s)) -4s) goto 0x0000C4
0x000090:
    self.x = (- self.xprevious 3s)
    self.y = (- self.yprevious 3s)
    goto 0x0000D4
0x0000C4:
    self.x = self.xprevious
0x0000D4:
    if !(== global.facing 0s) goto 0x000178
0x0000E8:
    if !(== (collision_point[]:int32 (var 1s) (var 0s) (var 820s) (+ self.bbox_bottom 3s) (+ self.bbox_right 3s)) -4s) goto 0x000168
0x000134:
    self.x = (+ self.xprevious 3s)
    self.y = (+ self.yprevious 3s)
    goto 0x000178
0x000168:
    self.y = self.yprevious
0x000178:
    if !(== global.facing 2s) goto 0x0001B4
0x00018C:
    self.x = self.xprevious
    self.y = (- self.yprevious 3s)
0x0001B4:
    if !(== global.facing 1s) goto 0x0001F0
0x0001C8:
    self.y = self.yprevious
    self.x = (+ self.xprevious 3s)
0x0001F0:
    if !(== 1569.down 1s) goto 0x000218
0x000204:
    push (== 1569.left 1s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000240
0x000220:
    self.x = self.xprevious
    self.y = self.yprevious
0x000240:
    self.moving = 0s
    if !(!= (% self.x 3s) 0s) goto 0x000280
0x000268:
    self.x = (+ self.x 1s)
0x000280:
    if !(!= (% self.y 3s) 0s) goto 0x0002B4
0x00029C:
    self.y = (- self.y 1s)
0x0002B4:
    if (== global.interact 5s) goto 0x00030C
0x0002C8:
    if (== global.interact 1s) goto 0x00030C
0x0002DC:
    if !(== global.interact 3s) goto 0x000304
0x0002F0:
    push (== global.phasing 0s)
    goto 0x000308
0x000304:
    push 0s
0x000308:
    goto 0x000310
0x00030C:
    push 1s
0x000310:
    if !pop goto 0x000334
0x000314:
    self.x = self.xprevious
    self.y = self.yprevious
0x000334:
    exit
