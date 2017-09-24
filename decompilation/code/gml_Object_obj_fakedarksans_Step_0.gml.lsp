0x000000:
    if !(bool (instance_exists[]:int32 (var 988s))) goto 0x00007C
0x000018:
    if !(< self.x (+ 988.x 28s)) goto 0x00007C
0x000038:
    call (instance_destroy[]:int32 )
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00007C
0x00005C:
    pushenv (int32 self.iii) 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    if !(< 1570.x self.gert) goto 0x0000A0
0x000094:
    self.hspeed = 8s
0x0000A0:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000C8
0x0000B8:
    self.gert = 1570.x
0x0000C8:
    exit
