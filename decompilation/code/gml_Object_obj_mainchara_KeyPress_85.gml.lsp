0x000000:
    if !(== global.debug 1s) goto 0x00007C
0x000014:
    push -5s
    if !(== 465s:flag 0s) goto 0x000058
0x000030:
    stog.flag[465s] = 1s
    self.image_blend = 16711680
    goto 0x00007C
0x000058:
    stog.flag[465s] = 0s
    self.image_blend = 65535
0x00007C:
    exit
