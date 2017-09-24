0x000000:
    if !(== self.closemove 1s) goto 0x000318
0x000014:
    self.x = (+ self.x (- 1570.x self.xfer))
    self.y = (+ self.y (- 1570.y self.yfer))
    if !(== self.room 106s) goto 0x0000D8
0x000078:
    if !(< self.y 100s) goto 0x000098
0x00008C:
    self.y = 100s
0x000098:
    if !(< self.x 1500s) goto 0x0000D8
0x0000AC:
    if !(> self.y 150s) goto 0x0000D8
0x0000C0:
    self.y = (- self.y 3s)
0x0000D8:
    if !(== self.room 107s) goto 0x00025C
0x0000EC:
    if !(> self.y 915s) goto 0x000118
0x000100:
    self.y = (- self.y 3s)
0x000118:
    if !(< self.y 850s) goto 0x00015C
0x00012C:
    if !(> self.x 160s) goto 0x000158
0x000140:
    self.x = (- self.x 3s)
0x000158:
    goto 0x000198
0x00015C:
    if !(> self.x 166s) goto 0x000184
0x000170:
    push (< self.y 857s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x000198
0x00018C:
    self.y = 857s
0x000198:
    if !(< self.x 120s) goto 0x0001C4
0x0001AC:
    self.x = (+ self.x 3s)
0x0001C4:
    if !(> self.y 1158.y) goto 0x0001F8
0x0001DC:
    push -5s
    push (< 91s:flag 3s)
    goto 0x0001FC
0x0001F8:
    push 0s
0x0001FC:
    if !pop goto 0x00025C
0x000200:
    stog.flag[91s] = 3s
    self.speed = 0s
    self.sprite_index = self.rtsprite
    self.image_speed = 0s
    self.follow = 8s
    stog.alarm[3s] = 25s
0x00025C:
    self.facing = global.facing
    self.image_speed = 1570.image_speed
    if !(== self.facing 0s) goto 0x0002A0
0x000290:
    self.sprite_index = self.dsprite
0x0002A0:
    if !(== self.facing 1s) goto 0x0002C4
0x0002B4:
    self.sprite_index = self.rsprite
0x0002C4:
    if !(== self.facing 2s) goto 0x0002E8
0x0002D8:
    self.sprite_index = self.usprite
0x0002E8:
    if !(== self.facing 3s) goto 0x00030C
0x0002FC:
    self.sprite_index = self.lsprite
0x00030C:
    self.closemove = 0s
0x000318:
    exit
