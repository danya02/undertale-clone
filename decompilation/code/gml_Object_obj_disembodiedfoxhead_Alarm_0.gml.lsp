0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* The door leading through&  the area is closed^1?&* So I tried the puzzle?/"
    stog.msg[1s] = "* But I kept running out of&  ammo^1, and it kept restarting?/"
    stog.msg[2s] = "* And my two co-workers won't&  help^1? It's like they don't&  even wanna go to work?/%%"
    if !(> self.tt 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Why don't you try^1?&* Try using the console?/%%"
0x0000B0:
    push -5s
    if !(== 375s:flag 1s) goto 0x0000FC
0x0000CC:
    stog.msg[0s] = "* Wow^1?&* You solved it?/"
    stog.msg[1s] = "* I'm impressed^1?&* You must be a total nerd?/%%"
0x0000FC:
    push -5s
    if !(== 7s:flag 1s) goto 0x000148
0x000118:
    stog.msg[0s] = "* So we're all gonna go&  free...?/"
    stog.msg[1s] = "* Does that mean I don't&  get to go to work?/%%"
0x000148:
    push -5s
    if !(== 425s:flag 1s) goto 0x00017C
0x000164:
    stog.msg[0s] = "* Maybe I don't want to go&  to work anymore...?/%%"
0x00017C:
    self.tt = (+ self.tt 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001BC:
    exit
