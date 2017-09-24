0x000000:
    if !(== self.jeffrey 0s) goto 0x000088
0x000014:
    self.sprite_index = 1274s
    self.al = (instance_create[]:int32 self.object_index (+ self.y 4s) (- self.x 55s))
    push 1s
    stog.jeffrey* = (int32 self.al)
    push 2145s
    stog.sprite_index* = (int32 self.al)
0x000088:
    exit
