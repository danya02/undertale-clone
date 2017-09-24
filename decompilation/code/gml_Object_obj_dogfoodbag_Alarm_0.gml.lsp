0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a half-empty bag&  of dog food.)/%%"
    if !(== global.kills 0s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (It's a bag of dog food.^1)&* (It's half-full.)/%%"
0x000080:
    if !(> global.kills 20s) goto 0x000154
0x000094:
    push -5s
    if !(== 52s:flag 1s) goto 0x000104
0x0000B0:
    push -5s
    if !(== 53s:flag 1s) goto 0x000104
0x0000CC:
    push -5s
    if !(== 54s:flag 1s) goto 0x000104
0x0000E8:
    push -5s
    push (== 55s:flag 1s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000154
0x00010C:
    stog.msg[0s] = "* (It's a half-empty bag&  of dog food.)/"
    stog.msg[1s] = "* (...)/"
    stog.msg[1s] = "* (You just remembered&  something funny.)/%%"
0x000154:
    if !(< global.plot 126s) goto 0x00017C
0x000168:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x00019C
0x000184:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x00019C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001C4:
    exit
