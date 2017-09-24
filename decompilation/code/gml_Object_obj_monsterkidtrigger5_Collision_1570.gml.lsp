0x000000:
    if !(== self.con 0s) goto 0x000044
0x000014:
    if !(== global.interact 0s) goto 0x000044
0x000028:
    push -5s
    push (< 91s:flag 4s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000194
0x00004C:
    global.interact = 1s
    self.con = 1s
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    self.remember = (int32 self.mkid):follow
    push 0s
    stog.follow* = (int32 self.mkid)
    push 0s
    stog.speed* = (int32 self.mkid)
    stog.flag[91s] = 4s
    global.facechoice = 0s
    if !(> 1570.y 908s) goto 0x000138
0x00012C:
    [obj_mainchara].y = 908s
0x000138:
    if !(< 1570.y 864s) goto 0x000158
0x00014C:
    [obj_mainchara].y = 864s
0x000158:
    stog.msg[0s] = "* Ummm^1, maybe she wouldn't beat&  up the teachers.../"
    stog.msg[1s] = "* She's too cool to ever&  hurt an innocent person!/%%"
    call (scr_regulartext[]:int32 )
0x000194:
    if !(== self.con 1s) goto 0x0001C4
0x0001A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001C8
0x0001C4:
    push 0s
0x0001C8:
    if !pop goto 0x000258
0x0001CC:
    if !(> 1570.y 908s) goto 0x0001EC
0x0001E0:
    [obj_mainchara].y = 908s
0x0001EC:
    if !(< 1570.y 864s) goto 0x00020C
0x000200:
    [obj_mainchara].y = 864s
0x00020C:
    push self.remember
    stog.follow* = (int32 self.mkid)
    global.interact = 0s
    self.con = 2s
    push 0s
    stog.image_speed* = (int32 self.mkid)
0x000258:
    exit
