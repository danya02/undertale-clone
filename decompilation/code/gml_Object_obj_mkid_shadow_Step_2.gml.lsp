0x000000:
    if !(== self.follow 1s) goto 0x0001D4
0x000014:
    self.moving = 0s
    if !(< 1570.x (- self.x 34s)) goto 0x0000C0
0x000040:
    self.x = (- self.x 3s)
    if !(== self.speedup 1s) goto 0x000084
0x00006C:
    self.x = (- self.x 3s)
0x000084:
    self.sprite_index = self.lsprite
    self.image_speed = 0.25d
    self.moving = 1s
    self.look = 0s
0x0000C0:
    if !(> 1570.x (+ self.x 34s)) goto 0x000160
0x0000E0:
    self.x = (+ self.x 3s)
    if !(== self.speedup 1s) goto 0x000124
0x00010C:
    self.x = (+ self.x 3s)
0x000124:
    self.sprite_index = self.rsprite
    self.image_speed = 0.25d
    self.moving = 1s
    self.look = 0s
0x000160:
    if !(== self.moving 0s) goto 0x0001D4
0x000174:
    self.speedup = 0s
    self.image_index = 0s
    self.image_speed = 0s
    self.look = (+ self.look 1s)
    if !(> self.look 60s) goto 0x0001D4
0x0001C4:
    self.sprite_index = self.usprite
0x0001D4:
    if !(> self.x 450s) goto 0x000218
0x0001E8:
    if !(== self.con 0s) goto 0x000218
0x0001FC:
    push -5s
    push (< 91s:flag 6s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x00029C
0x000220:
    self.hspeed = 6s
    stog.flag[91s] = 6s
    self.follow = 2s
    self.con = 1s
    self.sprite_index = self.rsprite
    self.image_index = 0s
    self.image_speed = 0.25d
    stog.alarm[3s] = 60s
0x00029C:
    exit
