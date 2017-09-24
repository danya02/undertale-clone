0x000000:
    self.xamt = (- (+ (int32 self.o):x 4s) self.x)
    self.rotspeed = (+ self.rotspeed (floor[]:int32 (/ self.xamt (double 6s))))
    pushenv (int32 self.o) 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    exit
