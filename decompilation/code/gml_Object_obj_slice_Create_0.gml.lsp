0x000000:
    self.image_speed = (- 0.5d (/ global.stretch (double 4s)))
    self.image_xscale = (- (* global.stretch 2s) 0.5d)
    self.image_yscale = (- (* global.stretch 2s) 0.5d)
    self.x = (- self.x (* (- self.image_xscale 1s) (/ self.sprite_width (double 2s))))
    self.y = (- self.y (* (- self.image_yscale 1s) (/ self.sprite_height (double 2s))))
    call (snd_play[]:int32 (var 44s))
    if !(== self.image_speed 0s) goto 0x000130
0x00011C:
    self.image_speed = 0.1d
0x000130:
    global.damagetimer = (+ (* (/ (double 1s) self.image_speed) self.image_number) 3s)
0x000160:
    exit
