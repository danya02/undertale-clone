0x000000:
    self.image_speed = 0.05d
    call (scr_depth[]:int32 )
    self.snoozer = (instance_create[]:int32 (var 1294s) (- self.y 1s) (+ self.x (/ self.sprite_width (double 2s))))
    if (> global.plot 121s) goto 0x000098
0x00007C:
    push -5s
    push (== 67s:flag 1s)
    goto 0x00009C
0x000098:
    push 1s
0x00009C:
    if !pop goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    exit
