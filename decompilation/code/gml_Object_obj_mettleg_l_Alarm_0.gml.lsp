0x000000:
    self.s = (/ (* self.sp 3.14159265358979d) (double 2s))
    if !(== self.c 0s) goto 0x0000B8
0x000040:
    self.xinit = (- self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x0000B8:
    if !(== self.c 1s) goto 0x000144
0x0000CC:
    self.xinit = (- self.xinit (* (cos[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ self.xinit (* (cos[]:int32 (/ self.s self.sp)) self.sf))
0x000144:
    if !(== self.c 2s) goto 0x00020C
0x000158:
    self.s = (/ (* (- self.sp) 3.14159265358979d) (double 2s))
    self.xinit = (+ self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.c = 0s
0x00020C:
    self.visible = 1s
0x000218:
    exit
