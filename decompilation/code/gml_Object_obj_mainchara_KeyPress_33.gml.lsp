0x000000:
    if !(== global.debug 1s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 1387s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000058
0x000034:
    pushenv 1387s 0x000054
0x00003C:
    self.steps = (+ self.steps 100s)
0x000054:
    popenv 0x00003C
0x000058:
    exit
