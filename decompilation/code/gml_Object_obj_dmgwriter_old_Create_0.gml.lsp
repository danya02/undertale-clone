0x000000:
    push -5s
    self.stretchwidth = (int32 (int32 global.mytarget):monsterinstance):sprite_width
    push self.stretchwidth
    self.stretchfactor = (/ -5s (int32 global.mytarget):monstermaxhp)
    push -5s
    self.apparenthp = (int32 global.mytarget):monsterhp
    push -5s
    self.actualhp = (int32 global.mytarget):monsterhp
    push -5s
    self.maxhp = (int32 global.mytarget):monstermaxhp
    self.negative = 0s
    self.dmg = global.damage
    call (draw_set_color[]:int32 (var 255s))
    stog.alarm[0s] = 2s
    self.i = 1s
    if !(!= self.dmg 0s) goto 0x000148
0x00011C:
    self.vspeed = -4s
    self.gravity = 0.5d
    self.gravity_direction = 270s
0x000148:
    exit
