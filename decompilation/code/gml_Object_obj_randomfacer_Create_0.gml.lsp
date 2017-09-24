0x000000:
    self.size = 0.5d
    self.anim = 0s
    self.animchoice = (round[]:int32 (random[]:int32 (var 100s)))
    self.animspeed = 0.25d
    self.anim = self.animchoice
    self.image_speed = 0.5d
    self.y = (- self.y 20s)
    self.x = (- self.x 10s)
    call (instance_destroy[]:int32 )
0x0000B4:
    exit
