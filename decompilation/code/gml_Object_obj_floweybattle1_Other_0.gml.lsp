0x000000:
    if !(== (instance_exists[]:int32 (var 200s)) 0s) goto 0x000050
0x00001C:
    call (instance_create[]:int32 (var 200s) (- self.ystart 80s) (+ self.xstart 500s))
0x000050:
    exit
