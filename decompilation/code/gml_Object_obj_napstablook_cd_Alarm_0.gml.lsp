0x000000:
    self.myinteract = 3s
    self.no = 0s
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x00004C
0x000040:
    self.no = 1s
0x00004C:
    if !(== self.id (instance_find[]:int32 (var 2s) self.object_index)) goto 0x000080
0x000074:
    self.no = 2s
0x000080:
    global.msc = 606s
    if !(== self.no 1s) goto 0x0000AC
0x0000A0:
    global.msc = 608s
0x0000AC:
    if !(== self.no 2s) goto 0x0000CC
0x0000C0:
    global.msc = 610s
0x0000CC:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "*"
    if !(> self.buffer 0s) goto 0x000140
0x00011C:
    global.msc = 0s
    stog.msg[0s] = "* (You still need to recover&  after all that lying down.)/%%"
0x000140:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000168:
    exit
