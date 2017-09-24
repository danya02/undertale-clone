0x000000:
    if !(< self.dx 120s) goto 0x00002C
0x000014:
    self.doomtime = (+ self.doomtime 1s)
0x00002C:
    if !(< self.dx 90s) goto 0x000060
0x000040:
    self.doomtime = (+ self.doomtime 0.3d)
0x000060:
    if !(> self.dx 100s) goto 0x000094
0x000074:
    self.doomtime = (- self.doomtime 0.3d)
0x000094:
    if !(> self.dx 110s) goto 0x0000C8
0x0000A8:
    self.doomtime = (- self.doomtime 0.5d)
0x0000C8:
    if !(>= self.dx 120s) goto 0x0000F4
0x0000DC:
    push (bool (instance_exists[]:int32 (var 401s)))
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x0001A8
0x0000FC:
    if !(== 401.defuse 0s) goto 0x000144
0x000110:
    if !(== (int32 401.mypart1):got 0s) goto 0x000144
0x000130:
    push (== self.dr 0s)
    goto 0x000148
0x000144:
    push 0s
0x000148:
    if !pop goto 0x0001A8
0x00014C:
    self.dr = 1s
    stog.flag[288s] = 1s
    [obj_battlebomb_body].type = 99s
    [obj_battlebomb_body].bombtype = 99s
    [obj_battlebomb_body].speed = 0s
    [obj_battlebomb].failure = 1s
    [obj_battlebomb].con = 1001s
0x0001A8:
    if !(>= self.dx 120s) goto 0x0001E4
0x0001BC:
    if !(== global.inbattle 0s) goto 0x0001E4
0x0001D0:
    push (== global.interact 0s)
    goto 0x0001E8
0x0001E4:
    push 0s
0x0001E8:
    if !pop goto 0x000254
0x0001EC:
    self.finaltimer = (+ self.finaltimer 1s)
    if !(> self.finaltimer 5s) goto 0x000254
0x000218:
    pushenv 1224s 0x00022C
0x000220:
    self.failure = 1s
0x00022C:
    popenv 0x000220
0x000230:
    pushenv 1224s 0x000244
0x000238:
    self.con = 160s
0x000244:
    popenv 0x000238
0x000248:
    call (instance_destroy[]:int32 )
0x000254:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x000284
0x000270:
    stog.view_yview[0s] = 0s
0x000284:
    exit
