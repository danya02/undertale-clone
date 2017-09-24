0x000000:
    if !(== self.myinteract 1s) goto 0x000210
0x000014:
    if !(== 1414.level 0s) goto 0x000058
0x000028:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
    goto 0x000210
0x000058:
    self.x = (- self.x 400s)
    self.myinteract = 0s
    pushenv 1570s 0x0001F4
0x000084:
    if !(== global.facing 2s) goto 0x0001F4
0x000098:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 5s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))) goto 0x0001F4
0x000118:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 8s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x0001F4
0x0001AC:
    pushenv (int32 self.interactedobject) 0x0001C8
0x0001BC:
    self.facing = 0s
0x0001C8:
    popenv 0x0001BC
0x0001CC:
    pushenv (int32 self.interactedobject) 0x0001F0
0x0001DC:
    call (script_execute[]:int32 (var 111s))
0x0001F0:
    popenv 0x0001DC
0x0001F4:
    popenv 0x000084
0x0001F8:
    self.x = (+ self.x 400s)
0x000210:
    if !(== self.myinteract 3s) goto 0x000238
0x000224:
    push (== self.conversation 0s)
    goto 0x00023C
0x000238:
    push 0s
0x00023C:
    if !pop goto 0x000274
0x000240:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x000274
0x00025C:
    global.interact = 0s
    self.myinteract = 0s
0x000274:
    if !(== self.conversation 1s) goto 0x0002A4
0x000288:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x0002EC
0x0002AC:
    self.pap = 1025s
    call (caster_pause[]:int32 global.currentsong)
    stog.alarm[2s] = 10s
    self.conversation = 2s
0x0002EC:
    if !(== self.conversation 3s) goto 0x0003FC
0x000300:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 437s))
    self.image_index = 1s
    self.thedog = (instance_create[]:int32 (var 1363s) (- 1570.y 20s) (+ self.x 4s))
    push 1s
    stog.visible* = (int32 self.thedog)
    push 80s
    stog.sprite_index* = (int32 self.thedog)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.thedog)
    push 0.25d
    stog.image_speed* = (int32 self.thedog)
    self.conversation = 4s
    stog.alarm[2s] = 30s
0x0003FC:
    if !(== self.conversation 5s) goto 0x000468
0x000410:
    self.dogvolume = 1s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.dogsong)
    self.conversation = 5.1d
    stog.alarm[2s] = 30s
0x000468:
    if !(== self.conversation 6.1d) goto 0x0004F0
0x000484:
    call (snd_play[]:int32 (var 29s))
    self.blcon = (instance_create[]:int32 (var 1337s) (- 1025.y 12s) (+ 1025.x 5s))
    self.conversation = 6s
    stog.alarm[2s] = 30s
0x0004F0:
    if !(== self.conversation 7s) goto 0x000568
0x000504:
    pushenv (int32 self.blcon) 0x000520
0x000514:
    call (instance_destroy[]:int32 )
0x000520:
    popenv 0x000514
0x000524:
    global.faceemotion = 1s
    global.facechoice = 4s
    global.msc = 0s
    stog.alarm[2s] = 15s
    self.conversation = 8s
0x000568:
    if !(== self.conversation 9s) goto 0x0005DC
0x00057C:
    push 82s
    stog.sprite_index* = (int32 self.thedog)
    stog.msg[0s] = "WHAT!?!?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 10s
0x0005DC:
    if !(== self.conversation 10s) goto 0x00060C
0x0005F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x0006C0
0x000614:
    push 84s
    stog.sprite_index* = (int32 self.thedog)
    push 10000s
    stog.depth* = (int32 self.thedog)
    push 5s
    stog.vspeed* = (int32 self.thedog)
    stog.msg[0s] = "CATCH THAT&MEDDLING CANINE!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 9.5d
    stog.alarm[2s] = 20s
0x0006C0:
    if !(== self.conversation 10.5d) goto 0x000734
0x0006DC:
    push 0s
    stog.vspeed* = (int32 self.thedog)
    push 0s
    stog.image_speed* = (int32 self.thedog)
    self.conversation = 10.6d
    stog.alarm[2s] = 20s
0x000734:
    if !(== self.conversation 11.6d) goto 0x00076C
0x000750:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000770
0x00076C:
    push 0s
0x000770:
    if !pop goto 0x000894
0x000774:
    push 4s
    stog.vspeed* = (int32 self.thedog)
    push 1s
    stog.hspeed* = (int32 self.thedog)
    push 0.25d
    stog.image_speed* = (int32 self.thedog)
    [obj_mainchara].facing = 0s
    global.facing = 0s
    [obj_mainchara].vspeed = 3s
    [obj_mainchara].image_speed = 0.2d
    self.dogvolume = (- self.dogvolume 0.04d)
    if !(< self.dogvolume 0.04d) goto 0x000844
0x000838:
    self.dogvolume = 0s
0x000844:
    call (caster_set_volume[]:int32 self.dogvolume self.dogsong)
    if !(== self.dogvolume 0s) goto 0x000894
0x000874:
    self.conversation = 12s
    call (caster_free[]:int32 self.dogsong)
0x000894:
    if !(== self.conversation 12s) goto 0x0008E8
0x0008A8:
    [obj_mainchara].vspeed = 0s
    [obj_mainchara].image_speed = 0s
    self.conversation = 12.1d
    stog.alarm[2s] = 15s
0x0008E8:
    if !(== self.conversation 13.1d) goto 0x000968
0x000904:
    stog.msg[0s] = "CURSES!!!/%%"
    self.tt = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.tt)
    self.conversation = 14s
0x000968:
    if !(== self.conversation 14s) goto 0x000998
0x00097C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00099C
0x000998:
    push 0s
0x00099C:
    if !pop goto 0x0009FC
0x0009A0:
    [obj_sansdoor].image_index = 1s
    call (caster_play[]:int32 (var 1s) (var 1s) (var 437s))
    [obj_sansdoor].sans = 1s
    stog.alarm[2s] = 80s
    self.conversation = 15s
0x0009FC:
    if !(== self.conversation 16s) goto 0x000A60
0x000A10:
    [obj_sansdoor].image_index = 0s
    call (caster_play[]:int32 (var 1s) (var 1s) (var 436s))
    self.conversation = 17s
    stog.alarm[2s] = 30s
0x000A60:
    if !(== self.conversation 18s) goto 0x000B10
0x000A74:
    call (caster_resume[]:int32 global.currentsong)
    global.faceemotion = 1s
    stog.msg[0s] = "SANS!/"
    stog.msg[1s] = "STOP PLAGUING MY&LIFE WITH INCIDENTAL&MUSIC!!!/%%"
    self.tt = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.tt)
    self.conversation = 19s
0x000B10:
    if !(== self.conversation 19s) goto 0x000B40
0x000B24:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B44
0x000B40:
    push 0s
0x000B44:
    if !pop goto 0x000B80
0x000B48:
    self.conversation = 0s
    self.myinteract = 0s
    stog.flag[82s] = 1s
    global.interact = 0s
0x000B80:
    exit
