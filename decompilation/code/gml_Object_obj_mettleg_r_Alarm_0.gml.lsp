0x000000:
    self.s = (/ (* (- self.sp) 3.14159265358979d) (double 2s))
    if !(== self.c 0s) goto 0x0000C8
0x000044:
    self.xinit = (- self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ (+ self.xinit self.sprite_width) (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x0000C8:
    if !(== self.c 1s) goto 0x000160
0x0000DC:
    self.xinit = (- self.xinit (* (cos[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ (+ self.xinit self.sprite_width) (* (cos[]:int32 (/ self.s self.sp)) self.sf))
0x000160:
    if !(== self.c 2s) goto 0x000230
0x000174:
    self.s = (/ (* self.sp 3.14159265358979d) (double 2s))
    self.xinit = (+ self.xinit (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.x = (+ (+ self.xinit self.sprite_width) (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.c = 0s
0x000230:
    self.visible = 1s
0x00023C:
    exit
