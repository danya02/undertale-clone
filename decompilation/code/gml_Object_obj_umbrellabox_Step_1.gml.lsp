0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.con 99999) goto 0x000094
0x00004C:
    global.interact = 1s
    [obj_mainchara].x = 66s
    self.con = 1s
    stog.msg[0s] = "* (The cavern is too narrow&  for an umbrella.)/%%"
    call (scr_regulartext[]:int32 )
0x000094:
    if !(== self.con 1s) goto 0x0000C4
0x0000A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000E4
0x0000CC:
    global.interact = 0s
    self.con = 0s
0x0000E4:
    exit
