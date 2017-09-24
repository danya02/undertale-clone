0x000000:
    if !(> self.y 761.y) goto 0x000024
0x000018:
    call (instance_destroy[]:int32 )
0x000024:
    if !(== self.green 1s) goto 0x0000E0
0x000038:
    if !(bool (instance_exists[]:int32 self.kid)) goto 0x0000E0
0x000050:
    push (- self.x 18s)
    stog.x* = (int32 self.kid)
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x0000BC
0x000098:
    push (- self.x 28s)
    stog.x* = (int32 self.kid)
0x0000BC:
    push (- self.y 8s)
    stog.y* = (int32 self.kid)
0x0000E0:
    exit
