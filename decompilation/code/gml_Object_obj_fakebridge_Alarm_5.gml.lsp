0x000000:
    if !(< self.drawamt self.sprite_width) goto 0x000058
0x000018:
    self.drawamt = (+ self.drawamt 8s)
    call (snd_play[]:int32 (var 92s))
    stog.alarm[5s] = 15s
0x000058:
    if !(>= self.drawamt self.sprite_width) goto 0x0000A0
0x000070:
    self.drawamt = self.sprite_width
    stog.alarm[5s] = -1s
    self.justdoit = 6s
0x0000A0:
    exit
