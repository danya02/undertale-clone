0x000000:
    self.faketime = (- self.faketime 1s)
    self.ok = 0s
    if !(<= self.col 0s) goto 0x00004C
0x000038:
    push (!= global.interact 1s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    self.ok = 1s
0x000060:
    if !(> self.faketime 0s) goto 0x000088
0x000074:
    push (!= global.interact 1s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x00009C
0x000090:
    self.ok = 1s
0x00009C:
    if !(== self.ok 1s) goto 0x00013C
0x0000B0:
    self.faketime = -1s
    call (snd_play[]:int32 (var 106s))
    [obj_bouncetileparent].goldshift = 1s
    if !(bool (instance_exists[]:int32 (var 1541s))) goto 0x000100
0x0000F4:
    [obj_rblock].goldshift = 1s
0x000100:
    self.image_index = 1s
    if !(== self.on 0s) goto 0x000130
0x000120:
    self.on = 1s
    goto 0x00013C
0x000130:
    self.on = 0s
0x00013C:
    self.col = 3s
0x000148:
    exit
