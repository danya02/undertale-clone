0x000000:
    if !(== self.con 1s) goto 0x0000EC
0x000014:
    pushenv 1115s 0x000030
0x00001C:
    self.image_speed = 0.25d
0x000030:
    popenv 0x00001C
0x000034:
    pushenv 1115s 0x00004C
0x00003C:
    self.sprite_index = self.rtsprite
0x00004C:
    popenv 0x00003C
0x000050:
    global.facechoice = 0s
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* Man^1, Undyne is sooooooo&  cool./"
    stog.msg[1s] = "* She beats up bad guys and&  NEVER loses./"
    stog.msg[2s] = "* If I was a human^1, I would&  wet the bed every night.../"
    stog.msg[3s] = "* ... knowing she was gonna&  beat me up^1!&* Ha ha./%%"
    call (scr_regulartext[]:int32 )
    self.con = 2s
0x0000EC:
    if !(== self.con 2s) goto 0x00011C
0x000100:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x00015C
0x000124:
    self.con = 3s
    stog.flag[91s] = 1s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00015C:
    exit
