0x000000:
    if !(== self.visible 1s) goto 0x000028
0x000014:
    push (== self.shot 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000A8
0x000030:
    self.playdo = 1s
    self.myloop = (audio_play_sound[]:int32 (var 1s) (var 40s) (var 127s))
    pushenv -2s 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    self.shot = 1s
    self.nowx = self.x
    self.nowy = self.y
0x0000A8:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0000D8
0x0000C0:
    global.ratings = (+ global.ratings 15s)
0x0000D8:
    exit
