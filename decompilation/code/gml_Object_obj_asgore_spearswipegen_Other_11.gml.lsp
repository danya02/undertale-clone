0x000000:
    self.jj = (instance_create[]:int32 (var 477s) (+ self.y 56s) (+ self.x 146s))
    push -1s
    if !(== (int32 self.typeno):type 1s) goto 0x000078
0x00005C:
    push 16754964
    stog.image_blend* = (int32 self.jj)
0x000078:
    push -1s
    if !(== (int32 self.typeno):type 2s) goto 0x0000B8
0x00009C:
    push 4235519
    stog.image_blend* = (int32 self.jj)
0x0000B8:
    if !(>= self.typeno self.typeamt) goto 0x000108
0x0000D0:
    push 632s
    stog.sprite_index* = (int32 self.jj)
    push 0.5d
    stog.image_speed* = (int32 self.jj)
0x000108:
    exit
