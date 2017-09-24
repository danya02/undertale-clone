0x000000:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000030
0x000018:
    self.x = (- self.x 4s)
0x000030:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000060
0x000048:
    self.x = (+ self.x 4s)
0x000060:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000090
0x000078:
    self.y = (- self.y 4s)
0x000090:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0000C0
0x0000A8:
    self.y = (+ self.y 4s)
0x0000C0:
    exit
