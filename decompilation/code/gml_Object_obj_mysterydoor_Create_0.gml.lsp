0x000000:
    self.image_index = 0s
    self.image_speed = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.on = (ini_read_real[]:int32 (var 0s) (var "s_key") (var "reset"))
    call (ini_close[]:int32 )
    if !(== self.on 0s) goto 0x000144
0x000080:
    call (instance_create[]:int32 (var 2s) (+ self.y 40s) self.x)
    call (instance_create[]:int32 (var 2s) (+ self.y 40s) (+ self.x 20s))
    call (instance_create[]:int32 (var 1345s) (+ self.y 40s) self.x)
    call (instance_create[]:int32 (var 1345s) (+ self.y 40s) (+ self.x 20s))
    goto 0x000184
0x000144:
    self.image_index = 1s
    call (instance_create[]:int32 (var 811s) (+ self.y 37s) (+ self.x 10s))
0x000184:
    exit
