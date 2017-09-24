0x000000:
    self.hl = (instance_create[]:int32 (var 1606s) (var 180s) (+ 260s (random[]:int32 (var 100s))))
    stog.alarm[8s] = (+ 170s (random[]:int32 (var 20s)))
    if !(== self.unhinged 1s) goto 0x00009C
0x000074:
    stog.alarm[8s] = (+ 145s (random[]:int32 (var 10s)))
0x00009C:
    exit
