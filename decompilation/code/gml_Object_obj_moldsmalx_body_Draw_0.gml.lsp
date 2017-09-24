0x000000:
    if !(== self.stage 0s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000040:
    if !(== self.stage 1s) goto 0x0001CC
0x000054:
    self.xsin2 = (* (cos[]:int32 (/ self.xsin (double 10s))) 4s)
    self.sprite_index = 256s
    self.g = (instance_create[]:int32 (var 292s) (+ self.y 170s) self.x)
    push 1s
    stog.c* = (int32 self.g)
    self.g = (instance_create[]:int32 (var 292s) (+ self.y 140s) self.x)
    self.g = (instance_create[]:int32 (var 292s) (+ self.y 110s) self.x)
    push 1s
    stog.c* = (int32 self.g)
    call (instance_create[]:int32 (var 292s) (+ self.y 80s) self.x)
    if (== self.room 278s) goto 0x0001A0
0x00018C:
    push (== self.room 305s)
    goto 0x0001A4
0x0001A0:
    push 1s
0x0001A4:
    if !pop goto 0x0001C0
0x0001A8:
    [obj_moldsmalx_part].bborder = (+ self.ystart 100s)
0x0001C0:
    self.stage = 2s
0x0001CC:
    if !(== self.stage 2s) goto 0x0002AC
0x0001E0:
    self.height = (+ self.height 2s)
    self.y = (- self.y 4s)
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) self.y (+ self.x self.xsin2) self.height (var 50s) (var 0s) (var 0s) self.image_index self.sprite_index)
    if !(> self.height 104s) goto 0x0002AC
0x0002A0:
    self.stage = 3s
0x0002AC:
    if !(== self.stage 3s) goto 0x00038C
0x0002C0:
    [obj_moldsmalx_part].f = 2s
    self.xsin2 = (* (cos[]:int32 (/ self.xsin (double 10s))) 4s)
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) self.y (+ self.x self.xsin2) self.height (var 50s) (var 0s) (var 0s) self.image_index self.sprite_index)
    self.xsin = (+ self.xsin 1s)
0x00038C:
    exit
