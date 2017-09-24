0x000000:
    self.direction = 0s
    if !(> self.talkedto 0s) goto 0x00003C
0x000020:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00007C
0x000044:
    call (instance_create[]:int32 (var 863s) self.y (- self.x 12s))
    call (instance_destroy[]:int32 )
0x00007C:
    exit
