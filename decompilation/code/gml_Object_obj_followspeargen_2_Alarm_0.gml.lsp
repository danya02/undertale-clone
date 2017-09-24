0x000000:
    self.i = 0s
    if !(< self.i self.num) goto 0x00014C
0x000024:
    self.hx = (+ (+ 743.x 8s) (lengthdir_x[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    self.hy = (+ (+ 743.y 8s) (lengthdir_y[]:int32 (+ self.curang (* (/ self.i self.num) 360s)) self.rr))
    stog.spear[(int32 self.i)] = (instance_create[]:int32 (var 280s) self.hy self.hx)
    push self.fade
    push -1s
    stog.fade* = (int32 (int32 self.i):spear)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00014C:
    if !(== self.type 1s) goto 0x000174
0x000160:
    push (> self.rate 10s)
    goto 0x000178
0x000174:
    push 0s
0x000178:
    if !pop goto 0x000194
0x00017C:
    self.rate = (- self.rate 1s)
0x000194:
    if (== self.type 0s) goto 0x0001BC
0x0001A8:
    push (== self.type 3s)
    goto 0x0001C0
0x0001BC:
    push 1s
0x0001C0:
    if !pop goto 0x0001E0
0x0001C4:
    self.curang = (+ self.curang self.ang)
0x0001E0:
    if !(== self.type 1s) goto 0x000230
0x0001F4:
    self.curang = (+ self.curang (+ 10s (choose[]:int32 (var 30s) (var 20s) (var 10s))))
0x000230:
    stog.alarm[0s] = self.rate
    if !(== self.type 2s) goto 0x000318
0x00025C:
    self.siner = (+ self.siner 1s)
    self.ang = (* (sin[]:int32 (/ self.siner (double 16s))) 16s)
    if !(< (abs[]:int32 self.ang) 2s) goto 0x0002FC
0x0002BC:
    if !(< self.ang 0s) goto 0x0002DC
0x0002D0:
    self.ang = -2s
0x0002DC:
    if !(> self.ang 0s) goto 0x0002FC
0x0002F0:
    self.ang = 2s
0x0002FC:
    self.curang = (+ self.curang self.ang)
0x000318:
    exit
