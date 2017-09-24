0x000000:
    if !(== self.active 1s) goto 0x000344
0x000014:
    push self.x
    if !(< -5s (+ 0s:idealborder 10s)) goto 0x0000E0
0x00003C:
    self.active = 0s
    self.side = 1s
    push -5s
    self.x = (+ 0s:idealborder 20s)
    self.gravity = 0s
    self.speed = 0s
    self.sprite_index = 473s
    self.image_angle = -90s
    stog.alarm[0s] = 10s
    if !(== self.lazy 1s) goto 0x0000E0
0x0000CC:
    stog.alarm[0s] = 20s
0x0000E0:
    push self.y
    if !(< -5s (+ 2s:idealborder 10s)) goto 0x0001AC
0x000108:
    self.active = 0s
    self.side = 2s
    push -5s
    self.y = (+ 2s:idealborder 20s)
    self.gravity = 0s
    self.speed = 0s
    self.sprite_index = 473s
    self.image_angle = 180s
    stog.alarm[0s] = 10s
    if !(== self.lazy 1s) goto 0x0001AC
0x000198:
    stog.alarm[0s] = 20s
0x0001AC:
    push self.x
    if !(> -5s (- 1s:idealborder 10s)) goto 0x000278
0x0001D4:
    self.active = 0s
    self.side = 3s
    push -5s
    self.x = (- 1s:idealborder 20s)
    self.gravity = 0s
    self.speed = 0s
    self.sprite_index = 473s
    self.image_angle = 90s
    stog.alarm[0s] = 10s
    if !(== self.lazy 1s) goto 0x000278
0x000264:
    stog.alarm[0s] = 20s
0x000278:
    push self.y
    if !(> -5s (- 3s:idealborder 10s)) goto 0x000344
0x0002A0:
    self.active = 0s
    self.side = 0s
    push -5s
    self.y = (- 3s:idealborder 20s)
    self.gravity = 0s
    self.speed = 0s
    self.sprite_index = 473s
    self.image_angle = 0s
    stog.alarm[0s] = 10s
    if !(== self.lazy 1s) goto 0x000344
0x000330:
    stog.alarm[0s] = 20s
0x000344:
    exit
