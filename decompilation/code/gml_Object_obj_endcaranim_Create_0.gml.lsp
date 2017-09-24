0x000000:
    self.cary = 0s
    self.car_index = 0s
    self.siner = 0s
    self.image_speed = 0.5d
    self.bgx = 0s
    self.x = -150s
    self.hspeed = 2s
    self.sans = (instance_create[]:int32 (var 1363s) (var 100s) (var -420s))
    push 2447s
    stog.sprite_index* = (int32 self.sans)
    push 0.5d
    stog.image_speed* = (int32 self.sans)
    push 1s
    stog.visible* = (int32 self.sans)
    push 2s
    stog.hspeed* = (int32 self.sans)
    self.birb = (scr_marker[]:int32 (var 1596s) (var 10s) (var -100s))
    push 1100000
    stog.depth* = (int32 self.birb)
    push 2s
    stog.hspeed* = (int32 self.birb)
    push 0.2d
    stog.image_speed* = (int32 self.birb)
    push -1s
    stog.image_xscale* = (int32 self.birb)
    self.timer = 0s
    self.td = 0s
    call (caster_play[]:int32 (var 1s) (var 1s) (var 429s))
    global.inbattle = 0s
0x0001C8:
    exit
