0x000000:
    self.no = 0s
    self.dp = 0s
    self.nod = 0s
    push -5s
    if !(> 490s:flag 0s) goto 0x000050
0x000040:
    call (instance_destroy[]:int32 )
    exit
0x000050:
    if (<= 30s 0) goto 0x0000D0
0x000068:
    push 30s
    stog.dp[(int32 self.no)] = (instance_create[]:int32 (var 1556s) (var 0s) (var 0s))
    self.no = (+ self.no 1s)
    if (bool (- pop 1)) goto 0x000068
0x0000D0:
    push (- pop 1)
    pop
    self.image_speed = 0s
    self.con = 0s
    self.size = 0s
    self.drawball = 0s
    self.dx = self.x
    self.dy = self.y
    self.banim = 0s
0x000130:
    exit
