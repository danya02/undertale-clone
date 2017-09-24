0x000000:
    if !(< self.x (- (/ self.room_width (double 2s)) (/ self.sprite_width (double 2s)))) goto 0x000160
0x00003C:
    if !(== self.conversation 0s) goto 0x000160
0x000050:
    global.currentsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.86d) (var 0.7d) global.currentsong)
    self.conversation = 1s
    self.hspeed = 0s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 2s) (- (+ self.x self.sprite_width) 10s))
    global.msc = 674s
    self.conversation = 1s
    self.image_speed = 0.2d
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 40s))
0x000160:
    stog.alarm[0s] = 20s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0001D0
0x00018C:
    if !(== 782.halt 0s) goto 0x0001B8
0x0001A0:
    self.image_speed = 0.2d
    goto 0x0001D0
0x0001B8:
    self.image_speed = 0s
    self.image_index = 0s
0x0001D0:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0001FC
0x0001E8:
    push (== self.conversation 1s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000210
0x000204:
    call (scr_textskip[]:int32 )
0x000210:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0002C8
0x00022C:
    if !(== self.conversation 1s) goto 0x0002C8
0x000240:
    pushenv (int32 self.blcon) 0x00025C
0x000250:
    call (instance_destroy[]:int32 )
0x00025C:
    popenv 0x000250
0x000260:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.alarm[2s] = 20s
    self.conversation = 2s
    self.image_speed = 0s
    self.image_index = 0s
    self.volume = 1s
0x0002C8:
    if !(== global.faceemotion 1s) goto 0x0002E8
0x0002DC:
    self.sprite_index = 722s
0x0002E8:
    if !(== global.faceemotion 2s) goto 0x000308
0x0002FC:
    self.sprite_index = 724s
0x000308:
    exit
