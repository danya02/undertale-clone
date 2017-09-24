0x000000:
    self.genafterimage = (instance_create[]:int32 (var 108s) self.y self.x)
    push self.sprite_index
    stog.sprite_index* = (int32 self.genafterimage)
    push self.image_index
    stog.image_index* = (int32 self.genafterimage)
    push self.image_xscale
    stog.size* = (int32 self.genafterimage)
    push self.image_yscale
    stog.size* = (int32 self.genafterimage)
    push self.image_angle
    stog.image_angle* = (int32 self.genafterimage)
    push self.image_blend
    stog.image_blend* = (int32 self.genafterimage)
    push 0s
    stog.image_speed* = (int32 self.genafterimage)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.genafterimage)
    if !(> self.argument0 0s) goto 0x000148
0x000120:
    push (/ (double 1s) self.argument0)
    stog.alphadown* = (int32 self.genafterimage)
0x000148:
    if !(> self.argument1 0s) goto 0x000178
0x00015C:
    push self.argument1
    stog.growth* = (int32 self.genafterimage)
0x000178:
    ret var self.genafterimage
0x000184:
    exit
