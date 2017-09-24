0x000000:
    if !(>= self.image_alpha 0.95d) goto 0x000050
0x00001C:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x000050:
    exit
