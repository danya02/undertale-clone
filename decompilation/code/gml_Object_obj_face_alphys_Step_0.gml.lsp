0x000000:
    push -5s
    if !(== 430s:flag 0s) goto 0x00003C
0x00001C:
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
0x00003C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000098
0x000054:
    if !(!= 782.halt 0s) goto 0x000084
0x000068:
    self.image_speed = 0s
    self.image_index = 0s
    goto 0x000098
0x000084:
    self.image_speed = 0.25d
0x000098:
    push -5s
    if !(== 430s:flag 1s) goto 0x0000DC
0x0000B4:
    push -1s
    self.sprite_index = (int32 (+ global.faceemotion 10s)):u
0x0000DC:
    push -5s
    if !(== 430s:flag 2s) goto 0x000120
0x0000F8:
    push -1s
    self.sprite_index = (int32 (+ global.faceemotion 15s)):u
0x000120:
    push -5s
    if !(== 430s:flag 3s) goto 0x0001B4
0x00013C:
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
    if !(== global.faceemotion 7s) goto 0x000188
0x000170:
    push -1s
    self.sprite_index = 24s:u
0x000188:
    if !(== global.faceemotion 0s) goto 0x0001B4
0x00019C:
    push -1s
    self.sprite_index = 25s:u
0x0001B4:
    push -5s
    if !(== 7s:flag 1s) goto 0x00027C
0x0001D0:
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
    if !(== global.faceemotion 1s) goto 0x000210
0x000204:
    self.sprite_index = 2047s
0x000210:
    if !(== global.faceemotion 2s) goto 0x000230
0x000224:
    self.sprite_index = 2048s
0x000230:
    if !(== global.faceemotion 8s) goto 0x000250
0x000244:
    self.sprite_index = 2050s
0x000250:
    if !(== global.faceemotion 9s) goto 0x00027C
0x000264:
    push -1s
    self.sprite_index = 24s:u
0x00027C:
    push -5s
    if !(== 430s:flag 4s) goto 0x0002B4
0x000298:
    self.image_index = global.faceemotion
    self.sprite_index = 2045s
0x0002B4:
    exit
