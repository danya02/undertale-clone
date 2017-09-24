0x000000:
    if !(== self.shakehand 2s) goto 0x00002C
0x000014:
    self.image_index = 2s
    self.conversation = 4s
0x00002C:
    if !(== self.shakehand 1s) goto 0x000078
0x000040:
    self.image_index = 1s
    self.shakehand = (+ self.shakehand 1s)
    stog.alarm[3s] = 60s
0x000078:
    if !(== self.shakehand 0s) goto 0x000140
0x00008C:
    self.sprite_index = 1364s
    [obj_mainchara].visible = 0s
    self.image_index = 0s
    self.fsound = (caster_load[]:int32 (var "music/whoopee.ogg"))
    self.rshot = (caster_load[]:int32 (var "music/rimshot.ogg"))
    global.currentsong = (caster_load[]:int32 (var "music/muscle.ogg"))
    global.currentsong2 = (caster_load[]:int32 (var "music/papyrus.ogg"))
    self.shakehand = 2s
    stog.alarm[3s] = 90s
0x000140:
    exit
