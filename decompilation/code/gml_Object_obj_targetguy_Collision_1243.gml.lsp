0x000000:
    self.defeat = 1s
    call (snd_play[]:int32 (var 31s))
    pushenv -2s 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    if !(bool (instance_exists[]:int32 (var 1244s))) goto 0x00007C
0x000050:
    [obj_shootguy].buffer = 60s
    [obj_shootguy].win = 1s
    push 30s
    push 1244s
    stog.alarm[] = 2s
0x00007C:
    exit
