0x000000:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000140
0x000018:
    if !(== 782.stringno 3s) goto 0x000040
0x00002C:
    push (== self.con 1s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000068
0x000048:
    call (caster_pause[]:int32 global.batmusic)
    self.con = 2s
0x000068:
    if !(== self.con 2s) goto 0x000090
0x00007C:
    push (== 782.stringno 15s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x00013C
0x000098:
    call (caster_resume[]:int32 global.batmusic)
    self.con = 3s
    stog.flag[21s] = 0s
    pushenv 782s 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    popenv 0x0000D4
0x0000E4:
    stog.msg[0s] = "* You ate the Instant Noodles."
    call (script_execute[]:int32 (var 4s) (var 64s))
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
0x00013C:
    goto 0x00014C
0x000140:
    call (instance_destroy[]:int32 )
0x00014C:
    exit
