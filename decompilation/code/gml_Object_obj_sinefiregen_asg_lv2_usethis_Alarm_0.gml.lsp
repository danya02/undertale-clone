0x000000:
    self.s = (+ self.s 1.5d)
    push (var 474s)
    push (+ (+ 130s (* (sin[]:int32 (/ self.off (double 5s))) 12s)) (* (sin[]:int32 (/ self.off (double 5s))) 12s))
    push -5s
    self.fire = (instance_create[]:int32 0s:idealborder -5s (+ (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) (* (cos[]:int32 (/ self.off (double 6s))) 20s)))
    push 3.5d
    stog.sf* = (int32 self.fire)
    push 4s
    stog.vspeed* = (int32 self.fire)
    push self.s
    stog.s* = (int32 self.fire)
    self.side = (+ self.side 1s)
    if !(>= self.side 4s) goto 0x000198
0x000178:
    self.side = (choose[]:int32 (var -1s) (var -2s))
0x000198:
    if !(<= self.side 1s) goto 0x0001C4
0x0001AC:
    push 10s
    stog.sv* = (int32 self.fire)
0x0001C4:
    if !(>= self.side 1s) goto 0x0001F0
0x0001D8:
    push -10s
    stog.sv* = (int32 self.fire)
0x0001F0:
    stog.alarm[0s] = 5s
    self.off = (+ self.off 1s)
    stog.vspeed* = (+ (int32 self.fire):vspeed (* (sin[]:int32 (/ self.off (double 6s))) 0.2d))
0x00026C:
    exit
