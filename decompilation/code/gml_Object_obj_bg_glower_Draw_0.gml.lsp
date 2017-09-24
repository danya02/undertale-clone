0x000000:
    self.d = (+ self.d 0.05d)
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000050
0x000038:
    self.h = (+ self.h 1s)
0x000050:
    self.g = (make_color_hsv[]:int32 (var 255s) (+ 100s (* (sin[]:int32 self.d) 100s)) self.h)
    self.background_color = self.g
0x0000A0:
    exit
