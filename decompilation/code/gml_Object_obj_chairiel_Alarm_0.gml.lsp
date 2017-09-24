0x000000:
    self.myinteract = 3s
    if !(== self.chair 0s) goto 0x000168
0x000020:
    global.msc = 527s
    push -5s
    if !(> 103s:flag 0s) goto 0x000054
0x000048:
    global.msc = 528s
0x000054:
    if !(== global.plot 19.1d) goto 0x00007C
0x000070:
    global.msc = 528s
0x00007C:
    if !(== global.plot 19.2d) goto 0x0000A4
0x000098:
    global.msc = 529s
0x0000A4:
    if !(== global.plot 19.3d) goto 0x0000CC
0x0000C0:
    global.msc = 530s
0x0000CC:
    if !(== global.plot 19.4d) goto 0x0000F4
0x0000E8:
    global.msc = 531s
0x0000F4:
    global.choice = -1s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 99s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    goto 0x00023C
0x000168:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(!= self.chair 9s) goto 0x0001FC
0x0001B8:
    stog.msg[0s] = "* (Seems like the right size&  for Toriel.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    goto 0x00023C
0x0001FC:
    stog.msg[0s] = "* (It's a great reading chair.^1)&* (But it doesn't seem like&  anyone uses it.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00023C:
    exit
