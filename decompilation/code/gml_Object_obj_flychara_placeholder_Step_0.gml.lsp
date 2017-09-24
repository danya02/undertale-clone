0x000000:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000030
0x000018:
    self.x = (- self.x 4s)
0x000030:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000060
0x000048:
    self.x = (+ self.x 4s)
0x000060:
    exit
