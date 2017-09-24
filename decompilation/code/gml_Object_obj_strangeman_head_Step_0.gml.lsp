0x000000:
    self.siner = (+ self.siner 1s)
    self.siner2 = (+ self.siner2 self.siner2v)
    self.x = (+ self.x (/ (* (sin[]:int32 (/ self.siner self.s)) self.sf) (double 2s)))
    self.y = (+ self.y (/ (* (sin[]:int32 (/ self.siner2 self.s)) self.sf2) (double 2s)))
    self.hspeed = self.hmem
    self.counter = (+ self.counter 1s)
    if !(> self.counter 30s) goto 0x000180
0x000100:
    if !(< (+ 743.y 6s) self.y) goto 0x000140
0x000120:
    self.vspeed = (- self.vspeed 0.05d)
0x000140:
    if !(> (+ 743.y 6s) self.y) goto 0x000180
0x000160:
    self.vspeed = (+ self.vspeed 0.05d)
0x000180:
    if !(< self.x -100s) goto 0x0001A0
0x000194:
    call (instance_destroy[]:int32 )
0x0001A0:
    exit
