0x000000:
    if !(< 1091.soundtimer 0s) goto 0x000028
0x000014:
    push (== self.c 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    [obj_grasssounder].sound = 1s
0x00003C:
    self.image_index = 1s
    self.c = 2s
0x000054:
    exit
