0x000000:
    push -5s
    if !(== 54s:flag 1s) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    push -5s
    if !(== 52s:flag 1s) goto 0x000060
0x000044:
    push -5s
    push (== 53s:flag 1s)
    goto 0x000064
0x000060:
    push 0s
0x000064:
    if !pop goto 0x000074
0x000068:
    self.sprite_index = 1210s
0x000074:
    self.myinteract = 0s
    self.image_speed = 0s
    self.bluh = 0s
    call (scr_depth[]:int32 )
    push -5s
    if !(== 7s:flag 1s) goto 0x0000D4
0x0000C0:
    push (== self.room 73s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    self.jeffrey = 0s
    if !(== self.room 68s) goto 0x000144
0x000108:
    push -5s
    if !(== 7s:flag 0s) goto 0x000130
0x000124:
    call (instance_destroy[]:int32 )
0x000130:
    stog.alarm[1s] = 1s
0x000144:
    exit
