0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.buffer = (- self.buffer 1s)
    if !(== self.myinteract 1s) goto 0x000074
0x000060:
    push (>= self.buffer 0s)
    goto 0x000078
0x000074:
    push 0s
0x000078:
    if !pop goto 0x000088
0x00007C:
    self.myinteract = 0s
0x000088:
    if !(== self.con 0s) goto 0x0000D8
0x00009C:
    if !(== self.myinteract 1s) goto 0x0000D8
0x0000B0:
    if !(== global.interact 0s) goto 0x0000D8
0x0000C4:
    push (< self.buffer 0s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x000124
0x0000E0:
    call (caster_pause[]:int32 global.currentsong)
    self.con = 1s
    global.interact = 1s
    self.sprite_index = 980s
    self.image_index = 0s
0x000124:
    if !(== self.con 1s) goto 0x000208
0x000138:
    self.image_index = (+ self.image_index 0.25d)
    if !(>= self.image_index 4s) goto 0x000208
0x00016C:
    stog.msg[0s] = "* Mushroom danc^2e&* Mushroom danc^2e&* Whatever could it mean/%%"
    call (scr_regulartext[]:int32 )
    self.con = 2s
    call (caster_loop[]:int32 (var 1s) (var 1s) (var 133s))
    self.remx = self.x
    self.siner = 0s
    self.image_index = 0s
    self.image_speed = 0.2d
    self.sprite_index = 979s
0x000208:
    if !(== self.con 2s) goto 0x00026C
0x00021C:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.remx (* (sin[]:int32 (/ self.siner (double 6s))) 2s))
0x00026C:
    if !(== self.con 9s) goto 0x0003E0
0x000280:
    stog.msg[0s] = "* It symbolizes my inner&  pain./%%"
    stog.msg[0s] = "* It symbolizes my inner&  torment^1, trapped here&  by my hyphae./"
    stog.msg[1s] = "* My struggle to pull away^1.&* My struggle to escape^1.&* But alas^1, to no avail./%%"
    if !(> self.talkedto 0s) goto 0x00030C
0x0002DC:
    stog.msg[0s] = "* If only I could see the&  world above./"
    stog.msg[1s] = "* But even if the barrier&  was open^1, how would I&  leave...?/%%"
0x00030C:
    if !(> global.kills 0s) goto 0x000364
0x000320:
    stog.msg[0s] = "* It means you've lived a&  life of sin./%%"
    if !(> self.talkedto 0s) goto 0x000364
0x00034C:
    stog.msg[0s] = "* It means..^1.&* Don't talk to me./%%"
0x000364:
    push -5s
    if !(== 7s:flag 1s) goto 0x0003C8
0x000380:
    stog.msg[0s] = "* It symbolizes my unbridled&  happiness./"
    stog.msg[1s] = "* The government told me&  they are willing to&  transplant me outside!/"
    stog.msg[2s] = "* Why didn't you smile at my&  dance^1? It almost feels&  a little rude.../%%"
0x0003C8:
    call (scr_regulartext[]:int32 )
    self.con = 10s
0x0003E0:
    if !(== self.con 7s) goto 0x000420
0x0003F4:
    self.image_index = 2s
    self.con = 8s
    stog.alarm[4s] = 40s
0x000420:
    if !(== self.con 5s) goto 0x000460
0x000434:
    self.image_index = 1s
    self.con = 6s
    stog.alarm[4s] = 1s
0x000460:
    if !(== self.con 2s) goto 0x000490
0x000474:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000494
0x000490:
    push 0s
0x000494:
    if !pop goto 0x0005A8
0x000498:
    call (caster_stop[]:int32 (var 133s))
    self.image_index = 0s
    self.image_speed = 0s
    if !(< self.x self.remx) goto 0x0004F4
0x0004DC:
    self.x = (+ self.x 1s)
0x0004F4:
    if !(> self.x self.remx) goto 0x000524
0x00050C:
    self.x = (- self.x 1s)
0x000524:
    if !(< (abs[]:int32 (- self.x self.remx)) 1.5d) goto 0x0005A8
0x000554:
    self.image_speed = 0s
    self.x = self.remx
    self.sprite_index = 978s
    self.image_index = 0s
    self.con = 4s
    stog.alarm[4s] = 40s
0x0005A8:
    if !(== self.con 10s) goto 0x0005D8
0x0005BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005DC
0x0005D8:
    push 0s
0x0005DC:
    if !pop goto 0x000654
0x0005E0:
    self.talkedto = (+ self.talkedto 1s)
    self.sprite_index = 980s
    self.image_index = 0s
    self.con = 0s
    global.interact = 0s
    self.myinteract = 0s
    self.buffer = 5s
    call (caster_resume[]:int32 global.currentsong)
0x000654:
    exit
