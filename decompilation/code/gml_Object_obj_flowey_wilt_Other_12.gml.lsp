0x000000:
    [obj_borderparent].visible = 1s
    call (instance_create[]:int32 (var 748s) self.memy self.memx)
    push (var 756s)
    push -5s
    self.fightbt2 = (instance_create[]:int32 (+ 2s:idealborder 50s) -5s (+ 0s:idealborder 50s))
    push 2s
    stog.type* = (int32 self.fightbt2)
    push 5s
    stog.sprite_index* = (int32 self.fightbt2)
    push (var 756s)
    push -5s
    self.sparebt2 = (instance_create[]:int32 (+ 2s:idealborder 50s) -5s (- 1s:idealborder 150s))
    push 3s
    stog.type* = (int32 self.sparebt2)
    push 9s
    stog.sprite_index* = (int32 self.sparebt2)
0x000120:
    exit
