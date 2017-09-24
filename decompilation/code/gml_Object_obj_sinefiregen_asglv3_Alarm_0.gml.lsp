0x000000:
    self.s = (+ self.s 2s)
    push (var 474s)
    push (+ (+ 130s (* (sin[]:int32 (/ self.off (double 5s))) 12s)) (* (sin[]:int32 (/ self.off (double 5s))) 12s))
    push -5s
    self.fire = (instance_create[]:int32 0s:idealborder -5s (+ (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) (* (cos[]:int32 (/ self.off (double 6s))) 20s)))
    push 5s
    stog.sf* = (int32 self.fire)
    push 5s
    stog.vspeed* = (int32 self.fire)
    push self.s
    stog.s* = (int32 self.fire)
    self.side = (+ self.side 1s)
    if !(>= self.side 4s) goto 0x000188
0x000168:
    self.side = (choose[]:int32 (var -1s) (var -2s))
0x000188:
    if !(<= self.side 1s) goto 0x0001B4
0x00019C:
    push 9s
    stog.sv* = (int32 self.fire)
0x0001B4:
    if !(>= self.side 1s) goto 0x0001E0
0x0001C8:
    push -9s
    stog.sv* = (int32 self.fire)
0x0001E0:
    stog.alarm[0s] = 6s
    self.off = (+ self.off 1s)
    stog.vspeed* = (+ (int32 self.fire):vspeed (* (sin[]:int32 (/ self.off (double 6s))) 0.2d))
0x00025C:
    exit
