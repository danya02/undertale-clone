0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a box.^1)&* (Presumably to be pushed.)/%%"
    push -5s
    if !(== 280s:flag 2s) goto 0x0000AC
0x000070:
    pushenv 1512s 0x000084
0x000078:
    self.spec = 1s
0x000084:
    popenv 0x000078
0x000088:
    global.facing = 3s
    stog.msg[0s] = "* Bah!/%%"
0x0000AC:
    push -5s
    if !(== 280s:flag 1s) goto 0x000130
0x0000C8:
    pushenv 1512s 0x0000DC
0x0000D0:
    self.spec = 1s
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    global.facing = 3s
    stog.msg[0s] = "* What...^1?&* WHAT are you doing!^1?&* You're pushing it ALL WRONG!/"
    stog.msg[1s] = "* Bah^1, forget it^1!&* This generation is REALLY&  hopeless!/%%"
    stog.flag[280s] = 2s
0x000130:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000170:
    exit
