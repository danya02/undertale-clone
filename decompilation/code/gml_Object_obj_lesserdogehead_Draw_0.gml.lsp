0x000000:
    if !(bool (instance_exists[]:int32 self.tailobj)) goto 0x00035C
0x000018:
    self.image_speed = (/ (int32 self.tailobj):mercymod (double 900s))
    if !(> self.image_speed 0.5d) goto 0x000070
0x00005C:
    self.image_speed = 0.5d
0x000070:
    self.x = (int32 self.tailobj):x
    self.y = (- (int32 self.tailobj):y (/ (int32 self.tailobj):mercymod (double 4s)))
    if !(== (int32 self.tailobj):sprite_index 198s) goto 0x000358
0x0000EC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ 79s self.y) (/ (int32 self.tailobj):mercymod (double 4s))) (+ self.x 81s) (+ 79s self.y) (+ self.x 44s))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ 98s self.y) (/ (int32 self.tailobj):mercymod (double 4s))) (+ self.x 76s) (+ 79s self.y) (+ self.x 54s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(> (int32 self.tailobj):mercymod 500s) goto 0x00033C
0x000240:
    call (draw_rectangle[]:int32 (var 0s) (- (+ -1s (/ (- (int32 self.tailobj):mercymod 500s) (double 4s))) 40s) (+ self.x 152s) (var -1s) (+ self.x 116s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -1s) (var -1s) (+ (/ (- (int32 self.tailobj):mercymod 500s) (double 4s)) 40s) (+ self.x 196s) self.image_index self.sprite_index)
0x00033C:
    self.thismercy = (int32 self.tailobj):mercymod
0x000358:
    goto 0x000368
0x00035C:
    call (instance_destroy[]:int32 )
0x000368:
    exit
