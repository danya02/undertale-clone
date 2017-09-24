0x000000:
    [obj_floweybodyparent].knockfactor = self.knockfactor
    pushenv 1586s 0x000220
0x000018:
    if !(!= self.object_index 1587s) goto 0x000220
0x00002C:
    self.image_blend = (make_color_rgb[]:int32 (- 255s (* self.knockfactor 5s)) (- 255s (* self.knockfactor 5s)) (var 255s))
    self.blend2 = (make_color_rgb[]:int32 (- 255s (* self.knockfactor 5s)) (- 255s (* self.knockfactor 5s)) (var 255s))
    self.x = (- (+ self.xstart (random[]:int32 (* self.knockfactor 3s))) (random[]:int32 (* self.knockfactor 3s)))
    self.y = (- (+ self.ystart (random[]:int32 (* self.knockfactor 3s))) (random[]:int32 (* self.knockfactor 3s)))
    if (== self.object_index 1588s) goto 0x000174
0x000160:
    push (== self.object_index 1590s)
    goto 0x000178
0x000174:
    push 1s
0x000178:
    if !pop goto 0x00019C
0x00017C:
    self.x = self.xstart
    self.y = self.ystart
0x00019C:
    if !(== self.object_index 1655s) goto 0x000220
0x0001B0:
    self.y = (- self.y 80s)
    if !(> self.x 320s) goto 0x0001F4
0x0001DC:
    self.x = (- self.x 40s)
0x0001F4:
    if !(< self.x 320s) goto 0x000220
0x000208:
    self.x = (+ self.x 40s)
0x000220:
    popenv 0x000018
0x000224:
    self.knockfactor = (- self.knockfactor 1s)
    stog.alarm[11s] = 1s
    if !(< self.knockfactor 0s) goto 0x000278
0x000264:
    stog.alarm[11s] = -1s
0x000278:
    exit
