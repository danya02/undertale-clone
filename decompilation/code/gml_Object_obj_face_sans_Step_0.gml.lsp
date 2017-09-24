0x000000:
    if !(== global.faceemotion 0s) goto 0x000034
0x000014:
    push (!= self.sprite_index (real[]:int32 (var 2018s)))
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000054
0x00003C:
    self.sprite_index = (real[]:int32 (var 2018s))
0x000054:
    if !(== global.faceemotion 1s) goto 0x000088
0x000068:
    push (!= self.sprite_index (real[]:int32 (var 2022s)))
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000A8
0x000090:
    self.sprite_index = (real[]:int32 (var 2022s))
0x0000A8:
    if !(== global.faceemotion 2s) goto 0x0000DC
0x0000BC:
    push (!= self.sprite_index (real[]:int32 (var 2019s)))
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    self.sprite_index = (real[]:int32 (var 2019s))
0x0000FC:
    if !(== global.faceemotion 3s) goto 0x000130
0x000110:
    push (!= self.sprite_index (real[]:int32 (var 2020s)))
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000150
0x000138:
    self.sprite_index = (real[]:int32 (var 2020s))
0x000150:
    if !(== global.faceemotion 4s) goto 0x000184
0x000164:
    push (!= self.sprite_index (real[]:int32 (var 2021s)))
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    self.sprite_index = (real[]:int32 (var 2021s))
0x0001A4:
    exit
