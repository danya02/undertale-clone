0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (The door is locked.)/%%"
    if !(== self.sprite_index 1673s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (This half of the door is&  unlocked.)/%%"
0x000080:
    if !(> global.plot 132s) goto 0x0000A8
0x000094:
    push (== self.room 148s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "* (The door is open.)/%%"
0x0000C8:
    if !(> global.plot 163s) goto 0x0000F0
0x0000DC:
    push (== self.room 171s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x000110
0x0000F8:
    stog.msg[0s] = "* (The door is open.)/%%"
0x000110:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000138:
    exit
