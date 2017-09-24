0x000000:
    self.stretchwidth = 450s
    self.stretchfactor = (/ (double 450s) global.floweymaxhp)
    self.apparenthp = global.floweyhp
    self.actualhp = global.floweyhp
    self.maxhp = global.floweymaxhp
    self.negative = 0s
    self.dmg = global.damage
    stog.alarm[0s] = 2s
    self.i = 1s
    if !(!= self.dmg 0s) goto 0x0000D4
0x0000A8:
    self.vspeed = -4s
    self.gravity = 0.5d
    self.gravity_direction = 270s
0x0000D4:
    exit
