0x000000:
    if !(== (instance_exists[]:int32 self.myobject) 0s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    if !(== self.bounce 0s) goto 0x000058
0x000040:
    push (bool (instance_exists[]:int32 self.myobject))
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x000114
0x000060:
    self.remvspeed = (int32 self.myobject):vspeed
    self.remgravity = (int32 self.myobject):gravity
    push 270s
    stog.gravity_direction* = (int32 self.myobject)
    push (- self.bounceamt)
    stog.vspeed* = (int32 self.myobject)
    push self.grav
    stog.gravity* = (int32 self.myobject)
    self.nowy = (int32 self.myobject):y
    self.bounce = 1s
0x000114:
    if !(== self.bounce 1s) goto 0x0001C4
0x000128:
    if !(>= (int32 self.myobject):y (- self.nowy (int32 self.myobject):vspeed)) goto 0x0001C4
0x000164:
    push self.nowy
    stog.y* = (int32 self.myobject)
    push self.remgravity
    stog.gravity* = (int32 self.myobject)
    push self.remvspeed
    stog.vspeed* = (int32 self.myobject)
    call (instance_destroy[]:int32 )
0x0001C4:
    exit
