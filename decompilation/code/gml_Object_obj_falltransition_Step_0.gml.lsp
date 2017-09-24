0x000000:
    if !(== self.con 1s) goto 0x00005C
0x000014:
    global.interact = 1s
    if !(>= 1570.y (- self.finaly 3s)) goto 0x00005C
0x000040:
    [obj_mainchara].y = self.finaly
    self.con = 2s
0x00005C:
    if !(== self.con 2s) goto 0x0000B8
0x000070:
    global.phasing = 0s
    [obj_mainchara].vspeed = 0s
    global.interact = 0s
    [obj_mainchara].image_alpha = 1s
    self.con = 3s
    call (instance_destroy[]:int32 )
0x0000B8:
    exit
