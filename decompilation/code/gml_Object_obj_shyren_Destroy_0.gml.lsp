0x000000:
    if !(> self.mercymod 10s) goto 0x00004C
0x000014:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000078
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 30s)] = 3s
0x000078:
    if !(== self.killed 0s) goto 0x0000A0
0x00008C:
    stog.flag[27s] = 1s
0x0000A0:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    popenv 0x0000E4
0x0000F4:
    if !(== self.killed 0s) goto 0x00012C
0x000108:
    push 0.5d
    stog.image_alpha* = (int32 self.agent)
    goto 0x000158
0x00012C:
    push 1s
    stog.image_index* = (int32 self.agent)
    stog.flag[81s] = 1s
0x000158:
    self.i = 0s
    if (<= 5s 0) goto 0x0001D0
0x00017C:
    push 5s
    push -1s
    call (caster_free[]:int32 (int32 self.i):note)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00017C
0x0001D0:
    push (- pop 1)
    pop
    push -1s
    call (caster_free[]:int32 0s:longnote)
    push -1s
    call (caster_free[]:int32 1s:longnote)
    push -1s
    call (caster_free[]:int32 0s:badnote)
    push -1s
    call (caster_free[]:int32 1s:badnote)
    push -1s
    call (caster_free[]:int32 2s:badnote)
0x000260:
    exit
