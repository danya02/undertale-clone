0x000000:
    if !(== self.conversation 1s) goto 0x000160
0x000014:
    [obj_mainchara].x = (+ 1570.x 4s)
    global.facing = 1s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "COME ON!&DON'T BE SO&RUDE!!!/"
    stog.msg[1s] = "I SET UP&THIS PUZZLE&JUST FOR YOU!/%%"
    if !(== self.talkedto 1s) goto 0x0000E8
0x0000B8:
    stog.msg[0s] = "\\E3DO YOU TREAT&YOUR MOTHER&THIS WAY.../"
    stog.msg[1s] = "WHEN SHE MAKES&YOU A PUZZLE&?!?!?/%%"
0x0000E8:
    if !(> self.talkedto 1s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "\\E3HUMANS.../%%"
0x000114:
    self.talkedto = (+ self.talkedto 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000160:
    if !(== self.conversation 2s) goto 0x000180
0x000174:
    global.facing = 1s
0x000180:
    if !(== self.conversation 2s) goto 0x0001B0
0x000194:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001D0
0x0001B8:
    global.interact = 0s
    self.conversation = 0s
0x0001D0:
    exit
