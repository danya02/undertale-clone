0x000000:
    pushenv 1585s 0x000034
0x000008:
    if !(< self.megadamage 4s) goto 0x000034
0x00001C:
    self.megadamage = (+ self.megadamage 1s)
0x000034:
    popenv 0x000008
0x000038:
    stog.alarm[7s] = 900s
0x00004C:
    exit
