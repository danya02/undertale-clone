0x000000:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x000034
0x00001C:
    self.image_alpha = 0s
    self.oalpha = 0s
0x000034:
    push -1s
    if !(> 0s:view_yview 0s) goto 0x0000C0
0x000050:
    push self.oalpha
    self.a = (- self.top (* (/ -1s 0s:view_yview) self.oalpha))
    if !(> self.a 0s) goto 0x0000B4
0x0000A0:
    self.image_alpha = self.a
    goto 0x0000C0
0x0000B4:
    self.image_alpha = 0s
0x0000C0:
    exit
