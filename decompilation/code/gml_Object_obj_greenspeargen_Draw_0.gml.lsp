0x000000:
    if !(== global.debug 1s) goto 0x000044
0x000014:
    if !(bool (keyboard_check_pressed[]:int32 (var 17s))) goto 0x000044
0x00002C:
    self.rating = (- self.rating 1s)
0x000044:
    if !(< global.turntimer 1s) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    exit
