0x000000:
    if !(< (instance_number[]:int32 (var 537s)) 40s) goto 0x000078
0x00001C:
    call (instance_create[]:int32 (var 537s) (- (- self.y 50s) (random[]:int32 (var 40s))) (+ (- self.x 30s) (random[]:int32 (var 60s))))
0x000078:
    stog.alarm[5s] = 3s
0x00008C:
    exit
