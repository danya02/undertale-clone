0x000000:
    self.writer = (instance_create[]:int32 (var 782s) (+ self.argument1 10s) (+ self.argument0 30s))
    self.blcon = (instance_create[]:int32 (var 188s) (- (int32 self.writer):y 10s) (- (int32 self.writer):x 30s))
    push self.writer
    stog.parent* = (int32 self.blcon)
    if !(== self.argument2 1s) goto 0x0000D0
0x0000B8:
    push 30s
    stog.sprite_index* = (int32 self.blcon)
0x0000D0:
    if !(== self.argument2 2s) goto 0x00014C
0x0000E4:
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    stog.writingy* = (- (int32 self.writer):writingy 20s)
    stog.writingx* = (- (int32 self.writer):writingx 20s)
0x00014C:
    push (int32 self.writer)
    push (int32 self.writer)
    if !(== self.argument2 3s) goto 0x0001A0
0x000160:
    push 29s
    stog.sprite_index* = (int32 self.blcon)
    stog.writingy* = (- (int32 self.writer):writingy 20s)
0x0001A0:
    push (int32 self.writer)
    if !(== self.argument2 4s) goto 0x0001F4
0x0001B4:
    push 25s
    stog.sprite_index* = (int32 self.blcon)
    stog.writingx* = (- (int32 self.writer):writingx 10s)
0x0001F4:
    exit
