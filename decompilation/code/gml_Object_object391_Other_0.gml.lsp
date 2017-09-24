0x000000:
    if !(< self.x (- self.sprite_width)) goto 0x000038
0x00001C:
    stog.monster[(int32 self.myself)] = 0s
0x000038:
    exit
