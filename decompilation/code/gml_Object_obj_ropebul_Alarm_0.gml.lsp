0x000000:
    self.visible = 1s
    if !(== self.type 0s) goto 0x000248
0x000020:
    self.y = (+ (+ self.arb2 1s) (random[]:int32 (- (- self.arb self.arb2) 2s)))
    self.vspeed = (+ 1s (random[]:int32 (var 2s)))
    self.vspeed = (* self.vspeed (choose[]:int32 (var -1s) (var 1s)))
    self.rope = (instance_create[]:int32 (var 339s) (+ self.y 170s) self.x)
    if !(bool (instance_exists[]:int32 self.rope)) goto 0x000144
0x0000F4:
    push self.dmg
    stog.dmg* = (int32 self.rope)
    push 1s
    stog.type* = (int32 self.rope)
    push self.vspeed
    stog.vspeed* = (int32 self.rope)
0x000144:
    self.go = 1s
    self.i = 0s
    if !(< self.i 3s) goto 0x000248
0x000170:
    self.fire = (instance_create[]:int32 (var 338s) (+ (+ self.y 120s) (* self.i 14s)) self.x)
    if !(bool (instance_exists[]:int32 self.fire)) goto 0x00022C
0x0001CC:
    push self.id
    stog.parent* = (int32 self.fire)
    push self.dmg
    stog.dmg* = (int32 self.fire)
    pushenv (int32 self.fire) 0x000228
0x000214:
    call (event_user[]:int32 (var 0s))
0x000228:
    popenv 0x000214
0x00022C:
    self.i = (+ self.i 1s)
    goto 0x00015C
0x000248:
    exit
