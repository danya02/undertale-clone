0x000000:
    if !(> self.speed 10s) goto 0x0000FC
0x000014:
    call (snd_stop[]:int32 (var 53s))
    call (snd_stop[]:int32 (var 21s))
    if !(== self.slam_pain 1s) goto 0x00007C
0x000050:
    if !(> global.hp 1s) goto 0x00007C
0x000064:
    global.hp = (- global.hp 1s)
0x00007C:
    call (snd_play[]:int32 (var 53s))
    call (snd_play[]:int32 (var 21s))
    self.s_s = (instance_create[]:int32 (var 512s) (var 0s) (var 0s))
    push (floor[]:int32 (/ self.speed (double 3s)))
    stog.intensity* = (int32 self.s_s)
0x0000FC:
    exit
