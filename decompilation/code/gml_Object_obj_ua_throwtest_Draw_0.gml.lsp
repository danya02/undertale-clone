0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.con 1s) goto 0x000078
0x00006C:
    self.sprite_index = 796s
0x000078:
    if !(== self.con 3s) goto 0x0000CC
0x00008C:
    call (snd_play[]:int32 (var 106s))
    self.sprite_index = 797s
    self.con = 4s
    stog.alarm[4s] = 3s
0x0000CC:
    if !(== self.con 5s) goto 0x00010C
0x0000E0:
    self.sprite_index = 798s
    self.con = 6s
    stog.alarm[4s] = 70s
0x00010C:
    if !(== self.con 7s) goto 0x00014C
0x000120:
    self.sprite_index = 797s
    self.con = 8s
    stog.alarm[4s] = 10s
0x00014C:
    if !(== self.con 9s) goto 0x0001A4
0x000160:
    call (snd_play[]:int32 (var 20s))
    self.vspeed = -15s
    self.gravity = 2s
    self.sprite_index = 798s
    self.con = 10s
0x0001A4:
    if !(== self.con 10s) goto 0x000218
0x0001B8:
    if !(>= self.vspeed -12s) goto 0x000218
0x0001CC:
    self.sprite_index = 799s
    call (instance_create[]:int32 (var 171s) (+ self.y 30s) (+ self.x 70s))
    self.con = 11s
0x000218:
    if !(== self.con 11s) goto 0x000280
0x00022C:
    if !(> self.y (- self.ystart 2s)) goto 0x000280
0x00024C:
    self.y = self.ystart
    self.gravity = 0s
    self.vspeed = 0s
    self.con = 12s
0x000280:
    exit
