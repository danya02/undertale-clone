0x000000:
    if !(!= self.phone 2s) goto 0x000134
0x000014:
    if !(bool (instance_exists[]:int32 (var 763s))) goto 0x000074
0x00002C:
    self.myinteract = 1s
    if !(bool (instance_exists[]:int32 (var 765s))) goto 0x000064
0x000050:
    self.image_index = 765.image_index
    goto 0x000070
0x000064:
    self.image_index = 0s
0x000070:
    goto 0x000100
0x000074:
    self.myinteract = 0s
    if !(== self.path_position 1s) goto 0x0000B0
0x000094:
    self.image_index = 0s
    self.image_speed = 0s
    goto 0x0000D8
0x0000B0:
    if !(!= self.path_speed 0s) goto 0x0000D8
0x0000C4:
    self.image_speed = 0.2d
0x0000D8:
    if !(> self.speed 0s) goto 0x000100
0x0000EC:
    self.image_speed = 0.2d
0x000100:
    call (scr_npcdir[]:int32 (var 0s))
    if !(== self.phone 1s) goto 0x000134
0x000128:
    self.sprite_index = 1102s
0x000134:
    if !(== self.sprite_index 1122s) goto 0x00015C
0x000148:
    push (>= self.image_index 2s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000188
0x000164:
    self.image_speed = 0s
    self.sprite_index = 1123s
    self.dsprite = 1123s
0x000188:
    exit
