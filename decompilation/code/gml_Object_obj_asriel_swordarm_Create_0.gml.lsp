0x000000:
    self.con = 0s
    self.timer = 0s
    self.s_offset = 40s
    self.o_o = 0s
    self.smear = 0s
    self.dontdraw = 0s
    self.flip = 1s
    stog.alarm[0s] = 1s
    self.visible = 0s
    if !(== (instance_find[]:int32 (var 0s) self.object_index) self.id) goto 0x0000A8
0x00009C:
    self.flip = 0s
0x0000A8:
    self.relx = (- self.x 589.x)
    self.sm = 589s
    self.skip = 0s
    self.twinkle = 0s
    self.shake = 0s
    self.blazing = 0s
    self.bl_o = 0s
    self.king = 569s
    self.depth = (+ (int32 self.king):depth 1s)
    self.start = 1s
    self.image_alpha = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    stog.alarm[1s] = 2s
    self.col = 0s
    self.h_mode = 0s
0x000198:
    exit
