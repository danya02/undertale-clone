0x000000:
    self.tor = (instance_create[]:int32 (var 1363s) (var 170s) (var 188s))
    push 2452s
    stog.sprite_index* = (int32 self.tor)
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 1s
    stog.visible* = (int32 self.tor)
    self.asg = (instance_create[]:int32 (var 1363s) (var 365s) (var 240s))
    push 2450s
    stog.sprite_index* = (int32 self.asg)
    push 0.1d
    stog.image_speed* = (int32 self.asg)
    push 1s
    stog.visible* = (int32 self.asg)
    stog.alarm[5s] = 10s
    self.image_speed = 0.2d
    self.hspeed = 6s
    self.con = 0s
    self.timer = 0s
    self.x = -700s
    stog.view_xview[0s] = -180s
    self.td = 0s
    self.t3 = (instance_create[]:int32 (var 1689s) (var 140s) (var 15s))
    push "TORIEL"
    stog.text* = (int32 self.t3)
    push "by Toby"
    stog.text2* = (int32 self.t3)
    push -5s
    call (caster_stop[]:int32 5s:endsong)
    push -5s
    call (caster_stop[]:int32 6s:endsong)
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -5s 7s:endsong)
    self.vol = 0.9d
    global.inbattle = 0s
0x000244:
    exit
