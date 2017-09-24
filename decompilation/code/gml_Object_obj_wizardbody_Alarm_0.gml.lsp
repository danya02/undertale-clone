0x000000:
    if !(< self.exist 10s) goto 0x000118
0x000014:
    stog.alarm[0s] = 5s
    call (instance_create[]:int32 (var 367s) (- (+ (- self.y 10s) (* self.som 4s)) (random[]:int32 (var 6s))) (+ (+ (+ self.offx self.x) 46s) (random[]:int32 (var 18s))))
    call (instance_create[]:int32 (var 367s) (- (+ self.y (* self.som 4s)) (random[]:int32 (var 6s))) (+ (- (+ self.offx self.x) 66s) (random[]:int32 (var 18s))))
0x000118:
    if !(>= self.exist 10s) goto 0x000270
0x00012C:
    stog.alarm[0s] = 5s
    if !(== (int32 self.parent):stare2 0s) goto 0x0001DC
0x000160:
    call (instance_create[]:int32 (var 367s) (- (+ (- self.y 10s) (* self.som 4s)) (random[]:int32 (var 6s))) (+ (+ (+ self.offx self.x) 46s) (random[]:int32 (var 18s))))
0x0001DC:
    if !(== (int32 self.parent):stare1 0s) goto 0x000270
0x0001FC:
    call (instance_create[]:int32 (var 367s) (- (+ self.y (* self.som 4s)) (random[]:int32 (var 6s))) (+ (- (+ self.offx self.x) 66s) (random[]:int32 (var 18s))))
0x000270:
    exit
