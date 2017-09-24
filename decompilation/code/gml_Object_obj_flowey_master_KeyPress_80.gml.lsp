0x000000:
    if !(== global.debug 1s) goto 0x00009C
0x000014:
    call (instance_create[]:int32 (var 1619s) (var 260s) (var 190s))
    self.ppp = (instance_create[]:int32 (var 1619s) (var 260s) (var 415s))
    push 1s
    stog.spec* = (int32 self.ppp)
    call (instance_create[]:int32 (var 1619s) (var 260s) (var 640s))
0x00009C:
    exit
