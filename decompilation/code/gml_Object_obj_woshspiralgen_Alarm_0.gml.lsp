0x000000:
    stog.alarm[0s] = self.rate
    self.m = (instance_create[]:int32 (var 665s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.m)) goto 0x0001E8
0x000058:
    push self.dmg
    stog.dmg* = (int32 self.m)
    if !(== self.sum 1s) goto 0x0000E8
0x000088:
    stog.speed* = (/ (int32 self.m):speed 1.1d)
    stog.friction* = (/ (int32 self.m):friction 1.25d)
0x0000E8:
    push (int32 self.m)
    push (int32 self.m)
    if !(== self.blue 1s) goto 0x00012C
0x0000FC:
    push 1s
    stog.image_index* = (int32 self.m)
    push 1s
    stog.blue* = (int32 self.m)
0x00012C:
    push self.direction
    stog.direction* = (int32 self.m)
    if !(== self.green 0s) goto 0x000170
0x00015C:
    push (== self.cleaner 1s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001E8
0x000178:
    push 2s
    stog.image_index* = (int32 self.m)
    push 3s
    stog.blue* = (int32 self.m)
    stog.friction* = (/ (int32 self.m):friction 3s)
    push 122s
    stog.sprite_index* = (int32 self.m)
0x0001E8:
    push (int32 self.m)
    self.green = (- self.green 1s)
    if !(< self.green 0s) goto 0x000254
0x000214:
    if !(> self.sum 1s) goto 0x000234
0x000228:
    self.green = 4s
0x000234:
    if !(== self.sum 1s) goto 0x000254
0x000248:
    self.green = 9s
0x000254:
    exit
