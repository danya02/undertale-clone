0x000000:
    if !(== self.cl 0s) goto 0x0000B0
0x000014:
    global.battlegroup = self.battleno
    global.border = 0s
    other.x = other.xprevious
    other.y = other.yprevious
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    self.cl = 1s
    push -5s
    stog.flag[(+ 408s:flag 1s)] = 408s
    call (instance_destroy[]:int32 )
0x0000B0:
    exit
