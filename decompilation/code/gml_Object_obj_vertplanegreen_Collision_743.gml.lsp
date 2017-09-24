0x000000:
    stog.graze* = (+ (int32 self.parent):graze 1s)
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x00007C
0x00004C:
    push (int32 self.parent)
    stog.graze* = (+ (int32 self.parent):graze 0.5d)
0x00007C:
    push (int32 self.parent)
    if !(< (int32 self.parent):graze 4s) goto 0x0000B0
0x00009C:
    call (snd_play[]:int32 (var 28s))
0x0000B0:
    if !(> (int32 self.parent):graze 3s) goto 0x0000E8
0x0000D0:
    push 30s
    stog.mercymod* = (int32 self.parent)
0x0000E8:
    if !(>= (int32 self.parent):graze 4s) goto 0x00015C
0x000108:
    push 100s
    stog.mercymod* = (int32 self.parent)
    stog.monsterdef[(int32 (int32 self.parent):myself)] = -99s
    call (snd_play[]:int32 (var 26s))
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    exit
