0x000000:
    if !(== self.type 1s) goto 0x000058
0x000014:
    self.hspeed = 8s
    self.vspeed = 3s
    self.gravity = 0.1d
    self.gravity_direction = 90s
    self.sprite_index = 643s
0x000058:
    if !(== self.type 2s) goto 0x0000B0
0x00006C:
    self.hspeed = -8s
    self.vspeed = -3s
    self.gravity = -0.1d
    self.gravity_direction = 90s
    self.sprite_index = 640s
0x0000B0:
    if !(== self.type 3s) goto 0x0000DC
0x0000C4:
    self.vspeed = 6s
    self.sprite_index = 642s
0x0000DC:
    if !(== self.type 4s) goto 0x000108
0x0000F0:
    self.vspeed = -6s
    self.sprite_index = 641s
0x000108:
    if !(== self.type 5s) goto 0x000134
0x00011C:
    self.hspeed = 8s
    self.sprite_index = 643s
0x000134:
    exit
