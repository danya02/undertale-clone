0x000000:
    push (var 1017s)
    self.newsnow = (instance_create[]:int32 -1s (- (int32 self.view_current):view_yview 10s) self.x)
    push 1s
    stog.falling* = (int32 self.newsnow)
    push self.ystart
    stog.specialy* = (int32 self.newsnow)
0x000074:
    exit
