0x000000:
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x0000E0
0x000030:
    if !(== (draw_getpixel[]:int32 (+ self.y (* self.line 2s)) (+ self.x (* self.i 2s))) 16777215) goto 0x0000A4
0x000080:
    call (file_text_write_string[]:int32 (var "1") self.file)
    goto 0x0000C4
0x0000A4:
    call (file_text_write_string[]:int32 (var "0") self.file)
0x0000C4:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000E0:
    if !(== self.myvapor 0s) goto 0x00010C
0x0000F4:
    self.line = (+ self.line 1s)
0x00010C:
    self.line = (+ self.line 1s)
    if !(> self.line (/ self.ht (double 2s))) goto 0x00018C
0x000148:
    call (file_text_write_string[]:int32 (var "2") self.file)
    call (file_text_close[]:int32 self.file)
    call (instance_destroy[]:int32 )
    exit
0x00018C:
    stog.alarm[0s] = (+ 1s self.myvapor)
0x0001AC:
    exit
