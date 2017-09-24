0x000000:
    if !(== global.plot 5s) goto 0x000028
0x000014:
    push (== self.conversation 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000070
0x000030:
    self.tor = (instance_create[]:int32 (var 862s) (var 100s) (var 60s))
    self.conversation = 1s
    global.interact = 1s
0x000070:
    exit
