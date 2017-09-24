0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.shock 0s) goto 0x0002D0
0x000080:
    self.facespr = 1986s
    if !(== global.faceemotion 0s) goto 0x0000AC
0x0000A0:
    self.facespr = 1986s
0x0000AC:
    if !(== global.faceemotion 1s) goto 0x0000CC
0x0000C0:
    self.facespr = 1990s
0x0000CC:
    if !(== global.faceemotion 2s) goto 0x0000EC
0x0000E0:
    self.facespr = 1991s
0x0000EC:
    if !(== global.faceemotion 3s) goto 0x00010C
0x000100:
    self.facespr = 1996s
0x00010C:
    if !(== global.faceemotion 4s) goto 0x00012C
0x000120:
    self.facespr = 2004s
0x00012C:
    if !(== global.faceemotion 5s) goto 0x00014C
0x000140:
    self.facespr = 1993s
0x00014C:
    if !(== global.faceemotion 6s) goto 0x00016C
0x000160:
    self.facespr = 2285s
0x00016C:
    if !(== global.faceemotion 7s) goto 0x00018C
0x000180:
    self.facespr = 2283s
0x00018C:
    if !(== global.faceemotion 9s) goto 0x0001AC
0x0001A0:
    self.facespr = 2284s
0x0001AC:
    if !(== global.faceemotion 10s) goto 0x0001CC
0x0001C0:
    self.facespr = 2288s
0x0001CC:
    if !(== global.faceemotion 11s) goto 0x0001EC
0x0001E0:
    self.facespr = 2282s
0x0001EC:
    if !(== global.faceemotion 12s) goto 0x00020C
0x000200:
    self.facespr = 2287s
0x00020C:
    if !(== global.faceemotion 13s) goto 0x00022C
0x000220:
    self.facespr = 2289s
0x00022C:
    if !(== global.faceemotion 14s) goto 0x00024C
0x000240:
    self.facespr = 2286s
0x00024C:
    if !(== global.faceemotion 15s) goto 0x00026C
0x000260:
    self.facespr = 2290s
0x00026C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale (- self.y 52s) (+ self.x 40s) (var 0s) self.facespr)
0x0002D0:
    if !(== self.shock 1s) goto 0x000348
0x0002E4:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale (- self.y 52s) (+ self.x 40s) (var 0s) (var 2312s))
0x000348:
    exit
