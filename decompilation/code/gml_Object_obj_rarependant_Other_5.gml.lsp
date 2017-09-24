0x000000:
    push -5s
    if !(== 107s:flag 2s) goto 0x0000AC
0x00001C:
    self.i = 0s
    if !(< self.i 8s) goto 0x000098
0x00003C:
    push -5s
    if !(== (int32 self.i):item 27s) goto 0x00007C
0x000060:
    call (scr_itemshift[]:int32 (var 0s) self.i)
0x00007C:
    self.i = (+ self.i 1s)
    goto 0x000028
0x000098:
    stog.flag[107s] = 0s
0x0000AC:
    call (caster_free[]:int32 self.dogsong)
0x0000C0:
    exit
