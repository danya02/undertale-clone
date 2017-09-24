0x000000:
    global.invc = (- global.invc 1s)
    if !(> global.invc 0s) goto 0x000044
0x00002C:
    self.image_speed = 0.5d
    goto 0x00005C
0x000044:
    self.image_index = 0s
    self.image_speed = 0s
0x00005C:
    if !(== 1569.left 1s) goto 0x0000E4
0x000070:
    if !(== self.movement 1s) goto 0x0000E4
0x000084:
    self.x = (- self.x global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x0000E4
0x0000BC:
    self.x = (+ self.x (/ global.sp (double 2s)))
0x0000E4:
    if !(== 1569.right 1s) goto 0x00016C
0x0000F8:
    if !(== self.movement 1s) goto 0x00016C
0x00010C:
    self.x = (+ self.x global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x00016C
0x000144:
    self.x = (+ self.x (/ global.sp (double 2s)))
0x00016C:
    if !(== 1569.up 1s) goto 0x0001F4
0x000180:
    if !(== self.movement 1s) goto 0x0001F4
0x000194:
    self.y = (- self.y global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x0001F4
0x0001CC:
    self.x = (+ self.x (/ global.sp (double 2s)))
0x0001F4:
    if !(== 1569.down 1s) goto 0x00027C
0x000208:
    if !(== self.movement 1s) goto 0x00027C
0x00021C:
    self.y = (+ self.y global.sp)
    if !(== (keyboard_multicheck[]:int32 (var 16s)) 1s) goto 0x00027C
0x000254:
    self.x = (+ self.x (/ global.sp (double 2s)))
0x00027C:
    if !(< global.hp 1s) goto 0x0002A4
0x000290:
    call (script_execute[]:int32 (var 158s))
0x0002A4:
    if !(== self.deleteafter 1s) goto 0x0002D4
0x0002B8:
    push (== (instance_exists[]:int32 self.blconwd) 0s)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x0003A8
0x0002DC:
    stog.alarm[3s] = 10s
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000328
0x000308:
    pushenv (int32 self.blcon) 0x000324
0x000318:
    call (instance_destroy[]:int32 )
0x000324:
    popenv 0x000318
0x000328:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x000360
0x000340:
    pushenv (int32 self.blconwd) 0x00035C
0x000350:
    call (instance_destroy[]:int32 )
0x00035C:
    popenv 0x000350
0x000360:
    self.movement = 1s
    if !(bool (instance_exists[]:int32 (var 169s))) goto 0x00039C
0x000384:
    [obj_papdate].face_index = 0s
    [obj_papdate].face_speed = 0s
0x00039C:
    self.deleteafter = 0s
0x0003A8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0003E8
0x0003C0:
    if !(== self.movement 1s) goto 0x0003E8
0x0003D4:
    push (== self.canpress 1s)
    goto 0x0003EC
0x0003E8:
    push 0s
0x0003EC:
    if !pop goto 0x000A4C
0x0003F0:
    if !(bool (instance_exists[]:int32 (var 169s))) goto 0x000A4C
0x000408:
    call (snd_play[]:int32 (var 28s))
    self.bodypart = 0s
    self.xx = 169.x
    self.yy = 169.y
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 130s) (+ self.xx 86s) (+ self.yy 58s) (+ self.xx 24s))) goto 0x0004BC
0x0004B0:
    self.bodypart = 1s
0x0004BC:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 164s) (+ self.xx 110s) (+ self.yy 56s) (+ self.xx 84s))) goto 0x000530
0x000524:
    self.bodypart = 2s
0x000530:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 112s) (+ self.xx 24s) (+ self.yy 66s) (+ self.xx 0s))) goto 0x0005A4
0x000598:
    self.bodypart = 2s
0x0005A4:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 172s) (+ self.xx 138s) (+ self.yy 144s) (+ self.xx 90s))) goto 0x000618
0x00060C:
    self.bodypart = 3s
0x000618:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 146s) (+ self.xx 44s) (+ self.yy 112s) (+ self.xx 0s))) goto 0x00068C
0x000680:
    self.bodypart = 3s
0x00068C:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 196s) (+ self.xx 84s) (+ self.yy 130s) (+ self.xx 34s))) goto 0x000700
0x0006F4:
    self.bodypart = 4s
0x000700:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 216s) (+ self.xx 124s) (+ self.yy 196s) (+ self.xx 12s))) goto 0x000774
0x000768:
    self.bodypart = 5s
0x000774:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 749s) (+ self.yy 58s) (+ self.xx 88s) self.yy (+ self.xx 36s))) goto 0x0007E0
0x0007D4:
    self.bodypart = 6s
0x0007E0:
    if !(> self.bodypart 0s) goto 0x000A4C
0x0007F4:
    self.deleteafter = 1s
    if !(== self.bodypart 2s) goto 0x000874
0x000814:
    stog.msg[0s] = "\\E3I SEE^1. I SEE./"
    stog.msg[1s] = "\\E0YOU LIKE CARESSING&MY BICEPS WITH A&FLOATING HEART./"
    stog.msg[2s] = "\\E1BUT WHO DOESN'T!?/%%"
    stog.msg[3s] = "\\E0TRY AGAIN!/%%"
0x000874:
    if !(== self.bodypart 1s) goto 0x0008E8
0x000888:
    stog.msg[0s] = "\\E0THIS SHIRT DIDN'T&ORIGINALLY SAY&'COOL^1,' BUT I&IMPROVED IT./"
    stog.msg[1s] = "EXPERT TIP^1: ALL&CLOTHING ARTICLES&CAN BE IMPROVED&THIS WAY./%%"
    stog.msg[2s] = "\\E1BUT THAT'S NOT A&SECRET!!!/"
    stog.msg[3s] = "IT'S JUST GOOD&ADVICE!!!/%%"
0x0008E8:
    if !(== self.bodypart 3s) goto 0x00092C
0x0008FC:
    stog.msg[0s] = "\\E2HOLDING MY HAND&SO I'LL TELL&YOU THE ANSWER.../"
    stog.msg[1s] = "\\E7NO!!^1!&I MUST RESIST!!/%%"
0x00092C:
    if !(== self.bodypart 4s) goto 0x000970
0x000940:
    stog.msg[0s] = "\\E0THERE'S NO SECRET&TO MY LEGS./"
    stog.msg[1s] = "JUST HARD WORK&AND PERSEVERANCE.../%%"
0x000970:
    if !(== self.bodypart 5s) goto 0x0009CC
0x000984:
    stog.msg[0s] = "\\E3HUMAN SOULS ARE&STRONGER THAN&MONSTER SOULS.../"
    stog.msg[1s] = "\\E0BUT THE SOLES OF&OUR SHOES ON THE&OTHER HAND...!/"
    stog.msg[2s] = "\\E3... ARE ABOUT THE&SAME./%%"
0x0009CC:
    if !(== self.bodypart 6s) goto 0x0009F8
0x0009E0:
    stog.msg[0s] = "HAT DIALOGUE./%%"
0x0009F8:
    if !(< self.bodypart 6s) goto 0x000A20
0x000A0C:
    call (event_user[]:int32 (var 1s))
0x000A20:
    if !(== self.bodypart 6s) goto 0x000A4C
0x000A34:
    [obj_papdate].cn = 47s
    call (instance_destroy[]:int32 )
0x000A4C:
    exit
