0x000000:
    if !(== self.moving 1s) goto 0x000078
0x000014:
    self.x = (+ self.x 3s)
    if !(>= self.x (+ self.prevx 18s)) goto 0x000078
0x00004C:
    self.x = (+ self.prevx 20s)
    call (event_user[]:int32 (var 1s))
0x000078:
    if !(== self.moving 2s) goto 0x0000F0
0x00008C:
    self.y = (- self.y 3s)
    if !(<= self.y (- self.prevy 18s)) goto 0x0000F0
0x0000C4:
    self.y = (- self.prevy 20s)
    call (event_user[]:int32 (var 1s))
0x0000F0:
    if !(== self.moving 3s) goto 0x000168
0x000104:
    self.x = (- self.x 3s)
    if !(<= self.x (- self.prevx 18s)) goto 0x000168
0x00013C:
    self.x = (- self.prevx 20s)
    call (event_user[]:int32 (var 1s))
0x000168:
    if !(== self.moving 4s) goto 0x0001E0
0x00017C:
    self.y = (+ self.y 3s)
    if !(>= self.y (+ self.prevy 18s)) goto 0x0001E0
0x0001B4:
    self.y = (+ self.prevy 20s)
    call (event_user[]:int32 (var 1s))
0x0001E0:
    if !(== self.moving 0s) goto 0x00027C
0x0001F4:
    if !(~ (bool (keyboard_check[]:int32 (var 37s)))) goto 0x00027C
0x000210:
    if !(~ (bool (keyboard_check[]:int32 (var 39s)))) goto 0x00027C
0x00022C:
    if !(~ (bool (keyboard_check[]:int32 (var 40s)))) goto 0x00027C
0x000248:
    if !(~ (bool (keyboard_check[]:int32 (var 38s)))) goto 0x00027C
0x000264:
    self.image_index = 0s
    self.image_speed = 0s
0x00027C:
    if !(== self.moving 1s) goto 0x0002B0
0x000290:
    self.sprite_index = 1045s
    self.image_speed = 0.334d
0x0002B0:
    if !(== self.moving 2s) goto 0x0002E4
0x0002C4:
    self.sprite_index = 1044s
    self.image_speed = 0.334d
0x0002E4:
    if !(== self.moving 3s) goto 0x000318
0x0002F8:
    self.sprite_index = 1046s
    self.image_speed = 0.334d
0x000318:
    if !(== self.moving 4s) goto 0x00034C
0x00032C:
    self.sprite_index = 1043s
    self.image_speed = 0.334d
0x00034C:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000434
0x000364:
    if !(== self.moving 0s) goto 0x000434
0x000378:
    if !(== self.image_index 0s) goto 0x000398
0x00038C:
    self.image_index = 1s
0x000398:
    self.sprite_index = 1045s
    self.checkx = (+ self.x 30s)
    self.checky = (+ self.y 25s)
    self.thistile = 0s
    call (event_user[]:int32 (var 0s))
    self.nexttile = self.thistile
    if !(!= self.nexttile 2s) goto 0x000434
0x000418:
    self.moving = 1s
    self.prevx = self.x
0x000434:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000538
0x00044C:
    if !(== self.moving 0s) goto 0x000538
0x000460:
    if !(== self.image_index 0s) goto 0x000480
0x000474:
    self.image_index = 1s
0x000480:
    self.sprite_index = 1044s
    self.checkx = (+ self.x 10s)
    self.checky = (+ self.y 5s)
    self.thistile = 0s
    call (event_user[]:int32 (var 0s))
    self.nexttile = self.thistile
    if !(!= self.nexttile 2s) goto 0x000514
0x000500:
    push (!= self.nexttile 0s)
    goto 0x000518
0x000514:
    push 0s
0x000518:
    if !pop goto 0x000538
0x00051C:
    self.moving = 2s
    self.prevy = self.y
0x000538:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x00063C
0x000550:
    if !(== self.moving 0s) goto 0x00063C
0x000564:
    if !(== self.image_index 0s) goto 0x000584
0x000578:
    self.image_index = 1s
0x000584:
    self.sprite_index = 1046s
    self.checkx = (- self.x 10s)
    self.checky = (+ self.y 25s)
    self.thistile = 0s
    call (event_user[]:int32 (var 0s))
    self.nexttile = self.thistile
    if !(!= self.nexttile 2s) goto 0x000618
0x000604:
    push (!= self.nexttile 0s)
    goto 0x00061C
0x000618:
    push 0s
0x00061C:
    if !pop goto 0x00063C
0x000620:
    self.moving = 3s
    self.prevx = self.x
0x00063C:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000740
0x000654:
    if !(== self.moving 0s) goto 0x000740
0x000668:
    if !(== self.image_index 0s) goto 0x000688
0x00067C:
    self.image_index = 1s
0x000688:
    self.sprite_index = 1043s
    self.checkx = (+ self.x 10s)
    self.checky = (+ self.y 45s)
    self.thistile = 0s
    call (event_user[]:int32 (var 0s))
    self.nexttile = self.thistile
    if !(!= self.nexttile 2s) goto 0x00071C
0x000708:
    push (!= self.nexttile 0s)
    goto 0x000720
0x00071C:
    push 0s
0x000720:
    if !pop goto 0x000740
0x000724:
    self.moving = 4s
    self.prevy = self.y
0x000740:
    [obj_mainchara].x = self.x
    [obj_mainchara].y = self.y
0x000760:
    exit
