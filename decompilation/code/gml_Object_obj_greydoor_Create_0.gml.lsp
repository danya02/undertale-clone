0x000000:
    self.myinteract = 0s
    self.touched = 0s
    self.ch = (choose[]:int32 (var 9s) (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(!= self.ch 4s) goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    self.con = 0s
    self.image_speed = 0s
0x0000B0:
    exit
