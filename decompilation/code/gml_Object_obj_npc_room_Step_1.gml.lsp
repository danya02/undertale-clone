0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(== self.room 85s) goto 0x000070
0x000054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0000AC
0x000078:
    push -5s
    if !(== 105s:flag 1s) goto 0x0000AC
0x000094:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0000AC:
    if !(== self.room 98s) goto 0x0000DC
0x0000C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x000118
0x0000E4:
    push -5s
    if !(== 106s:flag 1s) goto 0x000118
0x000100:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000118:
    if !(== self.room 146s) goto 0x000148
0x00012C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x000184
0x000150:
    push -5s
    if !(== 110s:flag 1s) goto 0x000184
0x00016C:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000184:
    if !(== self.room 161s) goto 0x0001B4
0x000198:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001F0
0x0001BC:
    push -5s
    if !(== 111s:flag 1s) goto 0x0001F0
0x0001D8:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0001F0:
    if !(== self.room 224s) goto 0x0002CC
0x000204:
    if !(< self.x (+ -10s (/ self.room_width (double 2s)))) goto 0x000268
0x000230:
    push -5s
    if !(== 114s:flag 1s) goto 0x00025C
0x00024C:
    self.image_index = 1s
    goto 0x000268
0x00025C:
    self.image_index = 0s
0x000268:
    if !(>= self.x (+ -10s (/ self.room_width (double 2s)))) goto 0x0002CC
0x000294:
    push -5s
    if !(== 115s:flag 1s) goto 0x0002C0
0x0002B0:
    self.image_index = 1s
    goto 0x0002CC
0x0002C0:
    self.image_index = 0s
0x0002CC:
    if !(== self.sprite_index 1680s) goto 0x0002F4
0x0002E0:
    self.image_speed = 0.2d
0x0002F4:
    if !(== self.sprite_index 1962s) goto 0x00031C
0x000308:
    self.image_speed = 0.2d
0x00031C:
    exit
