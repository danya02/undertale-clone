0x000000:
    if !(== self.f 0s) goto 0x000108
0x000014:
    if !(== self.c 0s) goto 0x000058
0x000028:
    self.sl2 = (* (sin[]:int32 (/ self.sinelover (double 10s))) 8s)
    goto 0x000084
0x000058:
    self.sl2 = (* (cos[]:int32 (/ self.sinelover (double 10s))) 8s)
0x000084:
    if !(< self.y (- self.bborder 20s)) goto 0x000108
0x0000A4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y (+ self.sl2 self.x) self.image_index self.sprite_index)
0x000108:
    if !(== self.f 1s) goto 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    if !(== self.f 2s) goto 0x000264
0x00013C:
    self.vspeed = 0s
    if !(== self.c 0s) goto 0x00018C
0x00015C:
    self.sl2 = (* (sin[]:int32 (/ self.sinelover (double 10s))) 8s)
    goto 0x0001B8
0x00018C:
    self.sl2 = (* (cos[]:int32 (/ self.sinelover (double 10s))) 8s)
0x0001B8:
    if !(< self.y (- self.bborder 20s)) goto 0x00024C
0x0001D8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (+ 1.5d self.stetch) self.y (+ self.x self.sl2) self.image_index self.sprite_index)
0x00024C:
    self.sinelover = (+ self.sinelover 1s)
0x000264:
    exit
