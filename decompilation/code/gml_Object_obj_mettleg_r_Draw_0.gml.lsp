0x000000:
    self.anim = (+ self.anim 0.25d)
    if !(== self.on 0s) goto 0x000044
0x000034:
    self.image_blend = 16777215
0x000044:
    if !(== self.on 1s) goto 0x000068
0x000058:
    self.image_blend = 65535
0x000068:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var -1s) self.y self.x self.image_index self.sprite_index)
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 20s) (+ (- self.x self.sprite_width) 5s) (+ self.y 1s) self.x)) goto 0x000228
0x000128:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 20s) (+ (- self.x self.sprite_width) 5s) (+ self.y 1s) self.x)
    pushenv (int32 self.g) 0x0001B0
0x0001A4:
    call (instance_destroy[]:int32 )
0x0001B0:
    popenv 0x0001A4
0x0001B4:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0001F8
0x0001CC:
    call (snd_play[]:int32 (var 110s))
    global.ratings = (+ global.ratings 5s)
0x0001F8:
    if !(== self.on 0s) goto 0x00021C
0x00020C:
    self.on = 1s
    goto 0x000228
0x00021C:
    self.on = 0s
0x000228:
    if !(== self.on 1s) goto 0x0002F8
0x00023C:
    self.s = (+ self.s 1s)
    self.x = (+ (+ self.xinit self.sprite_width) (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    if !(== self.c 1s) goto 0x0002F8
0x0002B0:
    self.x = (+ (+ self.xinit self.sprite_width) (* (cos[]:int32 (/ self.s self.sp)) self.sf))
0x0002F8:
    exit
