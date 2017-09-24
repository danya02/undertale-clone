0x000000:
    self.g = (instance_position[]:int32 (var 6s) (+ self.y 70s) (+ self.x 10s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x000070
0x000050:
    pushenv (int32 self.g) 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    popenv 0x000060
0x000070:
    exit
