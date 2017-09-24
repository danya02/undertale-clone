0x000000:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0000B4
0x00001C:
    [obj_papyrusboss].truefight = 1s
    pushenv (int32 self.blcon) 0x000044
0x000038:
    call (instance_destroy[]:int32 )
0x000044:
    popenv 0x000038
0x000048:
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.batmusic)
    global.turntimer = 2s
    call (instance_destroy[]:int32 )
    stog.msg[0s] = "* You're blue now."
    [obj_papyrusboss].dontcancel = 0s
    exit
0x0000B4:
    stog.alarm[6s] = 2s
0x0000C8:
    exit
