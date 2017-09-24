0x000000:
    if !(== self.con 0s) goto 0x00011C
0x000014:
    self.mydirection = (+ self.mydirection 180s)
    self.myfacing = (+ self.myfacing 2s)
    if !(>= self.myfacing 4s) goto 0x000070
0x000058:
    self.myfacing = (- self.myfacing 4s)
0x000070:
    if !(>= self.mydirection 360s) goto 0x00009C
0x000084:
    self.mydirection = (- self.mydirection 360s)
0x00009C:
    if !(== self.myfacing 0s) goto 0x0000BC
0x0000B0:
    self.sprite_index = 1821s
0x0000BC:
    if !(== self.myfacing 1s) goto 0x0000DC
0x0000D0:
    self.sprite_index = 1824s
0x0000DC:
    if !(== self.myfacing 2s) goto 0x0000FC
0x0000F0:
    self.sprite_index = 1823s
0x0000FC:
    if !(== self.myfacing 3s) goto 0x00011C
0x000110:
    self.sprite_index = 1822s
0x00011C:
    stog.alarm[9s] = self.fliptime
0x000134:
    exit
