0x000000:
    self.sing = (+ self.sing 1s)
    self.gm = (instance_create[]:int32 (var 1205s) (var 20s) (+ self.x 40s))
    push 1s
    stog.gggg* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    if !(== self.offsing 1s) goto 0x0000A4
0x00008C:
    push 21s
    stog.y* = (int32 self.gm)
0x0000A4:
    if !(== self.sing 1s) goto 0x0000D4
0x0000B8:
    push "Oh my love"
    stog.sting* = (int32 self.gm)
0x0000D4:
    if !(== self.sing 2s) goto 0x000104
0x0000E8:
    push "Has fallen#down"
    stog.sting* = (int32 self.gm)
0x000104:
    if !(== self.sing 3s) goto 0x000134
0x000118:
    push "Now in tears"
    stog.sting* = (int32 self.gm)
0x000134:
    if !(== self.sing 4s) goto 0x000164
0x000148:
    push "We all will#drown"
    stog.sting* = (int32 self.gm)
0x000164:
    if !(== self.sing 5s) goto 0x000194
0x000178:
    push "Colored#tiles"
    stog.sting* = (int32 self.gm)
0x000194:
    if !(== self.sing 6s) goto 0x0001C4
0x0001A8:
    push "Make them#a fool"
    stog.sting* = (int32 self.gm)
0x0001C4:
    if !(== self.sing 7s) goto 0x0001F4
0x0001D8:
    push "If only they"
    stog.sting* = (int32 self.gm)
0x0001F4:
    if !(== self.sing 8s) goto 0x000224
0x000208:
    push "Still knew#the rules"
    stog.sting* = (int32 self.gm)
0x000224:
    if !(== self.sing 9s) goto 0x000254
0x000238:
    push "Well that#was"
    stog.sting* = (int32 self.gm)
0x000254:
    if !(== self.sing 10s) goto 0x000284
0x000268:
    push "A sorry try"
    stog.sting* = (int32 self.gm)
0x000284:
    if !(== self.sing 11s) goto 0x0002B4
0x000298:
    push "Now let's#watch"
    stog.sting* = (int32 self.gm)
0x0002B4:
    if !(== self.sing 12s) goto 0x0002E4
0x0002C8:
    push "Them fry"
    stog.sting* = (int32 self.gm)
0x0002E4:
    if !(== self.offsing 1s) goto 0x000308
0x0002F8:
    self.offsing = 0s
    goto 0x000314
0x000308:
    self.offsing = 1s
0x000314:
    if !(== self.sing 1s) goto 0x00033C
0x000328:
    stog.alarm[0s] = 75s
0x00033C:
    exit
