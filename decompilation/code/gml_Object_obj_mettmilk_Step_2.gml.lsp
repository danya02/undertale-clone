0x000000:
    if !(== self.con 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00005C
0x000038:
    [obj_mettaton_npc].milk = 1s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00005C:
    exit
