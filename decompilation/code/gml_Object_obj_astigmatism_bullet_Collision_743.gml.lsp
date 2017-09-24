0x000000:
    if !(>= self.image_alpha 1s) goto 0x000048
0x000014:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 3s) (var 0s))
0x000048:
    exit
