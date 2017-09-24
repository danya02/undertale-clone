0x000000:
    if !(== global.debug 1s) goto 0x000044
0x000014:
    self.lesson = (- self.lesson 1s)
    self.order = (- self.order 1s)
0x000044:
    exit
