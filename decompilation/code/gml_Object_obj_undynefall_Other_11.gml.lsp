0x000000:
    if !(== self.waterthing 0s) goto 0x000068
0x000014:
    pushenv 1298s 0x000028
0x00001C:
    self.havewater = 0s
0x000028:
    popenv 0x00001C
0x00002C:
    self.con = 10s
    self.waterthing = 1s
    global.interact = 1s
    pushenv 782s 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    popenv 0x000058
0x000068:
    exit
