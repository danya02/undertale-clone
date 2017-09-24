0x000000:
    global.typer = 33s
    self.blcontype = 1s
    self.blcon = (instance_create[]:int32 (var 188s) (- self.ystart 10s) (+ (+ self.xstart 110s) 60s))
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push self.blconwd
    stog.parent* = (int32 self.blcon)
0x0000C4:
    exit
