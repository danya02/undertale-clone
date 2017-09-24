0x000000:
    if !(== self.argument0 0s) goto 0x000130
0x000014:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000130
0x00002C:
    self.xdist = (- (+ 1570.x (/ 1570.sprite_width (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    self.ydist = (- 1570.bbox_top self.bbox_top)
    if !(>= (abs[]:int32 self.xdist) (abs[]:int32 self.ydist)) goto 0x0000F8
0x0000BC:
    if !(>= self.xdist 0s) goto 0x0000E4
0x0000D0:
    self.sprite_index = self.rtsprite
    goto 0x0000F4
0x0000E4:
    self.sprite_index = self.ltsprite
0x0000F4:
    goto 0x000130
0x0000F8:
    if !(>= self.ydist 0s) goto 0x000120
0x00010C:
    self.sprite_index = self.dtsprite
    goto 0x000130
0x000120:
    self.sprite_index = self.utsprite
0x000130:
    if !(== self.argument0 1s) goto 0x000260
0x000144:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000260
0x00015C:
    self.xdist = (- (+ 1570.x (/ 1570.sprite_width (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    self.ydist = (- 1570.bbox_top self.bbox_top)
    if !(>= (abs[]:int32 self.xdist) (abs[]:int32 self.ydist)) goto 0x000228
0x0001EC:
    if !(>= self.xdist 0s) goto 0x000214
0x000200:
    self.sprite_index = self.rsprite
    goto 0x000224
0x000214:
    self.sprite_index = self.lsprite
0x000224:
    goto 0x000260
0x000228:
    if !(>= self.ydist 0s) goto 0x000250
0x00023C:
    self.sprite_index = self.dsprite
    goto 0x000260
0x000250:
    self.sprite_index = self.usprite
0x000260:
    exit
