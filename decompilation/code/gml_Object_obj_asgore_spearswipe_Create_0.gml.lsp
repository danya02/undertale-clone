0x000000:
    self.x = (+ self.x 180s)
    self.i = 0s
    if !(< self.i 10s) goto 0x000070
0x000038:
    stog.type[(int32 self.i)] = 1s
    self.i = (+ self.i 1s)
    goto 0x000024
0x000070:
    stog.type[0s] = 1s
    stog.type[1s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[2s] = 2s
    stog.type[3s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[4s] = 1s
    stog.type[5s] = (choose[]:int32 (var 2s) (var 1s))
    self.amt = 2s
    self.curamt = 0s
    self.initswipewait = 8s
    self.swipewait = 0s
    self.swipetimer = 0s
    self.image_speed = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.con = 0s
    self.quick = 0s
    self.cutspeed = 0.5d
    self.hitted = 0s
    self.cutsfx = (caster_load[]:int32 (var "music/sfx_cinematiccut.ogg"))
    self.cutsfxN = 0s
    stog.cutsfxI[0s] = self.cutsfx
    [obj_asgorespear].visible = 0s
    self.cutsdone = 0s
0x000214:
    exit
