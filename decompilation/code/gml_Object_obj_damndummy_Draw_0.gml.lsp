0x000000:
    if !(== self.float 0s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000040:
    if !(== self.float 1s) goto 0x00009C
0x000054:
    self.sinadd = 0s
    if !(< self.offground 10s) goto 0x000090
0x000074:
    self.offground = (+ self.offground 2s)
    goto 0x00009C
0x000090:
    self.float = 2s
0x00009C:
    if !(== self.float 2s) goto 0x0000F4
0x0000B0:
    self.sinadd = (* 4s (sin[]:int32 (/ self.siner (double 6s))))
    self.siner = (+ self.siner 1s)
0x0000F4:
    if (== self.float 1s) goto 0x00011C
0x000108:
    push (== self.float 2s)
    goto 0x000120
0x00011C:
    push 1s
0x000120:
    if !pop goto 0x000294
0x000124:
    if !(!= self.sprite_index 1128s) goto 0x0001AC
0x000138:
    call (draw_sprite_stretched[]:int32 (var 15s) (+ 20s self.sinadd) (+ (+ self.y 25s) self.offground) (- self.x (/ self.sinadd (double 2s))) self.image_index (var 1177s))
    goto 0x000224
0x0001AC:
    call (draw_sprite_stretched[]:int32 (var 15s) (+ 20s self.sinadd) (+ (+ self.y 25s) self.offground) (- (- self.x (/ self.sinadd (double 2s))) 2s) self.image_index (var 1177s))
0x000224:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ (- self.y self.offground) self.sinadd) self.x self.image_index self.sprite_index)
0x000294:
    exit
