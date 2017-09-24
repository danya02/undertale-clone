0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00009C
0x000038:
    global.interact = 1s
    self.conversation = 2s
    pushenv (int32 self.toriel) 0x00008C
0x000060:
    call (path_start[]:int32 (var 1s) (var 0s) (var 3s) (var 16s))
0x00008C:
    popenv 0x000060
0x000090:
    self.fademusicout = 1s
0x00009C:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000148
0x0000B4:
    if !(== self.conversation 2s) goto 0x0000DC
0x0000C8:
    push (== 861.path_position 1s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x000148
0x0000E4:
    push 1102s
    stog.sprite_index* = (int32 self.toriel)
    push 1s
    stog.phone* = (int32 self.toriel)
    call (snd_play[]:int32 (var 104s))
    stog.alarm[4s] = 30s
    self.conversation = 3s
0x000148:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x00037C
0x000160:
    if !(== self.conversation 4s) goto 0x000194
0x000174:
    push (== (int32 self.toriel):path_position 1s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x00037C
0x00019C:
    pushenv (int32 self.toriel) 0x0001B8
0x0001AC:
    call (path_end[]:int32 )
0x0001B8:
    popenv 0x0001AC
0x0001BC:
    self.conversation = 5s
    call (caster_pause[]:int32 global.currentsong)
    self.torielsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.86d) (var 0.7d) self.torielsong)
    stog.msg[0s] = "* How did you get&  here^1, my child^1?&* Are you hurt?/"
    if !(== global.hp global.maxhp) goto 0x000274
0x00025C:
    stog.msg[1s] = "* Not a scratch..^1.&*\\E0 Impressive^1!&*\\E1 But still.../"
0x000274:
    if !(< global.hp global.maxhp) goto 0x0002A4
0x00028C:
    stog.msg[1s] = "* There^1, there^1, I will&  heal you./"
0x0002A4:
    if !(< global.hp 4s) goto 0x0002D0
0x0002B8:
    stog.msg[1s] = "* Who did this to you^2?\\E5 &* You will get an apology./"
0x0002D0:
    stog.msg[2s] = "\\E1* I should not have&  left you alone&  for so long./"
    stog.msg[3s] = "* It was irresponsible&  to try to surprise&  you like this./"
    stog.msg[4s] = "\\E8* Err.../"
    stog.msg[5s] = "\\E0* Well^1, I suppose I&  cannot hide it&  any longer./"
    stog.msg[6s] = "* Come^1, small one!/%%"
    global.hp = global.maxhp
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00037C:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000450
0x000394:
    if !(== self.conversation 5s) goto 0x0003C4
0x0003A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003C8
0x0003C4:
    push 0s
0x0003C8:
    if !pop goto 0x000450
0x0003CC:
    self.conversation = 6s
    pushenv 861s 0x00040C
0x0003E0:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 19s))
0x00040C:
    popenv 0x0003E0
0x000410:
    call (caster_resume[]:int32 global.currentsong)
    self.fademusicout = 3s
    global.plot = 17s
    self.torvolume = 0.8d
0x000450:
    if !(== self.fademusicout 1s) goto 0x0004DC
0x000464:
    if !(> self.volume 0s) goto 0x000498
0x000478:
    self.volume = (- self.volume 0.02d)
0x000498:
    call (caster_set_volume[]:int32 self.volume global.currentsong)
    if !(< self.volume 0.02d) goto 0x0004DC
0x0004D0:
    self.fademusicout = 2s
0x0004DC:
    if !(== self.fademusicout 3s) goto 0x0005CC
0x0004F0:
    self.torvolume = (- self.torvolume 0.04d)
    if !(< self.volume 0.9d) goto 0x00054C
0x00052C:
    self.volume = (+ self.volume 0.06d)
0x00054C:
    call (caster_set_volume[]:int32 self.torvolume self.torielsong)
    call (caster_set_volume[]:int32 self.volume global.currentsong)
    if !(< self.torvolume 0.1d) goto 0x0005CC
0x0005A0:
    call (caster_free[]:int32 self.torielsong)
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0005CC:
    exit
