0x000000:
    if !(== global.debug 1s) goto 0x000050
0x000014:
    call (instance_create[]:int32 (var 1609s) (/ self.room_height (double 2s)) (/ self.room_width (double 2s)))
0x000050:
    exit
