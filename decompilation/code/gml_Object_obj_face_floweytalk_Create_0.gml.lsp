0x000000:
    call (event_inherited[]:int32 )
    self.image_speed = 0.25d
    if !(== global.faceemotion 0s) goto 0x000054
0x000034:
    push (!= self.sprite_index (real[]:int32 (var 166s)))
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000074
0x00005C:
    self.sprite_index = (real[]:int32 (var 166s))
0x000074:
    if !(== global.faceemotion 1s) goto 0x0000A8
0x000088:
    push (!= self.sprite_index (real[]:int32 (var 170s)))
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000C8
0x0000B0:
    self.sprite_index = (real[]:int32 (var 170s))
0x0000C8:
    if !(== global.faceemotion 2s) goto 0x0000FC
0x0000DC:
    push (!= self.sprite_index (real[]:int32 (var 171s)))
    goto 0x000100
0x0000FC:
    push 0s
0x000100:
    if !pop goto 0x00011C
0x000104:
    self.sprite_index = (real[]:int32 (var 171s))
0x00011C:
    if !(== global.faceemotion 3s) goto 0x000150
0x000130:
    push (!= self.sprite_index (real[]:int32 (var 172s)))
    goto 0x000154
0x000150:
    push 0s
0x000154:
    if !pop goto 0x000170
0x000158:
    self.sprite_index = (real[]:int32 (var 172s))
0x000170:
    if !(== global.faceemotion 4s) goto 0x0001A4
0x000184:
    push (!= self.sprite_index (real[]:int32 (var 179s)))
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x0001C4
0x0001AC:
    self.sprite_index = (real[]:int32 (var 179s))
0x0001C4:
    if !(== global.faceemotion 5s) goto 0x0001F8
0x0001D8:
    push (!= self.sprite_index (real[]:int32 (var 175s)))
    goto 0x0001FC
0x0001F8:
    push 0s
0x0001FC:
    if !pop goto 0x000218
0x000200:
    self.sprite_index = (real[]:int32 (var 175s))
0x000218:
    exit
