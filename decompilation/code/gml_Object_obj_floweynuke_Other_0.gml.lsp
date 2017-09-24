0x000000:
    if !(> self.y 400s) goto 0x000028
0x000014:
    push (== self.fader 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000070
0x000030:
    call (instance_create[]:int32 (var 1634s) (- self.room_height 150s) (- self.x 75s))
    self.fader = 1s
0x000070:
    exit
