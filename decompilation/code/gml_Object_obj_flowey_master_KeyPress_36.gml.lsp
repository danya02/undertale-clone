0x000000:
    if !(== global.debug 1s) goto 0x000034
0x000014:
    self.megadamage = 8s
    call (event_user[]:int32 (var 7s))
0x000034:
    exit
