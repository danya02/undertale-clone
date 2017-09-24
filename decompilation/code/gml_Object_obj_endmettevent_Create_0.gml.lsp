0x000000:
    self.legx = 0s
    self.legrot_r = 0s
    self.legrot_l = 0s
    self.bodyy = 0s
    self.con = 0s
    self.army = 0s
    self.siner = 0s
    self.leg = 0s
    self.timer = 0s
    self.active = 0s
    self.main_timer = -70s
    self.bpants = (instance_create[]:int32 (var 1363s) (var 35s) (var 210s))
    push 2457s
    stog.sprite_index* = (int32 self.bpants)
    push 0s
    stog.image_speed* = (int32 self.bpants)
    push 1s
    stog.visible* = (int32 self.bpants)
    push 1010s
    stog.depth* = (int32 self.bpants)
    self.dtable = (instance_create[]:int32 (var 1363s) (var 60s) (var 80s))
    push 2456s
    stog.sprite_index* = (int32 self.dtable)
    push 0.25d
    stog.image_speed* = (int32 self.dtable)
    push 1s
    stog.visible* = (int32 self.dtable)
    push 1010s
    stog.depth* = (int32 self.dtable)
    self.napsta = (instance_create[]:int32 (var 1363s) (var 30s) (var 98s))
    push 1129s
    stog.sprite_index* = (int32 self.napsta)
    push 0.25d
    stog.image_speed* = (int32 self.napsta)
    push 1s
    stog.visible* = (int32 self.napsta)
    push 1011s
    stog.depth* = (int32 self.napsta)
    self.shyren = (instance_create[]:int32 (var 1363s) (var 20s) (var 70s))
    push 2455s
    stog.sprite_index* = (int32 self.shyren)
    push 0.1d
    stog.image_speed* = (int32 self.shyren)
    push 1s
    stog.visible* = (int32 self.shyren)
    push 1021s
    stog.depth* = (int32 self.shyren)
    stog.alarm[5s] = 5s
    push -5s
    call (caster_stop[]:int32 3s:endsong)
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -5s 5s:endsong)
    global.inbattle = 0s
0x000324:
    exit
