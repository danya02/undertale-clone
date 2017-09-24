0x000000:
    if !(== global.faceemotion 0s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000040:
    if !(> global.faceemotion 0s) goto 0x0000D4
0x000054:
    self.xx = (+ 1409.shx 20s)
    self.yy = 36s
    if !(> global.faceemotion 6s) goto 0x000098
0x00008C:
    global.faceemotion = 6s
0x000098:
    push self.yy
    call (draw_sprite[]:int32 self.xx self.image_index -1s (int32 global.faceemotion):facespr)
0x0000D4:
    exit
