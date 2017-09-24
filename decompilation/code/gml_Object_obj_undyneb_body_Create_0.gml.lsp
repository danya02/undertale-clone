0x000000:
    stog.part[0s] = (instance_create[]:int32 (var 1363s) self.y (+ self.x 80s))
    stog.part[1s] = (instance_create[]:int32 (var 1363s) (- self.y 4s) (+ self.x 4s))
    stog.part[2s] = (instance_create[]:int32 (var 1363s) (+ self.y 56s) (+ self.x 52s))
    stog.part[3s] = (instance_create[]:int32 (var 1363s) (+ self.y 78s) (+ self.x 148s))
    stog.part[4s] = (instance_create[]:int32 (var 1363s) (+ self.y 120s) (+ self.x 78s))
    stog.part[5s] = (instance_create[]:int32 (var 1363s) (- (+ self.y 78s) 12s) (+ (+ self.x 12s) 70s))
    stog.part[6s] = (instance_create[]:int32 (var 1363s) (+ self.y 154s) (+ self.x 78s))
    self.ydiff = 0s
    self.xdiff = 0s
    self.siner = 0s
    self.air = 0s
    push -1s
    self.head = 0s:part
    push 283s
    stog.sprite_index* = (int32 self.head)
    push -1s
    self.hair = 1s:part
    push 282s
    stog.sprite_index* = (int32 self.hair)
    push -1s
    self.armor = 2s:part
    push 286s
    stog.sprite_index* = (int32 self.armor)
    push -1s
    self.pants = 4s:part
    push 287s
    stog.sprite_index* = (int32 self.pants)
    push -1s
    self.larm = 5s:part
    push 288s
    stog.sprite_index* = (int32 self.larm)
    push -1s
    self.rarm = 3s:part
    push 289s
    stog.sprite_index* = (int32 self.rarm)
    push -1s
    self.legs = 6s:part
    push 281s
    stog.sprite_index* = (int32 self.legs)
    self.i = 0s
    if !(< self.i 7s) goto 0x00045C
0x000368:
    push (+ self.depth self.i)
    push -1s
    stog.depth* = (int32 (int32 self.i):part)
    push 1s
    push -1s
    stog.visible* = (int32 (int32 self.i):part)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):part)
    push 2s
    push -1s
    stog.image_xscale* = (int32 (int32 self.i):part)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.i):part)
    self.i = (+ self.i 1s)
    goto 0x000354
0x00045C:
    push 0.25d
    stog.image_speed* = (int32 self.hair)
    self.movetype = 0s
    self.jumpno = 0s
    self.slashno = 0s
    self.fadeout = 0s
0x0004AC:
    exit
