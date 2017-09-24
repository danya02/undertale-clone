0x000000:
    if !(< self.angle 360s) goto 0x000130
0x000014:
    self.iii = (instance_create[]:int32 self.bullettype self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x0000B8
0x000054:
    push self.angleadd
    stog.angleadd* = (int32 self.iii)
    push self.angle
    stog.angle* = (int32 self.iii)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x0000B8:
    self.x = (+ self.x (lengthdir_x[]:int32 self.angle self.radius))
    self.y = (+ self.y (lengthdir_y[]:int32 self.angle self.radius))
    self.angle = (+ self.angle self.angleadd)
    goto 0x000000
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    exit
