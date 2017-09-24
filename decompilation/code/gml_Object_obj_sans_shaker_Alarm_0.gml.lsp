0x000000:
    stog.view_xview[0s] = (* (choose[]:int32 (var 1s) (var -1s)) self.intensity)
    stog.view_yview[0s] = (* (choose[]:int32 (var -1s) (var 1s)) self.intensity)
    self.intensity = (- self.intensity 1s)
    if !(== self.intensity 0s) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    stog.alarm[0s] = 1s
0x0000B4:
    exit
