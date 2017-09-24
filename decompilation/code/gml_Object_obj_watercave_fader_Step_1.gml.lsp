0x000000:
    push -1s
    if !(> 0s:view_xview 0s) goto 0x000080
0x00001C:
    push self.oalpha
    self.a = (- -1s (/ 0s:view_xview self.top))
    if !(> self.a 0s) goto 0x000074
0x000060:
    self.image_alpha = self.a
    goto 0x000080
0x000074:
    self.image_alpha = 0s
0x000080:
    exit
