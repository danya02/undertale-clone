0x000000:
    if !(< self.nowsize self.size) goto 0x000038
0x000018:
    self.nowsize = (+ self.nowsize 0.1d)
0x000038:
    if !(> self.nowsize self.size) goto 0x000060
0x000050:
    self.nowsize = self.size
0x000060:
    self.image_xscale = (+ self.nowsize (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    self.image_yscale = (+ self.nowsize (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    if !(== self.dont 0s) goto 0x00018C
0x0000F4:
    self.xprev4 = self.xprev3
    self.yprev4 = self.yprev3
    self.xprev3 = self.xprev2
    self.yprev3 = self.yprev2
    self.xprev2 = self.xprevious
    self.yprev2 = self.yprevious
    self.x = (int32 self.parent):xprev4
    self.y = (int32 self.parent):yprev4
0x00018C:
    if !(== self.dont 1s) goto 0x0001AC
0x0001A0:
    call (instance_destroy[]:int32 )
0x0001AC:
    self.siner = (+ self.siner 1s)
0x0001C4:
    exit
