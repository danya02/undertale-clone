0x000000:
    if !(== self.oo 0s) goto 0x000024
0x000014:
    self.oo = 1s
    goto 0x000030
0x000024:
    self.oo = 0s
0x000030:
    if !(== self.oo 0s) goto 0x00006C
0x000044:
    push (- self.thisx self.shx)
    stog.x* = (int32 self.obj)
0x00006C:
    if !(== self.oo 1s) goto 0x0000A8
0x000080:
    push (+ self.thisx self.shx)
    stog.x* = (int32 self.obj)
0x0000A8:
    self.shx = (- self.shx 1s)
    if !(> self.shx 0s) goto 0x0000F0
0x0000D4:
    stog.alarm[1s] = self.shaketime
    goto 0x000118
0x0000F0:
    push self.thisx
    stog.x* = (int32 self.obj)
    call (instance_destroy[]:int32 )
0x000118:
    exit
