0x000000:
    stog.alarm[0s] = global.firingrate
    self.bx = (instance_create[]:int32 (var 675s) self.y self.x)
    push 8s
    stog.vspeed* = (int32 self.bx)
    [obj_blackboxtest].dmg = (floor[]:int32 (/ global.hp (double 2s)))
    if !(< global.hp 2s) goto 0x0000B4
0x000090:
    global.turntimer = -1s
    pushenv 675s 0x0000B0
0x0000A4:
    call (instance_destroy[]:int32 )
0x0000B0:
    popenv 0x0000A4
0x0000B4:
    exit
