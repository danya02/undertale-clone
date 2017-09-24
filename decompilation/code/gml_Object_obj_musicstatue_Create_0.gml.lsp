0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.mask = (instance_create[]:int32 (var 1363s) self.y self.x)
    push 1588s
    stog.sprite_index* = (int32 self.mask)
    push 0s
    stog.image_speed* = (int32 self.mask)
    self.shadow = (instance_create[]:int32 (var 1363s) (var 0s) (var 0s))
    push 1583s
    stog.sprite_index* = (int32 self.shadow)
    push 0.4d
    stog.image_alpha* = (int32 self.shadow)
    push 1000s
    stog.depth* = (int32 self.shadow)
    push 1s
    stog.visible* = (int32 self.shadow)
    self.light = (instance_create[]:int32 (var 1363s) (var 0s) (var 0s))
    push 1584s
    stog.sprite_index* = (int32 self.light)
    push 0.1d
    stog.image_alpha* = (int32 self.light)
    push 1000s
    stog.depth* = (int32 self.light)
    push 1s
    stog.visible* = (int32 self.light)
    self.bgvol = (caster_get_volume[]:int32 global.currentsong)
    self.boxvol = 0.25d
    self.boxactive = 0s
    push -5s
    if !(== 86s:flag 1s) goto 0x000288
0x000208:
    self.boxactive = 1s
    push 1s
    stog.image_index* = (int32 self.mask)
    self.musicbox = (caster_load[]:int32 (var "music/musicbox.ogg"))
    self.image_index = 1s
    call (caster_loop[]:int32 (var 0.9d) (var 0.25d) self.musicbox)
0x000288:
    self.con = 0s
    stog.alarm[5s] = 2s
0x0002A8:
    exit
