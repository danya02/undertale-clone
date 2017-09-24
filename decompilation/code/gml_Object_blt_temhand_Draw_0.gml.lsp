0x000000:
    self.adjustx = 0s
    self.adjusty = 0s
    if !(== self.direction 0s) goto 0x000038
0x00002C:
    self.adjustx = 4s
0x000038:
    if !(== self.direction 180s) goto 0x000058
0x00004C:
    self.adjustx = 4s
0x000058:
    if !(== self.direction 270s) goto 0x000078
0x00006C:
    self.adjusty = 4s
0x000078:
    if !(== self.direction 90s) goto 0x000098
0x00008C:
    self.adjusty = 4s
0x000098:
    call (draw_sprite[]:int32 (+ self.y self.adjusty) (+ self.x self.adjustx) self.image_index self.sprite_index)
    stog.temx2[(int32 self.temno)] = (+ self.x 10s)
    stog.temy2[(int32 self.temno)] = (+ self.y 10s)
    self.xdif = (- self.x (+ 743.x 2s))
    self.ydif = (- self.y (+ 743.y 6s))
    if !(< (abs[]:int32 self.xdif) 20s) goto 0x0001AC
0x000190:
    push -1s
    push (> 0s:alarm 5s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001D8
0x0001B4:
    push -1s
    stog.alarm[(- 0s:alarm 2s)] = 0s
0x0001D8:
    if !(< (abs[]:int32 self.ydif) 20s) goto 0x000210
0x0001F4:
    push -1s
    push (> 0s:alarm 5s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x00023C
0x000218:
    push -1s
    stog.alarm[(- 0s:alarm 2s)] = 0s
0x00023C:
    if !(< (abs[]:int32 self.xdif) 10s) goto 0x000274
0x000258:
    push -1s
    push (> 0s:alarm 4s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002A8
0x00027C:
    push -1s
    stog.alarm[0s] = (/ 0s:alarm (double 2s))
0x0002A8:
    if !(< (abs[]:int32 self.ydif) 10s) goto 0x0002E0
0x0002C4:
    push -1s
    push (> 0s:alarm 4s)
    goto 0x0002E4
0x0002E0:
    push 0s
0x0002E4:
    if !pop goto 0x000314
0x0002E8:
    push -1s
    stog.alarm[0s] = (/ 0s:alarm (double 2s))
0x000314:
    self.i = 0s
    if !(< self.i 10s) goto 0x00049C
0x000334:
    call (draw_set_color[]:int32 (var 16777215))
    push -1s
    if !(> (int32 self.i):temx1 0s) goto 0x000480
0x000370:
    push (var 0s)
    push -1s
    push (int32 self.i):temy2
    push -1s
    call (draw_rectangle[]:int32 (int32 self.i):temx2 -1s (int32 self.i):temy1 -1s (int32 self.i):temx1)
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -1s
    if !(bool (collision_rectangle[]:int32 (int32 self.i):temy2 -1s (int32 self.i):temx2 -1s (int32 self.i):temy1 -1s (int32 self.i):temx1)) goto 0x000480
0x00046C:
    call (event_user[]:int32 (var 1s))
0x000480:
    self.i = (+ self.i 1s)
    goto 0x000320
0x00049C:
    exit
