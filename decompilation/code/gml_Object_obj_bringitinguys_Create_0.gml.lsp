0x000000:
    self.shake = 0s
    self.guy = (instance_create[]:int32 (var 318s) (var 300s) (var -200s))
    push 8s
    stog.hspeed* = (int32 self.guy)
    stog.talk[0s] = 0s
    self.guy2 = (scr_marker[]:int32 (var 161s) (var 400s) (var -140s))
    push (- (int32 self.guy):depth 1s)
    stog.depth* = (int32 self.guy2)
    push 2s
    stog.image_index* = (int32 self.guy2)
    push 7s
    stog.hspeed* = (int32 self.guy2)
    stog.talk[1s] = 0s
    self.guy3 = (instance_create[]:int32 (var 362s) (var 180s) (var -220s))
    push (+ (int32 self.guy):depth 1s)
    stog.depth* = (int32 self.guy3)
    push 9s
    stog.hspeed* = (int32 self.guy3)
    stog.talk[2s] = 0s
    self.guy4 = (scr_marker[]:int32 (var 224s) (+ self.room_height 650s) (var 80s))
    push 2s
    stog.image_xscale* = (int32 self.guy4)
    push 2s
    stog.image_yscale* = (int32 self.guy4)
    push (+ (int32 self.guy):depth 2s)
    stog.depth* = (int32 self.guy4)
    push 0s
    stog.image_index* = (int32 self.guy4)
    push -7s
    stog.vspeed* = (int32 self.guy4)
    self.guy_r = (instance_create[]:int32 (var 336s) (var 280s) self.room_width)
    push self.object_index
    stog.parent* = (int32 self.guy_r)
    stog.alarm[(int32 self.guy_r)] = 0s
    push -7s
    stog.hspeed* = (int32 self.guy_r)
    stog.talk_r[0s] = 0s
    self.guy_r2 = (scr_marker[]:int32 (var 314s) (var 360s) (+ self.room_width 40s))
    push 2s
    stog.image_xscale* = (int32 self.guy_r2)
    push 2s
    stog.image_yscale* = (int32 self.guy_r2)
    push -9s
    stog.hspeed* = (int32 self.guy_r2)
    stog.talk_r[1s] = 0s
    self.guy_r3 = (scr_marker[]:int32 (var 269s) (var 200s) (+ self.room_width 50s))
    push 2s
    stog.image_xscale* = (int32 self.guy_r3)
    push 2s
    stog.image_yscale* = (int32 self.guy_r3)
    push -6s
    stog.hspeed* = (int32 self.guy_r3)
    push (+ (int32 self.guy_r):depth 2s)
    stog.depth* = (int32 self.guy_r3)
    stog.talk_r[2s] = 0s
    self.guy_r4 = (scr_marker[]:int32 (var 207s) (var 100s) (+ self.room_width 60s))
    push 2s
    stog.image_xscale* = (int32 self.guy_r4)
    push 2s
    stog.image_yscale* = (int32 self.guy_r4)
    push -5s
    stog.hspeed* = (int32 self.guy_r4)
    push (+ (int32 self.guy_r3):depth 1s)
    stog.depth* = (int32 self.guy_r4)
    stog.x* = (- (int32 self.guy):x 700s)
    stog.x* = (- (int32 self.guy2):x 700s)
    stog.x* = (- (int32 self.guy3):x 700s)
    push 80s
    stog.x* = (int32 self.guy4)
    stog.alarm[1s] = 110s
    stog.alarm[0s] = 190s
    stog.alarm[2s] = 30s
0x000588:
    exit
