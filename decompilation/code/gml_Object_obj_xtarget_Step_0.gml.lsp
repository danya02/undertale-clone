0x000000:
    if !(< self.priority 0s) goto 0x000020
0x000014:
    self.priority = 0s
0x000020:
    if !(> self.x self.fatalx) goto 0x0000DC
0x000038:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha 0.1d) goto 0x0000DC
0x000074:
    self.image_alpha = 0s
    if !(bool (instance_exists[]:int32 (var 719s))) goto 0x0000BC
0x000098:
    pushenv 719s 0x0000B8
0x0000A0:
    self.priority = (- self.priority 1s)
0x0000B8:
    popenv 0x0000A0
0x0000BC:
    call (instance_destroy[]:int32 )
    self.priority = 999999
    exit
0x0000DC:
    if !(== self.priority 0s) goto 0x0001AC
0x0000F0:
    self.image_index = 0s
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0001AC
0x000114:
    self.image_alpha = 1s
    self.image_speed = 0.5d
    [obj_battlethingparent].check = self.id
    pushenv 718s 0x000160
0x00014C:
    call (event_user[]:int32 (var 3s))
0x000160:
    popenv 0x00014C
0x000164:
    call (keyboard_clear[]:int32 (var 13s))
    call (keyboard_clear[]:int32 (var 90s))
    pushenv 719s 0x0001A8
0x000194:
    call (event_user[]:int32 (var 1s))
0x0001A8:
    popenv 0x000194
0x0001AC:
    exit
