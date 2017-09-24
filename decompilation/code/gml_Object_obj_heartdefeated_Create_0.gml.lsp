0x000000:
    stog.alarm[0s] = 20s
    self.image_speed = 0s
    push -5s
    if !(== 500s:flag 0s) goto 0x0000AC
0x00003C:
    push -5s
    if !(== 272s:flag 0s) goto 0x000074
0x000058:
    self.gameoversong = (caster_load[]:int32 (var "music/gameover.ogg"))
0x000074:
    push -5s
    if !(== 272s:flag 1s) goto 0x0000AC
0x000090:
    self.gameoversong = (caster_load[]:int32 (var "music/dogsong.ogg"))
0x0000AC:
    self.dingus = 0s
    self.currentvol = 1s
    self.heartcon = 0s
    self.hearttimer = 0s
    push -5s
    if !(== 500s:flag 1s) goto 0x000134
0x0000F8:
    push -5s
    stog.flag[(+ 502s:flag 1s)] = 502s
    global.border = 0s
    self.dingus = 0s
0x000134:
    exit
