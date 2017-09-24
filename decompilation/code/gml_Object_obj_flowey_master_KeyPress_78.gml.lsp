0x000000:
    if !(== global.debug 1s) goto 0x000048
0x000014:
    call (instance_create[]:int32 (var 1635s) (var -50s) (+ 110s (random[]:int32 (var 400s))))
0x000048:
    exit
