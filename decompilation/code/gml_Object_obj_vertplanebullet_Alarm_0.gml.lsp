0x000000:
    if !(> self.y (- 759.y 10s)) goto 0x0000F8
0x000020:
    if !(== self.off 0s) goto 0x000044
0x000034:
    self.off = 1s
    goto 0x000050
0x000044:
    self.off = 0s
0x000050:
    if !(== self.green 1s) goto 0x000070
0x000064:
    self.off = 2s
0x000070:
    self.bl = (instance_create[]:int32 (var 319s) (+ self.y 10s) (+ self.x 20s))
    if !(bool (instance_exists[]:int32 self.bl)) goto 0x0000F8
0x0000C0:
    push self.dmg
    stog.dmg* = (int32 self.bl)
    push self.off
    stog.off* = (int32 self.bl)
0x0000F8:
    stog.alarm[0s] = 6s
    if !(== self.green 1s) goto 0x000134
0x000120:
    stog.alarm[0s] = 10s
0x000134:
    if !(> self.pop 1s) goto 0x000174
0x000148:
    push -1s
    stog.alarm[(* 0s:alarm 1.5d)] = 0s
0x000174:
    exit
