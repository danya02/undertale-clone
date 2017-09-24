0x000000:
    if !(>= self.image_index 1s) goto 0x000028
0x000014:
    push (== self.throw 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000070
0x000030:
    self.throw = 1s
    call (instance_create[]:int32 (var 1070s) (+ self.y 20s) (+ self.x 25s))
0x000070:
    if !(>= self.image_index 3s) goto 0x000090
0x000084:
    self.image_speed = 0s
0x000090:
    exit
