0x000000:
    self.myinteract = 0s
    self.image_yscale = 4s
    stog.alarm[3s] = 1s
    self.siner = 0s
    self.basic = 1s
    self.canttalk = 0s
    self.disable = 0s
    self.sold = 0s
    if !(>= global.plot 185s) goto 0x0000BC
0x00007C:
    if !(== self.room 139s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    if !(== self.room 187s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    exit
