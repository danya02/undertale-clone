0x000000:
    if !(== global.facechoice 3s) goto 0x00006C
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x00006C:
    if !(== global.faceemotion 0s) goto 0x00008C
0x000080:
    self.face = 771s
0x00008C:
    if !(== global.faceemotion 1s) goto 0x0000AC
0x0000A0:
    self.face = 779s
0x0000AC:
    if !(== global.faceemotion 2s) goto 0x0000CC
0x0000C0:
    self.face = 775s
0x0000CC:
    if !(== global.faceemotion 3s) goto 0x0000EC
0x0000E0:
    self.face = 780s
0x0000EC:
    if !(== global.faceemotion 4s) goto 0x00010C
0x000100:
    self.face = 772s
0x00010C:
    if !(== global.faceemotion 5s) goto 0x00012C
0x000120:
    self.face = 781s
0x00012C:
    if !(== global.faceemotion 6s) goto 0x00014C
0x000140:
    self.face = 782s
0x00014C:
    if !(== global.faceemotion 7s) goto 0x00016C
0x000160:
    self.face = 773s
0x00016C:
    if !(== global.faceemotion 8s) goto 0x00018C
0x000180:
    self.face = 778s
0x00018C:
    if !(== global.faceemotion 9s) goto 0x0001AC
0x0001A0:
    self.face = 774s
0x0001AC:
    if !(== global.facechoice 0s) goto 0x0001CC
0x0001C0:
    self.sprite_index = 763s
0x0001CC:
    if !(== global.facechoice 1s) goto 0x0001EC
0x0001E0:
    self.sprite_index = 770s
0x0001EC:
    if !(== global.facechoice 2s) goto 0x00020C
0x000200:
    self.sprite_index = 764s
0x00020C:
    if !(== global.facechoice 3s) goto 0x00022C
0x000220:
    self.sprite_index = 765s
0x00022C:
    if !(== global.facechoice 4s) goto 0x00024C
0x000240:
    self.sprite_index = 766s
0x00024C:
    if !(== global.facechoice 5s) goto 0x00026C
0x000260:
    self.sprite_index = 767s
0x00026C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 2s) (+ self.x 40s) self.face_index self.face)
    self.face_index = (+ self.face_index self.face_speed)
    if !(!= global.facechoice 3s) goto 0x00035C
0x000304:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x00035C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0003BC
0x000374:
    if !(== 782.halt 0s) goto 0x0003A0
0x000388:
    self.face_speed = 0.25d
    goto 0x0003B8
0x0003A0:
    self.face_index = 0s
    self.face_speed = 0s
0x0003B8:
    goto 0x0003D4
0x0003BC:
    self.face_index = 0s
    self.face_speed = 0s
0x0003D4:
    if !(== global.faceemotion 8s) goto 0x0003FC
0x0003E8:
    self.face_speed = 0.13d
0x0003FC:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== global.facechoice 1s) goto 0x0004F4
0x000428:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 16s) self.x self.present (var 769s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ self.y self.haty) 16s) self.x self.image_index (var 768s))
0x0004F4:
    if !(== self.choicer 1s) goto 0x000654
0x000508:
    if !(== self.choice 0s) goto 0x000568
0x00051C:
    push -5s
    push (+ 2s:idealborder 60s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder 40s) (var 0s) (var 34s))
0x000568:
    if !(== self.choice 1s) goto 0x0005C8
0x00057C:
    push -5s
    push (+ 2s:idealborder 60s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder 300s) (var 0s) (var 34s))
0x0005C8:
    if (bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0005F8
0x0005E0:
    push (bool (keyboard_check_pressed[]:int32 (var 37s)))
    goto 0x0005FC
0x0005F8:
    push 1s
0x0005FC:
    if !pop goto 0x000630
0x000600:
    if !(== self.choice 0s) goto 0x000624
0x000614:
    self.choice = 1s
    goto 0x000630
0x000624:
    self.choice = 0s
0x000630:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000654
0x000648:
    self.choicer = 2s
0x000654:
    exit
