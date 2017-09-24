0x000000:
    if !(== self.shock 0s) goto 0x000078
0x000014:
    call (snd_play[]:int32 (var 51s))
    self.shk = (instance_create[]:int32 (var 1669s) self.y self.x)
    push self.object_index
    stog.obj* = (int32 self.shk)
    self.shock = 1s
0x000078:
    exit
