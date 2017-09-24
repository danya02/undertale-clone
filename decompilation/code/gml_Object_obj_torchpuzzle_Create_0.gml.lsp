0x000000:
    self.h = 0s
    self.solved = 0s
    if !(== self.room 91s) goto 0x000130
0x00002C:
    if !(> global.plot 108s) goto 0x000130
0x000040:
    self.solved = 1s
    pushenv 14s 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    popenv 0x000054
0x000064:
    self.i = 0s
    if !(< self.i 12s) goto 0x000110
0x000084:
    self.g = (instance_create[]:int32 (var 1096s) (var 100s) (+ 440s (* self.i 20s)))
    self.g = (instance_create[]:int32 (var 1096s) (var 180s) (+ 440s (* self.i 20s)))
    self.i = (+ self.i 1s)
    goto 0x000070
0x000110:
    [obj_proxglower].image_speed = 0.25d
    [obj_proxglower].sprite_index = 1601s
0x000130:
    exit
