0x000000:
    self.mys = (+ self.mys self.mysadd)
    self.hl = (instance_create[]:int32 (var 474s) self.y self.x)
    push self.mys
    stog.s* = (int32 self.hl)
    push self.mysf
    stog.sf* = (int32 self.hl)
    push self.mysv
    stog.sv* = (int32 self.hl)
    push (+ 5.5d self.selfspeed)
    stog.vspeed* = (int32 self.hl)
    self.hl2 = (instance_create[]:int32 (var 474s) self.y self.x)
    push self.mys
    stog.s* = (int32 self.hl2)
    push self.mysf
    stog.sf* = (int32 self.hl2)
    push (- self.mysv)
    stog.sv* = (int32 self.hl2)
    push (+ 5.5d self.selfspeed2)
    stog.vspeed* = (int32 self.hl2)
    stog.alarm[0s] = 2s
    self.count = (+ self.count 1s)
    if !(> self.count 15s) goto 0x0001BC
0x0001B0:
    call (instance_destroy[]:int32 )
0x0001BC:
    exit
