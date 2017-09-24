0x000000:
    if !(> self.x (- self.xstart 40s)) goto 0x000038
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
    if !(< self.x (+ self.xstart 40s)) goto 0x000090
0x000078:
    push (bool (keyboard_check[]:int32 (var 39s)))
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x0000B0
0x000098:
    self.x = (+ self.x 4s)
0x0000B0:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0000E0
0x0000C8:
    self.y = (- self.y 4s)
0x0000E0:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000110
0x0000F8:
    self.y = (+ self.y 4s)
0x000110:
    if !(!= global.mnfight 2s) goto 0x000130
0x000124:
    call (instance_destroy[]:int32 )
0x000130:
    exit
