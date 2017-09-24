0x000000:
    self.xinit = self.x
    self.anim = 0s
    self.on = 1s
    self.xm = 0s
    self.s = 0s
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
    self.x = (+ self.x self.sprite_width)
    stog.alarm[0s] = 1s
    self.visible = 0s
    self.c = 0s
0x0000AC:
    exit
