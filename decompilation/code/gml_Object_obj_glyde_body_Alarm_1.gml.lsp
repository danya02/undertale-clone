0x000000:
    self.bl = (instance_create[]:int32 (var 226s) (- (+ self.y (* self.gg 10s)) 8s) (+ (+ self.x 72s) (* self.gg 8s)))
    if !(> global.turntimer 33s) goto 0x000088
0x000074:
    stog.alarm[1s] = 32s
0x000088:
    exit
