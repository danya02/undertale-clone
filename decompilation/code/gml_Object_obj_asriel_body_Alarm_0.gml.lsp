0x000000:
    if !(== self.aimage 1s) goto 0x0000E8
0x000014:
    self.o = (instance_create[]:int32 (var 571s) (+ self.y self.rely) (+ self.x self.relx))
    push self.sprite_index
    stog.sprite_index* = (int32 self.o)
    push self.image_index
    stog.image_index* = (int32 self.o)
    push 0s
    stog.image_speed* = (int32 self.o)
    push 0.5d
    stog.image_alpha* = (int32 self.o)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.o)
0x0000E8:
    stog.alarm[0s] = 1s
0x0000FC:
    exit
