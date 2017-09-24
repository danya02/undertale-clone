0x000000:
    self.timer = (+ self.timer 1s)
    if !(< self.timer 150s) goto 0x000060
0x00002C:
    if !(< self.image_alpha 1s) goto 0x000060
0x000040:
    self.image_alpha = (+ self.image_alpha 0.02d)
0x000060:
    if !(== self.timer 150s) goto 0x000154
0x000074:
    self.sepiaebott = (instance_create[]:int32 (var 1363s) self.y self.x)
    push 2s
    stog.image_xscale* = (int32 self.sepiaebott)
    push 2s
    stog.image_yscale* = (int32 self.sepiaebott)
    push 0s
    stog.image_speed* = (int32 self.sepiaebott)
    push 1s
    stog.image_index* = (int32 self.sepiaebott)
    push self.sprite_index
    stog.sprite_index* = (int32 self.sepiaebott)
    push (+ self.depth 10s)
    stog.depth* = (int32 self.sepiaebott)
    push 1s
    stog.visible* = (int32 self.sepiaebott)
0x000154:
    if !(>= self.timer 150s) goto 0x00017C
0x000168:
    push (<= self.timer 250s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x0001A4
0x000184:
    self.image_alpha = (- self.image_alpha 0.01d)
0x0001A4:
    if !(>= self.timer 300s) goto 0x0001CC
0x0001B8:
    push (<= self.timer 700s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x000230
0x0001D4:
    self.offer = (+ self.offer 1s)
    if !(== self.offer 4s) goto 0x000230
0x000200:
    push -1s
    stog.view_yview[(+ 0s:view_yview 1s)] = 0s
    self.offer = 0s
0x000230:
    if !(== self.timer 560s) goto 0x000250
0x000244:
    self.n_active = 1s
0x000250:
    self.n_index = (+ self.n_index 1s)
0x000268:
    exit
