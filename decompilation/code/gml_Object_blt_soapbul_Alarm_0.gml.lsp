0x000000:
    self.my = (instance_create[]:int32 (var 667s) (+ self.y 16s) (+ self.x 12s))
    push (- self.dmg 2s)
    stog.dmg* = (int32 self.my)
    stog.alarm[0s] = 7s
    if !(== self.offset 1s) goto 0x0000A4
0x000084:
    self.speed = 5s
    stog.alarm[0s] = 10s
0x0000A4:
    exit
