0x000000:
    global.interact = 1s
    if !(== 1569.left 1s) goto 0x000038
0x000020:
    self.x = (- self.x 4s)
0x000038:
    if !(== 1569.right 1s) goto 0x000064
0x00004C:
    self.x = (+ self.x 4s)
0x000064:
    if !(== 1569.up 1s) goto 0x000090
0x000078:
    self.y = (- self.y 4s)
0x000090:
    if !(== 1569.down 1s) goto 0x0000BC
0x0000A4:
    self.y = (+ self.y 4s)
0x0000BC:
    if !(< self.bbox_left self.xbound) goto 0x0000E4
0x0000D4:
    self.x = self.xprevious
0x0000E4:
    if !(> self.bbox_right self.xbound2) goto 0x00010C
0x0000FC:
    self.x = self.xprevious
0x00010C:
    if !(> self.bbox_bottom self.ybound2) goto 0x000134
0x000124:
    self.y = self.yprevious
0x000134:
    if !(< self.bbox_top self.ybound) goto 0x00015C
0x00014C:
    self.y = self.yprevious
0x00015C:
    if !(== self.buffer 1s) goto 0x0001BC
0x000170:
    if (== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x0001A8
0x00018C:
    push (== (keyboard_multicheck_pressed[]:int32 (var 1s)) 1s)
    goto 0x0001AC
0x0001A8:
    push 1s
0x0001AC:
    if !pop goto 0x0001BC
0x0001B0:
    self.dest = 1s
0x0001BC:
    if !(== self.dest 1s) goto 0x0001E8
0x0001D0:
    self.dest_timer = (+ self.dest_timer 1s)
0x0001E8:
    if !(>= self.dest_timer 2s) goto 0x000208
0x0001FC:
    call (instance_destroy[]:int32 )
0x000208:
    exit
