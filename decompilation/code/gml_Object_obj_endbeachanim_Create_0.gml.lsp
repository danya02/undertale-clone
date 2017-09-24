0x000000:
    self.alphys = (instance_create[]:int32 (var 1363s) (var 52s) (var 44s))
    push 0.2d
    stog.image_speed* = (int32 self.alphys)
    push 2432s
    stog.sprite_index* = (int32 self.alphys)
    push 1s
    stog.visible* = (int32 self.alphys)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.alphys)
    self.headsprite = 2439s
    self.head_index = 0s
    self.headx = 0s
    self.heady = 0s
    self.image_speed = 0s
    self.con = 0s
    self.timer = -120s
    self.active = 1s
    self.shuffle = 0s
    self.x = (- self.x 1s)
    self.image_index = 1s
    self.crack = 0s
    self.ctime = 0s
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -5s 3s:endsong)
    global.inbattle = 0s
    self.o = (scr_marker[]:int32 (var 2428s) (var 175s) (var 18s))
    push 200000
    stog.depth* = (int32 self.o)
    push 0.1d
    stog.image_speed* = (int32 self.o)
    self.r = (scr_marker[]:int32 (var 2427s) (var 145s) (var 113s))
    push 200000
    stog.depth* = (int32 self.r)
    push 0.25d
    stog.image_speed* = (int32 self.r)
    self.l = (scr_marker[]:int32 (var 2426s) (var 131s) (var 23s))
    push 200000
    stog.depth* = (int32 self.l)
    push 0.2d
    stog.image_speed* = (int32 self.l)
0x0002A8:
    exit
