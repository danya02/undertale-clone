0x000000:
    if !(== self.con 1s) goto 0x000020
0x000014:
    self.con = 2s
0x000020:
    if !(== self.con 2s) goto 0x000090
0x000034:
    self.image_speed = 0.25d
    self.con = 1.5d
    stog.alarm[4s] = 8s
    if !(>= self.image_index 2s) goto 0x000090
0x000084:
    self.con = 3s
0x000090:
    if !(== self.con 2.5d) goto 0x000100
0x0000AC:
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) (var 137s))
    stog.alarm[2s] = 1s
    self.con = 4s
0x000100:
    if !(== self.con 5s) goto 0x000164
0x000114:
    if !(== (instance_exists[]:int32 (var 1650s)) 0s) goto 0x000164
0x000130:
    call (caster_stop[]:int32 (var 137s))
    stog.alarm[4s] = 8s
    self.con = 6s
0x000164:
    if !(== self.con 7s) goto 0x00019C
0x000178:
    self.image_index = 0s
    self.image_speed = 0s
    call (instance_destroy[]:int32 )
0x00019C:
    exit
