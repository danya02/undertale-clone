0x000000:
    self.image_angle = (+ self.image_angle self.aa)
    if !(> self.y (+ self.room_height 40s)) goto 0x00009C
0x00003C:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000090
0x000058:
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
