0x000000:
    if !(== self.go 1s) goto 0x00005C
0x000014:
    if !(!= global.interact 5s) goto 0x000050
0x000028:
    [obj_mainchara].x = self.xfer
    [obj_mainchara].x = (+ 1570.x 3s)
0x000050:
    self.go = 0s
0x00005C:
    exit
