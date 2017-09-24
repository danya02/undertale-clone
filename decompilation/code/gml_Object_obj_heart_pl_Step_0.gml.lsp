0x000000:
    push self.x
    if !(> -5s 0s:idealborder) goto 0x000038
0x000020:
    push (bool (keyboard_check[]:int32 (var 37s)))
    goto 0x00003C
0x000038:
    push 0s
0x00003C:
    if !pop goto 0x000058
0x000040:
    self.x = (- self.x 4s)
0x000058:
    push self.x
    if !(< -5s (- 1s:idealborder 16s)) goto 0x000098
0x000080:
    push (bool (keyboard_check[]:int32 (var 39s)))
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000B8
0x0000A0:
    self.x = (+ self.x 4s)
0x0000B8:
    push self.y
    if !(> -5s 2s:idealborder) goto 0x0000F0
0x0000D8:
    push (bool (keyboard_check[]:int32 (var 38s)))
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x000110
0x0000F8:
    self.y = (- self.y 4s)
0x000110:
    push self.y
    if !(< -5s (- 3s:idealborder 16s)) goto 0x000150
0x000138:
    push (bool (keyboard_check[]:int32 (var 40s)))
    goto 0x000154
0x000150:
    push 0s
0x000154:
    if !pop goto 0x000170
0x000158:
    self.y = (+ self.y 4s)
0x000170:
    self.shot = 0s
    if (== (instance_exists[]:int32 (var 739s)) 0s) goto 0x0001AC
0x000198:
    push (< self.charge 0s)
    goto 0x0001B0
0x0001AC:
    push 1s
0x0001B0:
    if !pop goto 0x0001C0
0x0001B4:
    self.shot = 1s
0x0001C0:
    if !(bool (keyboard_check_pressed[]:int32 (var 90s))) goto 0x0001EC
0x0001D8:
    push (== self.shot 1s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x000234
0x0001F4:
    call (instance_create[]:int32 (var 739s) (+ self.y 2s) (+ self.x 4s))
    self.charge = 30s
0x000234:
    self.charge = (- self.charge 1s)
    global.testinv = (- global.testinv 1s)
    if !(> global.testinv 0s) goto 0x000288
0x000278:
    self.image_speed = 1s
    goto 0x0002A0
0x000288:
    self.image_speed = 0s
    self.image_index = 0s
0x0002A0:
    exit
