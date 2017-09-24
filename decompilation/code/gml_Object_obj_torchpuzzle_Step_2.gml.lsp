0x000000:
    if !(>= self.h 3s) goto 0x000028
0x000014:
    push (== self.solved 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000154
0x000030:
    if !(== self.room 91s) goto 0x00005C
0x000044:
    pushenv 14s 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    popenv 0x00004C
0x00005C:
    self.solved = 1s
    if !(< global.plot 109s) goto 0x000088
0x00007C:
    global.plot = 109s
0x000088:
    self.i = 0s
    if !(< self.i 12s) goto 0x000134
0x0000A8:
    self.g = (instance_create[]:int32 (var 1096s) (var 100s) (+ 440s (* self.i 20s)))
    self.g = (instance_create[]:int32 (var 1096s) (var 180s) (+ 440s (* self.i 20s)))
    self.i = (+ self.i 1s)
    goto 0x000094
0x000134:
    [obj_proxglower].image_speed = 0.25d
    [obj_proxglower].sprite_index = 1601s
0x000154:
    self.h = 0s
0x000160:
    exit
