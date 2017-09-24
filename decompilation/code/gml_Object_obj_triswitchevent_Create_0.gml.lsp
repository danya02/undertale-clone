0x000000:
    self.image_yscale = 3s
    self.switches = 0s
    self.con = 0s
    self.deltaco = 0s
    if !(< global.plot 140s) goto 0x0000A0
0x000044:
    self.ff = (instance_create[]:int32 (var 1183s) (var 80s) (var 180s))
    push 0s
    stog.basic* = (int32 self.ff)
    push 5s
    stog.image_yscale* = (int32 self.ff)
    goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    self.donkeykongismyfavoritemarvelsuperhero = 0s
    self.won = 0s
0x0000C4:
    exit
