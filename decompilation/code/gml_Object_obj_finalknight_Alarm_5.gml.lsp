0x000000:
    pushenv (int32 self.blconwd) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    self.talked = 0s
    global.mnfight = 2s
    if !(== self.asleep 0s) goto 0x000058
0x00004C:
    global.border = 18s
0x000058:
    exit
