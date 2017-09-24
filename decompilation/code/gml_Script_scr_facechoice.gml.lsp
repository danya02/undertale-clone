0x000000:
    if !(== global.facechoice 1s) goto 0x000084
0x000014:
    call (instance_create[]:int32 (var 765s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 33s))
    call (instance_create[]:int32 (var 764s) (var 0s) (var 0s))
0x000084:
    if !(== global.facechoice 2s) goto 0x0000E4
0x000098:
    call (instance_create[]:int32 (var 768s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 36s))
0x0000E4:
    if !(== global.facechoice 3s) goto 0x000144
0x0000F8:
    call (instance_create[]:int32 (var 776s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 35s))
0x000144:
    if !(== global.facechoice 4s) goto 0x0001A4
0x000158:
    call (instance_create[]:int32 (var 775s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 35s))
0x0001A4:
    if !(== global.facechoice 5s) goto 0x000204
0x0001B8:
    call (instance_create[]:int32 (var 777s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 40s))
0x000204:
    if !(== global.facechoice 6s) goto 0x000264
0x000218:
    call (instance_create[]:int32 (var 770s) (+ (int32 self.writer):y 25s) (- (int32 self.writer):x 39s))
0x000264:
    if !(== global.facechoice 7s) goto 0x0002C4
0x000278:
    call (instance_create[]:int32 (var 771s) (+ (int32 self.writer):y 20s) (- (int32 self.writer):x 40s))
0x0002C4:
    if !(== global.facechoice 8s) goto 0x000324
0x0002D8:
    call (instance_create[]:int32 (var 773s) (+ (int32 self.writer):y 45s) (- (int32 self.writer):x 18s))
0x000324:
    if !(== global.facechoice 9s) goto 0x000384
0x000338:
    call (instance_create[]:int32 (var 772s) (+ (int32 self.writer):y 30s) (- (int32 self.writer):x 30s))
0x000384:
    exit
