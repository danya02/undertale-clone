0x000000:
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
    if !(== global.faceemotion 1s) goto 0x000050
0x000034:
    push -5s
    push (== 390s:flag 2s)
    goto 0x000054
0x000050:
    push 0s
0x000054:
    if !pop goto 0x000064
0x000058:
    self.sprite_index = 2027s
0x000064:
    if !(== global.faceemotion 2s) goto 0x000094
0x000078:
    push -5s
    push (== 20s:flag 9s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000A8
0x00009C:
    self.sprite_index = 2030s
0x0000A8:
    if !(== global.faceemotion 9s) goto 0x0000D8
0x0000BC:
    push -5s
    push (== 390s:flag 1s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000EC
0x0000E0:
    self.sprite_index = 2041s
0x0000EC:
    if !(== global.faceemotion 9s) goto 0x00011C
0x000100:
    push -5s
    push (== 390s:flag 2s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000130
0x000124:
    self.sprite_index = 2042s
0x000130:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00018C
0x000148:
    if !(!= 782.halt 0s) goto 0x000178
0x00015C:
    self.image_speed = 0s
    self.image_index = 0s
    goto 0x00018C
0x000178:
    self.image_speed = 0.25d
0x00018C:
    if !(== global.facechoice 0s) goto 0x0001AC
0x0001A0:
    call (instance_destroy[]:int32 )
0x0001AC:
    exit
