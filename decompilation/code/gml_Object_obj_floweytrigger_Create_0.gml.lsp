0x000000:
    self.image_xscale = 50s
    self.conversation = 0s
    if !(> global.plot 0s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    self.faketor = 0s
    self.alter = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.a = (ini_read_real[]:int32 (var 0s) (var "Alter") (var "Flowey"))
    self.b = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.c = (ini_read_real[]:int32 (var 0s) (var "SPECIALK") (var "Flowey"))
    call (ini_close[]:int32 )
    if (> self.a 0s) goto 0x000140
0x000118:
    if (> self.b 0s) goto 0x000140
0x00012C:
    push (> self.c 0s)
    goto 0x000144
0x000140:
    push 1s
0x000144:
    if !pop goto 0x000154
0x000148:
    self.alter = 1s
0x000154:
    if !(== self.alter 1s) goto 0x000180
0x000168:
    pushenv 875s 0x00017C
0x000170:
    self.visible = 0s
0x00017C:
    popenv 0x000170
0x000180:
    exit
