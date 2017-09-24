0x000000:
    if !(bool (instance_exists[]:int32 (var 995s))) goto 0x000044
0x000018:
    if !(== 995.onhead 1s) goto 0x000044
0x00002C:
    self.hat = 1s
    self.solid = 1s
0x000044:
    if !(== self.shocking 1s) goto 0x00006C
0x000058:
    push (== self.hat 1s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x0000D4
0x000074:
    global.interact = 1s
    self.shocking = 2s
    call (snd_play[]:int32 (var 24s))
    stog.alarm[0s] = 15s
    self.memoryx = 1570.xprevious
    self.memoryy = 1570.yprevious
0x0000D4:
    if !(== self.shocking 1s) goto 0x0000FC
0x0000E8:
    push (== self.hat 0s)
    goto 0x000100
0x0000FC:
    push 0s
0x000100:
    if !pop goto 0x000124
0x000104:
    [obj_mainchara].x = 1570.xprevious
    [obj_mainchara].y = 1570.yprevious
0x000124:
    if !(== self.shocking 2s) goto 0x00014C
0x000138:
    push (== self.hat 1s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x0001DC
0x000154:
    self.ggg = (- (floor[]:int32 (random[]:int32 (var 5s))) 2s)
    [obj_mainchara].x = (+ self.memoryx self.ggg)
    self.ggg = (- (floor[]:int32 (random[]:int32 (var 5s))) 2s)
    [obj_mainchara].y = (+ self.memoryy self.ggg)
0x0001DC:
    exit
