0x000000:
    if !(== self.con 0s) goto 0x000410
0x000014:
    if !(== self.facer 1s) goto 0x000040
0x000028:
    push (bool (instance_exists[]:int32 (var 1569s)))
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000354
0x000048:
    if !(== 1569.left 1s) goto 0x000108
0x00005C:
    self.x = (- self.x 60s)
    if (<= 3s 0) goto 0x000104
0x00008C:
    push 3s
    if !(bool (collision_point[]:int32 (var 1s) (var 1s) (var 1041s) (+ self.y 35s) (+ self.x 9s))) goto 0x0000EC
0x0000D4:
    self.x = (+ self.x 20s)
0x0000EC:
    if (bool (- pop 1)) goto 0x00008C
0x000104:
    push (- pop 1)
    pop
0x000108:
    if !(== 1569.right 1s) goto 0x0001C8
0x00011C:
    self.x = (+ self.x 60s)
    if (<= 3s 0) goto 0x0001C4
0x00014C:
    push 3s
    if !(bool (collision_point[]:int32 (var 1s) (var 1s) (var 1041s) (+ self.y 35s) (+ self.x 9s))) goto 0x0001AC
0x000194:
    self.x = (- self.x 20s)
0x0001AC:
    if (bool (- pop 1)) goto 0x00014C
0x0001C4:
    push (- pop 1)
    pop
0x0001C8:
    if !(== 1569.down 1s) goto 0x000288
0x0001DC:
    self.y = (+ self.y 60s)
    if (<= 3s 0) goto 0x000284
0x00020C:
    push 3s
    if !(bool (collision_point[]:int32 (var 1s) (var 1s) (var 1041s) (+ self.y 35s) (+ self.x 9s))) goto 0x00026C
0x000254:
    self.y = (- self.y 20s)
0x00026C:
    if (bool (- pop 1)) goto 0x00020C
0x000284:
    push (- pop 1)
    pop
0x000288:
    if !(== 1569.up 1s) goto 0x000348
0x00029C:
    self.y = (- self.y 60s)
    if (<= 3s 0) goto 0x000344
0x0002CC:
    push 3s
    if !(bool (collision_point[]:int32 (var 1s) (var 1s) (var 1041s) (+ self.y 35s) (+ self.x 9s))) goto 0x00032C
0x000314:
    self.y = (+ self.y 20s)
0x00032C:
    if (bool (- pop 1)) goto 0x0002CC
0x000344:
    push (- pop 1)
    pop
0x000348:
    self.facer = 0s
0x000354:
    if !(bool (collision_point[]:int32 (var 1s) (var 1s) (var 1041s) (+ self.y 35s) (+ self.x 9s))) goto 0x0003A8
0x00039C:
    call (instance_destroy[]:int32 )
0x0003A8:
    self.image_alpha = (+ self.image_alpha 0.07d)
    if !(> self.image_alpha 0.9d) goto 0x000410
0x0003E4:
    self.image_alpha = 1s
    self.con = 1s
    stog.alarm[4s] = 10s
0x000410:
    if !(== self.con 2s) goto 0x000524
0x000424:
    self.spearbud = (instance_create[]:int32 (var 1363s) self.y self.x)
    stog.y* = (+ (int32 self.spearbud):y 9s)
    stog.y* = (- (int32 self.spearbud):y 9s)
    push self.sprite_index
    stog.sprite_index* = (int32 self.spearbud)
    push 0.5d
    stog.image_speed* = (int32 self.spearbud)
    push 1s
    stog.visible* = (int32 self.spearbud)
    pushenv (int32 self.spearbud) 0x00050C
0x000500:
    push (int32 self.spearbud)
    push (int32 self.spearbud)
    call (scr_depth[]:int32 )
0x00050C:
    popenv 0x000500
0x000510:
    self.con = 2.5d
0x000524:
    if !(== self.con 2.5d) goto 0x000684
0x000540:
    if !(>= (int32 self.spearbud):image_index 1.5d) goto 0x00057C
0x000568:
    push (== self.active 1s)
    goto 0x000580
0x00057C:
    push 0s
0x000580:
    if !pop goto 0x00062C
0x000584:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x0005E0
0x0005CC:
    call (event_user[]:int32 (var 3s))
0x0005E0:
    if !(== self.sounded 0s) goto 0x00060C
0x0005F4:
    push (bool (instance_exists[]:int32 (var 1046s)))
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x00062C
0x000614:
    [obj_speartilegen].sound2 = 1s
    self.sounded = 1s
0x00062C:
    if !(>= (int32 self.spearbud):image_index 3s) goto 0x000684
0x00064C:
    push 0s
    stog.image_speed* = (int32 self.spearbud)
    self.con = 3s
    stog.alarm[4s] = 5s
0x000684:
    if !(== self.con 4s) goto 0x00071C
0x000698:
    self.image_alpha = (- self.image_alpha 0.1d)
    push self.image_alpha
    stog.image_alpha* = (int32 self.spearbud)
    if !(< self.image_alpha 0.1d) goto 0x00071C
0x0006F0:
    pushenv (int32 self.spearbud) 0x00070C
0x000700:
    call (instance_destroy[]:int32 )
0x00070C:
    popenv 0x000700
0x000710:
    call (instance_destroy[]:int32 )
0x00071C:
    if !(== self.duty 1s) goto 0x000778
0x000730:
    self.x = 1570.x
    self.y = 1570.y
    self.duty = 0s
    call (move_snap[]:int32 (var 20s) (var 20s))
0x000778:
    if !(== self.active 2s) goto 0x0007EC
0x00078C:
    if !(>= self.con 2.5d) goto 0x0007E0
0x0007A8:
    if !(bool (instance_exists[]:int32 self.spearbud)) goto 0x0007E0
0x0007C0:
    pushenv (int32 self.spearbud) 0x0007DC
0x0007D0:
    call (instance_destroy[]:int32 )
0x0007DC:
    popenv 0x0007D0
0x0007E0:
    call (instance_destroy[]:int32 )
0x0007EC:
    exit
