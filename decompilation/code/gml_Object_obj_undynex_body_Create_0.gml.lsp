0x000000:
    self.siner = 0s
    self.eyetimer = 0s
    self.eye_on = 0s
    self.slashno = 0s
    self.movetype = 0s
    self.larm = (instance_create[]:int32 (var 1363s) (+ self.y 78s) (+ self.x 64s))
    push 312s
    stog.sprite_index* = (int32 self.larm)
    push 2s
    stog.image_xscale* = (int32 self.larm)
    push 2s
    stog.image_yscale* = (int32 self.larm)
    push 7s
    stog.depth* = (int32 self.larm)
    self.arm_v = 0s
    push 0s
    stog.visible* = (int32 self.larm)
    self.facetype = 0s
    self.heady = 0s
    self.pause = 0s
    self.shakify = 0s
0x000128:
    exit
