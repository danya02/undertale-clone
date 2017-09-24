0x000000:
    if !(== global.faceemotion 0s) goto 0x000034
0x000014:
    push (!= self.sprite_index (real[]:int32 (var 166s)))
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000054
0x00003C:
    self.sprite_index = (real[]:int32 (var 166s))
0x000054:
    if !(== global.faceemotion 1s) goto 0x000088
0x000068:
    push (!= self.sprite_index (real[]:int32 (var 170s)))
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000A8
0x000090:
    self.sprite_index = (real[]:int32 (var 170s))
0x0000A8:
    if !(== global.faceemotion 2s) goto 0x0000DC
0x0000BC:
    push (!= self.sprite_index (real[]:int32 (var 171s)))
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    self.sprite_index = (real[]:int32 (var 171s))
0x0000FC:
    if !(== global.faceemotion 3s) goto 0x000130
0x000110:
    push (!= self.sprite_index (real[]:int32 (var 172s)))
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000150
0x000138:
    self.sprite_index = (real[]:int32 (var 172s))
0x000150:
    if !(== global.faceemotion 4s) goto 0x000184
0x000164:
    push (!= self.sprite_index (real[]:int32 (var 179s)))
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    self.sprite_index = (real[]:int32 (var 179s))
0x0001A4:
    if !(== global.faceemotion 5s) goto 0x0001D8
0x0001B8:
    push (!= self.sprite_index (real[]:int32 (var 175s)))
    goto 0x0001DC
0x0001D8:
    push 0s
0x0001DC:
    if !pop goto 0x0001F8
0x0001E0:
    self.sprite_index = (real[]:int32 (var 175s))
0x0001F8:
    if !(== self.room 43s) goto 0x000308
0x00020C:
    if !(== global.faceemotion 6s) goto 0x000240
0x000220:
    push (!= self.sprite_index (real[]:int32 (var 175s)))
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x000260
0x000248:
    self.sprite_index = (real[]:int32 (var 176s))
0x000260:
    if !(== global.faceemotion 7s) goto 0x000294
0x000274:
    push (!= self.sprite_index (real[]:int32 (var 175s)))
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002B4
0x00029C:
    self.sprite_index = (real[]:int32 (var 177s))
0x0002B4:
    if !(== global.faceemotion 8s) goto 0x0002E8
0x0002C8:
    push (!= self.sprite_index (real[]:int32 (var 175s)))
    goto 0x0002EC
0x0002E8:
    push 0s
0x0002EC:
    if !pop goto 0x000308
0x0002F0:
    self.sprite_index = (real[]:int32 (var 167s))
0x000308:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000364
0x000320:
    if !(!= 782.halt 0s) goto 0x000350
0x000334:
    self.image_speed = 0s
    self.image_index = 0s
    goto 0x000364
0x000350:
    self.image_speed = 0.2d
0x000364:
    exit
