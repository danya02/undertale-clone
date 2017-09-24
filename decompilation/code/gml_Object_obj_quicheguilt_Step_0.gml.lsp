0x000000:
    if !(== global.inbattle 0s) goto 0x0001C8
0x000014:
    if !(== self.guilt 1s) goto 0x000070
0x000028:
    if !(== global.interact 0s) goto 0x000070
0x00003C:
    push -5s
    if !(== 17s:flag 0s) goto 0x000070
0x000058:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000094
0x000078:
    self.check = (+ self.check 1s)
    goto 0x0000A0
0x000094:
    self.check = 0s
0x0000A0:
    if !(>= self.check 80s) goto 0x0000C8
0x0000B4:
    push (== self.guilt 1s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x00010C
0x0000D0:
    stog.msg[0s] = "* Somewhere^1, a quiche's worst&  fear becomes reality./%%"
    call (scr_regulartext[]:int32 )
    self.guilt = 2s
    global.interact = 1s
0x00010C:
    if !(== self.guilt 2s) goto 0x00013C
0x000120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x00015C
0x000144:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00015C:
    if !(== self.guilt 6s) goto 0x000184
0x000170:
    push (== global.interact 0s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001C8
0x00018C:
    stog.msg[0s] = "* A quiche in another timeline./%%"
    call (scr_regulartext[]:int32 )
    self.guilt = 2s
    global.interact = 1s
0x0001C8:
    exit
