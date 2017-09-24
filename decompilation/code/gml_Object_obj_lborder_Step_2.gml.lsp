0x000000:
    push self.x
    if !(!= -5s 0s:idealborder) goto 0x0000C0
0x000020:
    push self.x
    if !(<= (abs[]:int32 (- -5s 0s:idealborder)) 15s) goto 0x00006C
0x000050:
    push -5s
    self.x = 0s:idealborder
    goto 0x0000C0
0x00006C:
    push self.x
    if !(> -5s 0s:idealborder) goto 0x0000A8
0x00008C:
    self.x = (- self.x 15s)
    goto 0x0000C0
0x0000A8:
    self.x = (+ self.x 15s)
0x0000C0:
    push self.y
    if !(!= -5s 3s:idealborder) goto 0x000240
0x0000E0:
    push self.y
    if !(<= (abs[]:int32 (- -5s 3s:idealborder)) 15s) goto 0x00012C
0x000110:
    push -5s
    self.y = 3s:idealborder
    goto 0x000240
0x00012C:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000168
0x00014C:
    self.y = (- self.y 15s)
    goto 0x000180
0x000168:
    self.y = (+ self.y 15s)
0x000180:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x0001C0
0x0001A0:
    push 761.y
    push (> -5s 3s:idealborder)
    goto 0x0001C4
0x0001C0:
    push 0s
0x0001C4:
    if !pop goto 0x0001E0
0x0001C8:
    self.y = (- self.y 15s)
0x0001E0:
    push 759.y
    if !(< -5s 2s:idealborder) goto 0x000220
0x000200:
    push 761.y
    push (< -5s 3s:idealborder)
    goto 0x000224
0x000220:
    push 0s
0x000224:
    if !pop goto 0x000240
0x000228:
    self.y = (+ self.y 15s)
0x000240:
    push -5s
    push 2s:idealborder
    self.size = (round[]:int32 (/ (- -5s 3s:idealborder) (double 5s)))
    push self.x
    if (== -5s 0s:idealborder) goto 0x0002D4
0x0002A0:
    push -5s
    push (> 2s:idealborder (+ self.y (* self.image_yscale 5s)))
    goto 0x0002D8
0x0002D4:
    push 1s
0x0002D8:
    if !pop goto 0x00044C
0x0002DC:
    if !(!= self.image_yscale self.size) goto 0x00044C
0x0002F4:
    if !(<= (abs[]:int32 (- self.size self.image_yscale)) 3s) goto 0x00032C
0x00031C:
    self.image_yscale = self.size
0x00032C:
    if !(> self.image_yscale self.size) goto 0x00035C
0x000344:
    self.image_yscale = (- self.image_yscale 3s)
0x00035C:
    if !(< self.image_yscale self.size) goto 0x00038C
0x000374:
    self.image_yscale = (+ self.image_yscale 3s)
0x00038C:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x0003CC
0x0003AC:
    push 761.y
    push (> -5s 3s:idealborder)
    goto 0x0003D0
0x0003CC:
    push 0s
0x0003D0:
    if !pop goto 0x0003EC
0x0003D4:
    self.image_yscale = (+ self.image_yscale 3s)
0x0003EC:
    push 759.y
    if !(< -5s 2s:idealborder) goto 0x00042C
0x00040C:
    push 761.y
    push (< -5s 3s:idealborder)
    goto 0x000430
0x00042C:
    push 0s
0x000430:
    if !pop goto 0x00044C
0x000434:
    self.image_yscale = (- self.image_yscale 3s)
0x00044C:
    self.y = 761.y
    self.image_yscale = (/ (- 759.y 761.y) (double 5s))
    if !(== self.instaborder 1s) goto 0x000500
0x000498:
    push -5s
    self.x = 0s:idealborder
    push -5s
    self.y = 2s:idealborder
    push -5s
    push 3s:idealborder
    self.image_yscale = (/ (- -5s 2s:idealborder) (double 5s))
0x000500:
    exit
