0x000000:
    if !(!= global.attacktype 49s) goto 0x000030
0x000014:
    global.attacktype = (+ global.attacktype 1s)
    goto 0x00003C
0x000030:
    global.attacktype = 56s
0x00003C:
    call (room_goto[]:int32 self.room0)
0x000050:
    exit
