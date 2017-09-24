0x000000:
    self.siny = (+ self.siny 1s)
    self.y = (+ self.yo (* (sin[]:int32 (/ self.siny (double 30s))) 4s))
    self.yo = (+ self.yo self.vspeed)
    if !(bool (instance_exists[]:int32 self.creator)) goto 0x00010C
0x000084:
    if !(== (int32 self.creator):emotion 0s) goto 0x0000B0
0x0000A4:
    self.sprite_index = 268s
0x0000B0:
    if !(== (int32 self.creator):emotion 1s) goto 0x0000DC
0x0000D0:
    self.sprite_index = 269s
0x0000DC:
    if !(== (int32 self.creator):emotion 2s) goto 0x000108
0x0000FC:
    self.sprite_index = 270s
0x000108:
    goto 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    exit
