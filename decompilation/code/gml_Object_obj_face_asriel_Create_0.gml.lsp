0x000000:
    call (event_inherited[]:int32 )
    self.image_speed = 0.25d
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000050
0x000038:
    pushenv 775s 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    stog.u[0s] = 2082s
    stog.u[1s] = 2083s
    stog.u[2s] = 2084s
    stog.u[3s] = 2085s
    stog.u[4s] = 2086s
    stog.u[5s] = 2087s
    stog.u[6s] = 2088s
    stog.u[7s] = 2089s
    stog.u[8s] = 2090s
    stog.u[9s] = 2091s
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
0x000138:
    exit
