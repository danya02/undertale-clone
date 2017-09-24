0x000000:
    self.i = 0s
    if (<= 8s 0) goto 0x0000D4
0x000024:
    push 8s
    self.bobkid = (instance_create[]:int32 (var 427s) self.y self.x)
    push (* (/ (degtorad[]:int32 (var 360s)) (double 2s)) self.i)
    stog.siner* = (int32 self.bobkid)
    push self.id
    stog.parent* = (int32 self.bobkid)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000024
0x0000D4:
    push (- pop 1)
    pop
    self.vspeed = 1s
0x0000E4:
    exit
