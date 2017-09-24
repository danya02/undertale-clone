0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x00002C
0x000018:
    push (== self.init_band 0s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0000F4
0x000034:
    if !(== self.room 147s) goto 0x00005C
0x000048:
    push (> 1570.x 800s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000070
0x000064:
    self.x = 800s
0x000070:
    if !(== self.room 145s) goto 0x000098
0x000084:
    push (> 1570.y 280s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000AC
0x0000A0:
    self.y = 160s
0x0000AC:
    if !(== self.room 145s) goto 0x0000D4
0x0000C0:
    push (> 1570.x 560s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    self.x = 500s
0x0000E8:
    self.init_band = 1s
0x0000F4:
    push -1s
    if !(> 0s:view_xview (+ self.x 60s)) goto 0x000134
0x00011C:
    self.x = (+ self.x 20s)
0x000134:
    push -1s
    if !(< 0s:view_xview (+ self.x 20s)) goto 0x000174
0x00015C:
    self.x = (- self.x 20s)
0x000174:
    push -1s
    if !(> 0s:view_yview (+ self.y 70s)) goto 0x0001B4
0x00019C:
    self.y = (+ self.y 40s)
0x0001B4:
    push -1s
    if !(< 0s:view_yview (+ self.y 10s)) goto 0x0001F4
0x0001DC:
    self.y = (- self.y 40s)
0x0001F4:
    if !(< self.x -40s) goto 0x000214
0x000208:
    self.x = -40s
0x000214:
    if !(> self.x (- self.room_width 360s)) goto 0x00024C
0x000234:
    self.x = (- self.room_width 360s)
0x00024C:
    if !(> self.y (- self.room_height 280s)) goto 0x000284
0x00026C:
    self.y = (- self.room_height 280s)
0x000284:
    if !(< self.y -40s) goto 0x0002A4
0x000298:
    self.y = -40s
0x0002A4:
    exit
