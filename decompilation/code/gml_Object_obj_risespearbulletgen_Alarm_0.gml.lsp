0x000000:
    if !(> global.turntimer 8s) goto 0x000104
0x000014:
    self.xset = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(== self.xset self.xsetmem) goto 0x000064
0x00004C:
    self.xset = (+ self.xset 1s)
0x000064:
    if !(== self.xset 3s) goto 0x000084
0x000078:
    self.xset = 0s
0x000084:
    self.xsetmem = self.xset
    self.g = (instance_create[]:int32 (var 268s) 761.y (+ 758.x (* self.xset 23s)))
    push self.offchoice
    stog.type* = (int32 self.g)
    stog.alarm[0s] = global.firingrate
0x000104:
    exit
