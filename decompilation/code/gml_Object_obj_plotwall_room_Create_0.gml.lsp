0x000000:
    self.phase = 0s
    self.plotrating = 0s
    self.scale = 1s
    if !(== self.room 24s) goto 0x000044
0x000038:
    self.plotrating = 13s
0x000044:
    if !(== self.room 25s) goto 0x000070
0x000058:
    self.plotrating = 14s
    self.scale = 0s
0x000070:
    if !(== self.room 26s) goto 0x000090
0x000084:
    self.plotrating = 15s
0x000090:
    if !(== self.room 57s) goto 0x0000B0
0x0000A4:
    self.plotrating = 48s
0x0000B0:
    if !(== self.room 58s) goto 0x0000D0
0x0000C4:
    self.plotrating = 52s
0x0000D0:
    if !(== self.room 59s) goto 0x0000F0
0x0000E4:
    self.plotrating = 55s
0x0000F0:
    if !(== self.scale 1s) goto 0x000110
0x000104:
    self.image_yscale = 400s
0x000110:
    if !(== self.scale 0s) goto 0x000130
0x000124:
    self.image_xscale = 400s
0x000130:
    if !(> global.plot self.plotrating) goto 0x000154
0x000148:
    call (instance_destroy[]:int32 )
0x000154:
    exit
