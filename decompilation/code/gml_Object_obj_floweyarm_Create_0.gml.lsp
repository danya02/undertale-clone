0x000000:
    self.acon = 0s
    self.acon2 = 0s
    self.siner = 0s
    self.reach = 0s
    self.reach2 = 0s
    self.reach3 = 0s
    self.made = 0s
    self.siner = 0s
    self.frozen = 0s
    self.desperate = 1s
    if !(> self.image_xscale 0s) goto 0x0000A4
0x00008C:
    push (bool (instance_exists[]:int32 (var 1585s)))
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000BC
0x0000AC:
    [obj_flowey_master].rightarm = self.id
0x0000BC:
    if !(< self.image_xscale 0s) goto 0x0000E8
0x0000D0:
    push (bool (instance_exists[]:int32 (var 1585s)))
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000100
0x0000F0:
    [obj_flowey_master].leftarm = self.id
0x000100:
    call (scr_floweybodysave[]:int32 )
0x00010C:
    exit
