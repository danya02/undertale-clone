0x000000:
    if !(bool (instance_exists[]:int32 (var 1414s))) goto 0x000080
0x000018:
    if (== 1414.level 1s) goto 0x000040
0x00002C:
    push (== 1414.level 0s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000080
0x000048:
    pushenv 1570s 0x00007C
0x000050:
    self.x = self.xprevious
    self.y = self.yprevious
    self.moving = 0s
0x00007C:
    popenv 0x000050
0x000080:
    exit
