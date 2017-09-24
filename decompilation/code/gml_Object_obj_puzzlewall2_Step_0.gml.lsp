0x000000:
    if !(== self.conversation 1s) goto 0x000108
0x000014:
    [obj_mainchara].x = (+ 1570.x 4s)
    global.facing = 1s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    stog.msg[0s] = "SANS!!!^1!&THE HUMAN IS&ESCAPING!!!/"
    stog.msg[1s] = "YOU MADE THE&PUZZLE TOO&HARD!!/"
    stog.msg[2s] = "HEY YOU!!^1!&GET BACK HERE!/%%"
    self.talkedto = (+ self.talkedto 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000108:
    if !(== self.conversation 2s) goto 0x000128
0x00011C:
    global.facing = 1s
0x000128:
    if !(== self.conversation 2s) goto 0x000158
0x00013C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x000178
0x000160:
    global.interact = 0s
    self.conversation = 0s
0x000178:
    exit
