0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.w_active 1s) goto 0x00032C
0x000040:
    [obj_mainchara].visible = 0s
    self.w_timer = (+ self.w_timer 1s)
    if !(< self.w_timer 30s) goto 0x0000F0
0x000078:
    if !(> self.xx (- self.thisx 10s)) goto 0x0000B0
0x000098:
    self.xx = (- self.xx 1s)
0x0000B0:
    call (draw_sprite[]:int32 1570.y self.xx (floor[]:int32 (/ self.w_timer (double 3s))) (var 1034s))
0x0000F0:
    if !(>= self.w_timer 30s) goto 0x000118
0x000104:
    push (< self.w_timer 120s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x0001A4
0x000120:
    self.pour_index = (+ self.pour_index 0.2d)
    call (draw_sprite[]:int32 1570.y self.xx (floor[]:int32 self.pour_index) (var 1038s))
    if !(>= self.pour_index 5.8d) goto 0x0001A4
0x000190:
    self.pour_index = 4.2d
0x0001A4:
    if !(>= self.w_timer 120s) goto 0x00032C
0x0001B8:
    self.pour_index = (+ self.pour_index 0.2d)
    if !(<= self.pour_index 7.8d) goto 0x00022C
0x0001F4:
    call (draw_sprite[]:int32 1570.y self.xx (floor[]:int32 self.pour_index) (var 1038s))
    goto 0x00032C
0x00022C:
    if !(< self.xx self.thisx) goto 0x0002A0
0x000244:
    self.xx = (+ self.xx 1s)
    call (draw_sprite[]:int32 1570.y self.xx (floor[]:int32 (/ self.w_timer (double 3s))) (var 1034s))
    goto 0x00032C
0x0002A0:
    stog.flag[366s] = 0s
    pushenv 1298s 0x0002C8
0x0002BC:
    self.havewater = 0s
0x0002C8:
    popenv 0x0002BC
0x0002CC:
    [obj_mainchara].visible = 1s
    pushenv 1570s 0x000310
0x0002E0:
    self.lsprite = 1046s
    self.usprite = 1044s
    self.dsprite = 1043s
    self.rsprite = 1045s
0x000310:
    popenv 0x0002E0
0x000314:
    self.w_active = 0s
    self.con = 11s
0x00032C:
    exit
