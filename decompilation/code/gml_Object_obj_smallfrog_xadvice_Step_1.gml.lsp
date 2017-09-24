0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(> global.kills 16s) goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    if !(== self.room 29s) goto 0x00007C
0x000068:
    push (> global.kills 10s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    if !(== self.room 12s) goto 0x0000B8
0x0000A4:
    push (> global.kills 2s)
    goto 0x0000BC
0x0000B8:
    push 0s
0x0000BC:
    if !pop goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0000F8
0x0000E4:
    push (!= self.myinteract 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x0001AC
0x000100:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00012C
0x000118:
    push (> 782.stringno 1s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000140
0x000134:
    self.xed = 1s
0x000140:
    if !(> self.xed 0s) goto 0x0001AC
0x000154:
    push "* (Oh^1, not you too!)/%%"
    push 782s
    stog.mystring[] = 4s
    push -5s
    if !(== 7s:flag 1s) goto 0x0001A0
0x000188:
    push "* (... I suppose some things&  never change.)/%%"
    push 782s
    stog.mystring[] = 4s
0x0001A0:
    self.xed = 0s
0x0001AC:
    exit
