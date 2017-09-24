0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000780
0x000018:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)
    self.ndtry = 0s
    if !(bool (instance_exists[]:int32 (var 1115s))) goto 0x00029C
0x000084:
    self.mm = 1115s
    self.sprito2 = 1115.sprite_index
    if !(== 1115.sprite_index (int32 self.mm):rsprite) goto 0x0000D0
0x0000C4:
    self.sprito2 = 1378s
0x0000D0:
    if !(== (int32 self.mm):sprite_index 1399s) goto 0x0000FC
0x0000F0:
    self.sprito2 = 1379s
0x0000FC:
    if !(== (int32 self.mm):sprite_index (int32 self.mm):dsprite) goto 0x000138
0x00012C:
    self.sprito2 = 1376s
0x000138:
    if !(== (int32 self.mm):sprite_index (int32 self.mm):usprite) goto 0x000174
0x000168:
    self.sprito2 = 1380s
0x000174:
    if !(== (int32 self.mm):sprite_index (int32 self.mm):lsprite) goto 0x0001B0
0x0001A4:
    self.sprito2 = 1377s
0x0001B0:
    if !(> (int32 self.mm):depth 1570.depth) goto 0x000290
0x0001D4:
    call (draw_custom_ext[]:int32 (+ (int32 self.mm):y (* (int32 self.mm):sprite_height 1s)) (int32 self.mm):x (var 0.4d) (var 1s) (var 1s) (int32 self.mm):image_index self.sprito2 (- self.bbox_bottom 1s) self.bbox_top self.bbox_right self.bbox_left)
    goto 0x00029C
0x000290:
    self.ndtry = 1s
0x00029C:
    self.sprito = 1570.sprite_index
    if !(== 1570.rsprite 1045s) goto 0x000340
0x0002C0:
    if !(== 1570.sprite_index 1045s) goto 0x0002E0
0x0002D4:
    self.sprito = 1004s
0x0002E0:
    if !(== 1570.sprite_index 1043s) goto 0x000300
0x0002F4:
    self.sprito = 1000s
0x000300:
    if !(== 1570.sprite_index 1044s) goto 0x000320
0x000314:
    self.sprito = 1002s
0x000320:
    if !(== 1570.sprite_index 1046s) goto 0x000340
0x000334:
    self.sprito = 1003s
0x000340:
    if !(== 1570.rsprite 1018s) goto 0x0003D4
0x000354:
    if !(== 1570.sprite_index 1018s) goto 0x000374
0x000368:
    self.sprito = 1014s
0x000374:
    if !(== 1570.sprite_index 1016s) goto 0x000394
0x000388:
    self.sprito = 1012s
0x000394:
    if !(== 1570.sprite_index 1017s) goto 0x0003B4
0x0003A8:
    self.sprito = 1013s
0x0003B4:
    if !(== 1570.sprite_index 1019s) goto 0x0003D4
0x0003C8:
    self.sprito = 1015s
0x0003D4:
    if !(== self.death 1s) goto 0x000468
0x0003E8:
    if !(== 1570.sprite_index 1045s) goto 0x000408
0x0003FC:
    self.sprito = 1023s
0x000408:
    if !(== 1570.sprite_index 1043s) goto 0x000428
0x00041C:
    self.sprito = 1021s
0x000428:
    if !(== 1570.sprite_index 1044s) goto 0x000448
0x00043C:
    self.sprito = 1027s
0x000448:
    if !(== 1570.sprite_index 1046s) goto 0x000468
0x00045C:
    self.sprito = 1025s
0x000468:
    self.simage = 1570.image_index
    push -5s
    if !(== 85s:flag 0s) goto 0x00051C
0x000494:
    call (draw_custom_ext[]:int32 (+ 1570.y (* 1570.sprite_height 1s)) 1570.x (var 0.4d) (var 1s) (var 1s) self.simage self.sprito (- self.bbox_bottom 1s) self.bbox_top self.bbox_right self.bbox_left)
0x00051C:
    push -5s
    if !(== 85s:flag 1s) goto 0x000650
0x000538:
    if !(== 1570.sprite_index 1570.dsprite) goto 0x00055C
0x000550:
    self.value = 3s
0x00055C:
    if !(== 1570.sprite_index 1570.usprite) goto 0x000580
0x000574:
    self.value = 16s
0x000580:
    if !(== 1570.sprite_index 1570.rsprite) goto 0x0005A4
0x000598:
    self.value = 10s
0x0005A4:
    if !(== 1570.sprite_index 1570.lsprite) goto 0x0005C8
0x0005BC:
    self.value = 9s
0x0005C8:
    call (draw_custom_ext[]:int32 (+ 1570.y 30s) (- 1570.x self.value) (var 0.4d) (var 1s) (var 1s) self.simage self.sprito (- self.bbox_bottom 1s) self.bbox_top self.bbox_right self.bbox_left)
0x000650:
    if !(== self.ndtry 1s) goto 0x00071C
0x000664:
    call (draw_custom_ext[]:int32 (+ (int32 self.mm):y (* (int32 self.mm):sprite_height 1s)) (int32 self.mm):x (var 0.4d) (var 1s) (var 1s) (int32 self.mm):image_index self.sprito2 (- self.bbox_bottom 1s) self.bbox_top self.bbox_right self.bbox_left)
0x00071C:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== global.debug 1s) goto 0x000780
0x00075C:
    if !(bool (keyboard_check_pressed[]:int32 (var 32s))) goto 0x000780
0x000774:
    self.death = 1s
0x000780:
    exit
