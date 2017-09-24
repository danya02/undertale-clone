0x000000:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x00009C
0x000018:
    self.dongusvol = (- self.dongusvol 0.02d)
    call (caster_set_volume[]:int32 self.dongusvol self.dangus)
    call (caster_set_volume[]:int32 (- self.dongusvol 1s) self.dongus)
    call (caster_set_volume[]:int32 (- self.dongusvol 2s) self.dungus)
0x00009C:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000138
0x0000B4:
    self.dongusvol = (+ self.dongusvol 0.02d)
    call (caster_set_volume[]:int32 self.dongusvol self.dangus)
    call (caster_set_volume[]:int32 (- self.dongusvol 1s) self.dongus)
    call (caster_set_volume[]:int32 (- self.dongusvol 2s) self.dungus)
0x000138:
    exit
