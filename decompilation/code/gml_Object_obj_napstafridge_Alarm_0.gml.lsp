0x000000:
    self.myinteract = 3s
    global.msc = 612s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.room 120s) goto 0x00012C
0x000050:
    if (>= (scr_murderlv[]:int32 ) 10s) goto 0x000080
0x000064:
    push (~ (bool (instance_exists[]:int32 (var 1132s))))
    goto 0x000084
0x000080:
    push 1s
0x000084:
    if !pop goto 0x0000AC
0x000088:
    global.msc = 0s
    stog.msg[0s] = "* (It's merely a fridge.)/%%"
0x0000AC:
    push -5s
    if !(>= 93s:flag 2s) goto 0x0000F4
0x0000C8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    goto 0x00012C
0x0000F4:
    if !(bool (instance_exists[]:int32 (var 1133s))) goto 0x00012C
0x00010C:
    if !(< 1133.con 11s) goto 0x00012C
0x000120:
    [obj_napstablookdate].con = 11s
0x00012C:
    if !(== self.room 141s) goto 0x0001C8
0x000140:
    global.msc = 258s
    if !(< global.plot 126s) goto 0x000174
0x000160:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000178
0x000174:
    push 0s
0x000178:
    if !pop goto 0x0001A0
0x00017C:
    global.msc = 0s
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x0001A0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001C8:
    stog.talkedto* = (+ (int32 self.object_index):talkedto 1s)
0x0001F0:
    exit
