0x000000:
    self.x = 315s
    self.y = 50s
    self.pause = 0s
    self.siner = 0s
    self.rely = 0s
    self.relx = 0s
    self.headrot = 0s
    self.armrot_l = 0s
    self.armrot_r = 0s
    self.torsorot = 0s
    stog.alarm[0s] = 1s
    self.aimage = 0s
    self.normal = 1s
    self.startx = self.x
    self.starty = self.y
    self.starcon = 0s
    self.type = 0s
    self.bladecon = 0s
    self.specialarm = 0s
    self.arm_alpha = 1s
    self.heady = 0s
    self.headx = 0s
    self.guncon = 0s
    self.gonercon = 0s
    self.s_s = 0s
    global.faceemotion = 0s
    self.shrug = 0s
    self.shrug_x = 0s
    self.aligncon = 1s
    self.specialnormal = 1s
    self.n_siner = 0s
    self.cr = (caster_load[]:int32 (var "music/create.ogg"))
    self.powersfx = (caster_load[]:int32 (var "music/sfx/sfx_spellcast.ogg"))
    self.sn = 0s
    pushenv 185s 0x0001DC
0x0001D0:
    call (instance_destroy[]:int32 )
0x0001DC:
    popenv 0x0001D0
0x0001E0:
    push -5s
    if !(> 502s:flag 0s) goto 0x000218
0x0001FC:
    push -5s
    push (== 7s:flag 0s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000238
0x000220:
    self.specialnormal = 0s
    self.aligncon = 0s
0x000238:
    self.darker = 0s
    self.darker_x = 0s
    self.u_gen = 0s
    self.h_mode = 0s
    self.transform = 0s
    self.stetch = 0s
    push -5s
    if !(> 502s:flag 0s) goto 0x0002A8
0x00029C:
    self.aimage = 1s
0x0002A8:
    exit
