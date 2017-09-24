0x000000:
    self.i = 0s
    if (<= 5s 0) goto 0x000078
0x000024:
    push 5s
    push -1s
    call (caster_free[]:int32 (int32 self.i):note)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000024
0x000078:
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
    if !(== self.killed 0s) goto 0x000130
0x00011C:
    stog.flag[27s] = 1s
0x000130:
    exit
