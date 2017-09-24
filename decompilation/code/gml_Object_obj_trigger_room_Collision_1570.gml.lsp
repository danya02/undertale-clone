0x000000:
    if !(== self.room 88s) goto 0x000058
0x000014:
    if !(< global.plot 107s) goto 0x000058
0x000028:
    global.plot = 107s
    call (instance_create[]:int32 (var 1339s) (var 340s) (var 40s))
0x000058:
    if !(== self.room 131s) goto 0x0000BC
0x00006C:
    if !(< global.plot 119s) goto 0x0000BC
0x000080:
    global.plot = 119s
    call (instance_create[]:int32 (var 1339s) (var 420s) (var 140s))
    [obj_echoflower].xxx = 1s
0x0000BC:
    if !(== self.room 116s) goto 0x000160
0x0000D0:
    push -5s
    if !(> 94s:flag 0s) goto 0x00011C
0x0000EC:
    push -5s
    if !(== 95s:flag 0s) goto 0x00011C
0x000108:
    push (== global.interact 0s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000160
0x000124:
    global.interact = 1s
    global.battlegroup = 46s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
0x000160:
    if !(== self.room 154s) goto 0x000188
0x000174:
    push (== global.interact 0s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001A8
0x000190:
    global.interact = 1s
    [obj_cookshowevent].con = 50s
0x0001A8:
    call (instance_destroy[]:int32 )
0x0001B4:
    exit
