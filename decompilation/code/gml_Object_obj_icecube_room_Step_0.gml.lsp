0x000000:
    if !(> self.x self.room_width) goto 0x000030
0x000018:
    self.x = (- self.xstart 60s)
0x000030:
    exit
