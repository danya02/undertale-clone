0x000000:
    if !(>= self.image_alpha 0.9d) goto 0x000028
0x00001C:
    call (scr_damagestandard_x[]:int32 )
0x000028:
    exit
