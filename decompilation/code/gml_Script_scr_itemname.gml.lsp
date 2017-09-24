0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x000068
0x000020:
    push -5s
    self.itemid = (int32 self.i):item
    call (scr_itemnamelist[]:int32 )
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000068:
    exit
