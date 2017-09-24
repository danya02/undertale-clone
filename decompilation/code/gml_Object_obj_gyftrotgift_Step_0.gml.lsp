0x000000:
    if !(== self.active 1s) goto 0x0000CC
0x000014:
    if !(bool (instance_exists[]:int32 (var 236s))) goto 0x000068
0x00002C:
    if !(!= self.gift 1s) goto 0x000068
0x000040:
    if !(!= self.gift 7s) goto 0x000068
0x000054:
    push (!= self.gift 9s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x000094
0x000070:
    self.x = 236.x
    self.y = 236.y
    goto 0x0000CC
0x000094:
    if !(bool (instance_exists[]:int32 (var 235s))) goto 0x0000CC
0x0000AC:
    self.x = 235.x
    self.y = 235.y
0x0000CC:
    exit
