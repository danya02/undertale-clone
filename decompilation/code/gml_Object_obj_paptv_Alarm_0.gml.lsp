0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.read = (+ self.read 1s)
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 92s))
    self.conversation = 1s
    stog.alarm[2s] = 15s
    self.image_speed = 1s
0x0000A8:
    exit
