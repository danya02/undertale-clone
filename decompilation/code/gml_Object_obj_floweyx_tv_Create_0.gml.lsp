0x000000:
    self.siner = 0s
    call (instance_create[]:int32 (var 1660s) (var 0s) (var 0s))
    call (scr_floweybodysave[]:int32 )
    self.tvmode = 25s
    self.size = 0.5d
    self.anim = 0s
    self.anim2 = 0s
    self.animchoice = (round[]:int32 (random[]:int32 (var 100s)))
    self.animspeed = 0.25d
    self.anim = self.animchoice
    self.image_speed = 0.5d
    self.animtimer = 0s
    self.remx = self.x
    self.shudder = 0s
    self.shuddercounter = 0s
    self.flasheron = 0s
    self.tt = 16s
    self.anim3 = 0s
    self.anim4 = 0s
    self.anim5 = 0s
    self.anim6 = 0s
    self.overnoiser = 0s
    if !(> global.fplot 1s) goto 0x000174
0x000168:
    self.tvmode = 26s
0x000174:
    exit
