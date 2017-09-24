0x000000:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ self.y 242s) self.voff) (+ self.x 330s) (+ (- self.y 1s) self.voff) self.x)
    if !(== self.write 1s) goto 0x0001D4
0x00008C:
    call (draw_set_color[]:int32 (var 65535))
    self.tx = (+ self.tx 1s)
    if !(== self.doom 1s) goto 0x0000E8
0x0000D0:
    self.tx = (+ self.tx 4s)
0x0000E8:
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.doom 0s) goto 0x00015C
0x000110:
    call (draw_text[]:int32 self.stringer (+ (+ self.y 10s) self.voff) (- (+ self.x 320s) self.tx))
0x00015C:
    if !(== self.doom 1s) goto 0x0001D4
0x000170:
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 2s) self.stringer (+ (+ self.y 10s) self.voff) (- (+ self.x 320s) self.tx))
0x0001D4:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1787s))
    if !(== self.doom 1s) goto 0x000254
0x000214:
    self.doomtimer = (+ self.doomtimer 1s)
    if !(> self.doomtimer 150s) goto 0x000254
0x000240:
    call (event_user[]:int32 (var 1s))
0x000254:
    if !(> self.voff 0s) goto 0x000280
0x000268:
    self.voff = (- self.voff 4s)
0x000280:
    if !(<= self.voff 0s) goto 0x0002A0
0x000294:
    self.voff = 0s
0x0002A0:
    if !(> self.y self.room_height) goto 0x0002C4
0x0002B8:
    call (instance_destroy[]:int32 )
0x0002C4:
    exit
