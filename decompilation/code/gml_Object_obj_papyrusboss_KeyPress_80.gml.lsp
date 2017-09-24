0x000000:
    if !(== global.debug 1s) goto 0x00002C
0x000014:
    self.fighto = (+ self.fighto 1s)
0x00002C:
    exit
