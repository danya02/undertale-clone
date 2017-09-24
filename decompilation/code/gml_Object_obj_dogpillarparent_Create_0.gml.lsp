0x000000:
    self.g = 0s
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(== self.object_index 962s) goto 0x0000FC
0x000044:
    push -5s
    if !(== 55s:flag 1s) goto 0x000090
0x000060:
    self.g = 1s
    self.sprite_index = 1183s
    self.y = (+ self.y 20s)
0x000090:
    push -5s
    if !(== 55s:flag 0s) goto 0x0000C0
0x0000AC:
    push (< global.plot 67s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000F8
0x0000C8:
    self.g = 2s
    self.sprite_index = 1269s
    self.y = (+ self.y 30s)
0x0000F8:
    goto 0x000148
0x0000FC:
    push -5s
    if (== 55s:flag 1s) goto 0x000134
0x000118:
    push -5s
    push (== 55s:flag 0s)
    goto 0x000138
0x000134:
    push 1s
0x000138:
    if !pop goto 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x00017C:
    exit
