0x000000:
    if !(> self.shot 0s) goto 0x000128
0x000014:
    self.x = self.nowx
    self.y = self.nowy
    self.image_speed = 1s
    self.shot2 = (+ self.shot2 1s)
    if !(>= self.shot2 5s) goto 0x000128
0x00006C:
    self.playdo = 0s
    call (audio_stop_sound[]:int32 self.myloop)
    call (snd_play[]:int32 (var 125s))
    if !(~ (bool (instance_exists[]:int32 (var 184s)))) goto 0x0000E0
0x0000BC:
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
0x0000E0:
    call (instance_create[]:int32 (var 441s) self.y self.x)
    self.visible = 0s
    self.shot2 = -1s
    self.shot = -1s
0x000128:
    exit
