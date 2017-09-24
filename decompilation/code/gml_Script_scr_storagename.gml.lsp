0x000000:
    self.i = self.argument0
    if !(< self.i (+ self.argument0 11s)) goto 0x000078
0x000030:
    stog.itemname[(int32 (- self.i self.argument0))] = " "
    self.i = (+ self.i 1s)
    goto 0x000010
0x000078:
    self.i = 0s
    if !(< self.i 11s) goto 0x0000EC
0x000098:
    push -5s
    self.itemid = (int32 (+ self.argument0 self.i)):flag
    call (scr_itemnamelist[]:int32 )
    self.i = (+ self.i 1s)
    goto 0x000084
0x0000EC:
    exit
