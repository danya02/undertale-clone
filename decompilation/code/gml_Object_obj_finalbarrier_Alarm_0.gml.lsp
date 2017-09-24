0x000000:
    if !(< self.m self.maxm) goto 0x000094
0x000018:
    call (instance_create[]:int32 self.object_index (- (/ self.room_height (double 2s)) (/ self.room_height (+ self.m 1s))) (- (/ self.room_width (double 2s)) (/ self.room_width (+ self.m 1s))))
0x000094:
    exit
