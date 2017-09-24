0x000000:
    if !(== self.con 0s) goto 0x00003C
0x000014:
    self.con = 0.1d
    stog.alarm[4s] = 30s
0x00003C:
    if !(== self.con 1.1d) goto 0x00023C
0x000058:
    [obj_mettb_body].myblend = 0s
    [obj_mettb_body].myalpha = 0s
    [obj_mettb_body].sineron = 0s
    self.n = (instance_create[]:int32 (var 1363s) (var -100s) (var 10s))
    push 1s
    stog.visible* = (int32 self.n)
    push 555s
    stog.sprite_index* = (int32 self.n)
    push 2s
    stog.image_xscale* = (int32 self.n)
    push 2s
    stog.image_yscale* = (int32 self.n)
    push 0s
    stog.image_speed* = (int32 self.n)
    push 2s
    stog.vspeed* = (int32 self.n)
    self.n2 = (instance_create[]:int32 (var 1363s) (var -100s) (var 630s))
    push 1s
    stog.visible* = (int32 self.n2)
    push 555s
    stog.sprite_index* = (int32 self.n2)
    push -2s
    stog.image_xscale* = (int32 self.n2)
    push 2s
    stog.image_yscale* = (int32 self.n2)
    push 0s
    stog.image_speed* = (int32 self.n2)
    push 2s
    stog.vspeed* = (int32 self.n2)
    push 11s
    stog.depth* = (int32 self.n)
    push 11s
    stog.depth* = (int32 self.n2)
    self.con = 1s
    stog.alarm[4s] = 50s
0x00023C:
    if !(== self.con 2s) goto 0x0002B4
0x000250:
    call (snd_play[]:int32 (var 106s))
    push 0s
    stog.vspeed* = (int32 self.n)
    push 0s
    stog.vspeed* = (int32 self.n2)
    self.con = 3s
    stog.alarm[4s] = 30s
0x0002B4:
    if !(== self.con 4s) goto 0x000344
0x0002C8:
    call (snd_play[]:int32 (var 106s))
    push 1s
    stog.image_index* = (int32 self.n)
    push 1s
    stog.image_index* = (int32 self.n2)
    self.cloud = 1s
    self.con = 5s
    stog.alarm[4s] = 60s
    self.alpha = 0s
0x000344:
    if !(== self.cloud 1s) goto 0x000414
0x000358:
    self.cltimer = (- self.cltimer 1s)
    if !(< self.cltimer 1s) goto 0x000414
0x000384:
    self.ccc = (instance_create[]:int32 (var 404s) (var 0s) (var 160s))
    if !(== self.otr 0s) goto 0x0003FC
0x0003C0:
    self.otr = 1s
    push (- (int32 self.ccc):hspeed)
    stog.hspeed* = (int32 self.ccc)
    goto 0x000408
0x0003FC:
    self.otr = 0s
0x000408:
    self.cltimer = 9s
0x000414:
    if !(== self.con 6s) goto 0x0004B0
0x000428:
    if !(== 408.myalpha 0s) goto 0x000470
0x00043C:
    call (caster_loop[]:int32 (var 0.85d) (var 0.7d) self.presong)
0x000470:
    [obj_mettb_body].myalpha = (+ 408.myalpha 0.015d)
    if !(>= 408.myalpha 1s) goto 0x0004B0
0x0004A4:
    self.con = 7s
0x0004B0:
    if !(== self.con 7s) goto 0x000628
0x0004C4:
    global.msc = 0s
    global.typer = 51s
    stog.msg[0s] = "Ohhhh my./"
    stog.msg[1s] = "If you flipped my&switch, that can&only mean one&thing./"
    stog.msg[2s] = "You're desperate&for the premiere&of my new body./"
    stog.msg[3s] = "How rude.../"
    stog.msg[4s] = "Lucky for you,&I've been aching&to show this off&for a long time./"
    stog.msg[5s] = "So..^1. as thanks^1,&I'll give you a&handsome reward./"
    stog.msg[6s] = "I'll make your&last living&moments.../%%"
    call (scr_blcon[]:int32 (var 4s) (var 250s) (var 220s))
    push -6000s
    stog.depth* = (int32 self.blcon)
    push -6001s
    stog.depth* = (int32 self.writer)
    stog.y* = (+ (int32 self.blcon):y 20s)
    self.con = 7.1d
    self.vol = 0.7d
0x000628:
    push (int32 self.blcon)
    if !(== self.con 7.1d) goto 0x000660
0x000644:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000664
0x000660:
    push 0s
0x000664:
    if !pop goto 0x0006CC
0x000668:
    if !(> 782.stringno 6s) goto 0x0006CC
0x00067C:
    if !(> self.vol 0s) goto 0x0006B0
0x000690:
    self.vol = (- self.vol 0.01d)
0x0006B0:
    call (caster_set_volume[]:int32 self.vol self.presong)
0x0006CC:
    if !(== self.con 7.1d) goto 0x000704
0x0006E8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000708
0x000704:
    push 0s
0x000708:
    if !pop goto 0x000730
0x00070C:
    self.flasher = 1s
    self.flashamt = 0s
    self.con = 8s
0x000730:
    if !(== self.con 9s) goto 0x000764
0x000744:
    self.con = 10s
    stog.alarm[4s] = 20s
0x000764:
    if !(== self.con 11s) goto 0x0007C8
0x000778:
    stog.msg[0s] = "ABSOLUTELY beautiful!/%%"
    call (scr_blcon[]:int32 (var 1s) (var 60s) (- 408.x 260s))
    self.con = 12s
0x0007C8:
    if !(== self.con 12s) goto 0x0007F8
0x0007DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007FC
0x0007F8:
    push 0s
0x0007FC:
    if !pop goto 0x000930
0x000800:
    stog.monster[0s] = 0s
    stog.monster[1s] = 0s
    stog.monsterinstance[0s] = 0s
    pushenv 299s 0x000850
0x000844:
    call (instance_destroy[]:int32 )
0x000850:
    popenv 0x000844
0x000854:
    stog.monstertype[0s] = 51s
    global.msc = 0s
    [obj_mettb_body].depth = 10s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 403s) (var 60s) (var 210s))
    stog.msg[0s] = "* Mettaton EX makes his premiere!"
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.batmusic)
    global.mnfight = 3s
    global.myfight = -1s
    global.bmenuno = 0s
    self.con = 13s
    call (instance_destroy[]:int32 )
0x000930:
    exit
