0x000000:
    self.i = 0s
    self.glowtotal = 0s
    if !(bool (instance_exists[]:int32 (instance_find[]:int32 self.i (var 1101s)))) goto 0x0000DC
0x000040:
    if !(bool (instance_exists[]:int32 (instance_find[]:int32 self.i (var 1101s)))) goto 0x0000C0
0x000068:
    self.q = (instance_find[]:int32 self.i (var 1101s))
    if !(== (int32 self.q):glow 0s) goto 0x0000C0
0x0000A8:
    self.glowtotal = (+ self.glowtotal 1s)
0x0000C0:
    self.i = (+ self.i 1s)
    goto 0x000018
0x0000DC:
    self.i = 1s
    if (<= 5s 0) goto 0x00018C
0x000100:
    push 5s
    if !(>= self.glowtotal self.i) goto 0x00013C
0x000118:
    call (tile_layer_show[]:int32 (+ 1000000 self.i))
    goto 0x00015C
0x00013C:
    call (tile_layer_hide[]:int32 (+ 1000000 self.i))
0x00015C:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000100
0x00018C:
    push (- pop 1)
    pop
    if !(>= self.glowtotal 4s) goto 0x0001C0
0x0001A4:
    push -5s
    push (== 270s:flag 0s)
    goto 0x0001C4
0x0001C0:
    push 0s
0x0001C4:
    if !pop goto 0x0001DC
0x0001C8:
    stog.flag[270s] = 1s
0x0001DC:
    exit
