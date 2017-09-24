0x000000:
    call (snd_play[]:int32 (var 23s))
    global.interact = 1s
    self.open = 1s
    self.visible = 1s
    [obj_mainchara].cutscene = 1s
    pushenv (int32 (instance_position[]:int32 (var 4s) (+ self.y 20s) (+ self.x 10s))) 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    popenv 0x00007C
0x00008C:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
    global.interact = 1s
    stog.alarm[5s] = 30s
    self.myinteract = 0s
0x0000DC:
    exit
