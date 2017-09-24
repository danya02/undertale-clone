0x000000:
    self.col = 0s
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000060
0x000054:
    self.col = 1s
0x000060:
    if !(== self.side 1s) goto 0x0000F0
0x000074:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom (+ (+ self.bbox_right self.sprite_width) 1s) self.bbox_top (+ (+ self.bbox_left self.sprite_width) 1s))) goto 0x0000F0
0x0000E4:
    self.col = 1s
0x0000F0:
    if !(== self.side 2s) goto 0x000180
0x000104:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom (- (- self.bbox_right self.sprite_width) 1s) self.bbox_top (- (- self.bbox_left self.sprite_width) 1s))) goto 0x000180
0x000174:
    self.col = 1s
0x000180:
    if !(== self.col 1s) goto 0x0001A8
0x000194:
    call (event_user[]:int32 (var 11s))
0x0001A8:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (+ self.x 22s) (+ self.y 6s) (+ self.x 2s))) goto 0x00031C
0x000210:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (+ self.x 22s) (+ self.y 6s) (+ self.x 2s))
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0002A8
0x000290:
    global.ratings = (+ global.ratings 20s)
0x0002A8:
    pushenv (int32 self.g) 0x0002C4
0x0002B8:
    call (instance_destroy[]:int32 )
0x0002C4:
    popenv 0x0002B8
0x0002C8:
    if !(== self.shot 0s) goto 0x00031C
0x0002DC:
    self.playdo = 1s
    self.myloop = (audio_play_sound[]:int32 (var 1s) (var 40s) (var 127s))
    self.shot = 1s
0x00031C:
    self.s = (+ self.s 1s)
    if !(> self.shot 0s) goto 0x000434
0x000348:
    self.shot2 = (+ self.shot2 1s)
    self.image_speed = 1s
    if !(>= self.shot2 6s) goto 0x000434
0x000380:
    self.playdo = 0s
    call (audio_stop_sound[]:int32 self.myloop)
    call (snd_play[]:int32 (var 125s))
    if !(~ (bool (instance_exists[]:int32 (var 184s)))) goto 0x0003F4
0x0003D0:
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
0x0003F4:
    call (instance_create[]:int32 (var 441s) (+ self.y 6s) (+ self.x 2s))
    call (instance_destroy[]:int32 )
0x000434:
    if !(== self.side 1s) goto 0x000588
0x000448:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (+ (+ (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (+ (+ (+ self.x 2s) self.sprite_width) 1s))) goto 0x000588
0x0004D8:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (+ (+ (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (+ (+ (+ self.x 2s) self.sprite_width) 1s))
    pushenv (int32 self.g) 0x000584
0x000578:
    call (instance_destroy[]:int32 )
0x000584:
    popenv 0x000578
0x000588:
    if !(== self.side 2s) goto 0x0006DC
0x00059C:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (- (- (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (- (- (+ self.x 2s) self.sprite_width) 1s))) goto 0x0006DC
0x00062C:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 28s) (- (- (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (- (- (+ self.x 2s) self.sprite_width) 1s))
    pushenv (int32 self.g) 0x0006D8
0x0006CC:
    call (instance_destroy[]:int32 )
0x0006D8:
    popenv 0x0006CC
0x0006DC:
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x000718:
    exit
