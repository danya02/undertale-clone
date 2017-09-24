0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Default"
    if !(< self.mycommand 75s) goto 0x000084
0x00006C:
    stog.msg[0s] = "No 2"
0x000084:
    if !(< self.mycommand 50s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "No 3"
0x0000B0:
    if !(< self.mycommand 25s) goto 0x0000DC
0x0000C4:
    stog.msg[0s] = "No 4"
0x0000DC:
    if !(== self.whatiheard 1s) goto 0x000108
0x0000F0:
    stog.msg[0s] = "Action1"
0x000108:
    if !(== self.whatiheard 3s) goto 0x000134
0x00011C:
    stog.msg[0s] = "Action2"
0x000134:
    if !(== self.whatiheard 4s) goto 0x000160
0x000148:
    stog.msg[0s] = "Action3"
0x000160:
    stog.msg[1s] = "%%%"
    global.typer = 2s
0x000184:
    exit
