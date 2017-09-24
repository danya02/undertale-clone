0x000000:
    call (draw_sprite[]:int32 (var 0s) (var 0s) (var 0s) (var 872s))
    call (draw_sprite[]:int32 (+ (+ self.ystart 24s) (/ self.armx (double 2s))) (+ (- self.xstart 30s) self.armx) (var 0s) (var 864s))
    call (draw_sprite[]:int32 (+ self.ystart 40s) (+ self.xstart 16s) (var 0s) (var 868s))
    call (draw_sprite[]:int32 (+ self.ystart 31s) (+ self.xstart 12s) (var 0s) (var 870s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 869s))
    call (draw_sprite[]:int32 (+ self.y 15s) self.x global.faceemotion (var 871s))
0x000164:
    exit
