0x000000:
    pushenv 1586s 0x00001C
0x000008:
    call (event_user[]:int32 (var 5s))
0x00001C:
    popenv 0x000008
0x000020:
    pushenv 1581s 0x00003C
0x000028:
    call (event_user[]:int32 (var 5s))
0x00003C:
    popenv 0x000028
0x000040:
    pushenv 1638s 0x00005C
0x000048:
    call (event_user[]:int32 (var 5s))
0x00005C:
    popenv 0x000048
0x000060:
    pushenv 1637s 0x00007C
0x000068:
    call (event_user[]:int32 (var 5s))
0x00007C:
    popenv 0x000068
0x000080:
    pushenv 1636s 0x00009C
0x000088:
    call (event_user[]:int32 (var 5s))
0x00009C:
    popenv 0x000088
0x0000A0:
    pushenv 1581s 0x0000BC
0x0000A8:
    call (event_user[]:int32 (var 5s))
0x0000BC:
    popenv 0x0000A8
0x0000C0:
    global.my_hp = self.save_hp
    global.my_inv = self.save_inv
    self.savetimer = -1s
    self.loadtimer = 20s
    self.fileset = 2s
    if !(== self.mustype 3s) goto 0x000214
0x000118:
    self.mused = 0s
    if !(bool (caster_is_playing[]:int32 self.mus_repeat1)) goto 0x000150
0x00013C:
    push (== self.mused 0s)
    goto 0x000154
0x000150:
    push 0s
0x000154:
    if !pop goto 0x00019C
0x000158:
    self.mused = 1s
    call (caster_stop[]:int32 self.mus_repeat1)
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_repeat2)
0x00019C:
    if !(bool (caster_is_playing[]:int32 self.mus_repeat2)) goto 0x0001C8
0x0001B4:
    push (== self.mused 0s)
    goto 0x0001CC
0x0001C8:
    push 0s
0x0001CC:
    if !pop goto 0x000214
0x0001D0:
    self.mused = 1s
    call (caster_stop[]:int32 self.mus_repeat2)
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_repeat1)
0x000214:
    exit
