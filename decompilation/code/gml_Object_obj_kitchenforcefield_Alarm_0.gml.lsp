0x000000:
    if !(== self.canttalk 0s) goto 0x0001D8
0x000014:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "* (As per culinary standard^1,&  a death forcefield surrounds&  the kitchen.)/%%"
    if !(== self.room 166s) goto 0x00007C
0x000064:
    stog.msg[0s] = "* (As per journalistic standards^1,&  a death forcefield surrounds&  the area of intrigue.)/%%"
0x00007C:
    if !(== self.room 162s) goto 0x0000A8
0x000090:
    stog.msg[0s] = "* (It's the kind of every-day&  death forcefield you see&  at home.)/%%"
0x0000A8:
    if (== self.room 192s) goto 0x0000D0
0x0000BC:
    push (== self.room 202s)
    goto 0x0000D4
0x0000D0:
    push 1s
0x0000D4:
    if !pop goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "* (It's a forcefield.)/%%"
0x0000F0:
    if !(== self.room 195s) goto 0x00011C
0x000104:
    stog.msg[0s] = "* (It's a battery-powered&  forcefield.)/%%"
0x00011C:
    if (== self.room 139s) goto 0x000180
0x000130:
    if (== self.room 159s) goto 0x000180
0x000144:
    if (== self.room 187s) goto 0x000180
0x000158:
    if (== self.room 168s) goto 0x000180
0x00016C:
    push (== self.room 157s)
    goto 0x000184
0x000180:
    push 1s
0x000184:
    if !pop goto 0x0001A0
0x000188:
    stog.msg[0s] = "* (It's a forcefield.)/%%"
0x0001A0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.myinteract = 3s
    goto 0x0001F0
0x0001D8:
    global.interact = 0s
    self.myinteract = 0s
0x0001F0:
    exit
