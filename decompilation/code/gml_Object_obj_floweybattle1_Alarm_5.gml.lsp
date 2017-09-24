0x000000:
    pushenv (int32 self.blconwriter) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    global.msc = 0s
    stog.msg[0s] = "Is this a joke^2?&Are you braindead^2?&RUN^2. INTO^2. THE.&friendliness pellets/"
    stog.msg[1s] = "/"
    stog.msg[2s] = "/"
    stog.msg[3s] = "/"
    stog.msg[4s] = "/"
    stog.msg[5s] = "/"
    stog.msg[6s] = "/"
    stog.msg[7s] = "/"
    stog.msg[8s] = "/"
    stog.msg[9s] = "/"
    stog.msg[10s] = "stop it"
    self.funwriter = (instance_create[]:int32 (var 785s) (+ 187.y 10s) (+ 187.x 40s))
    self.sprite_index = 166s
    self.image_index = 1s
    self.image_speed = 0s
    self.conversation = 9.4d
    self.i = 0s
    if !(!= self.i 5s) goto 0x000268
0x0001C4:
    self.ddd = (instance_find[]:int32 self.i (var 609s))
    push (int32 self.ddd):blonicx
    stog.x* = (int32 self.ddd)
    push (int32 self.ddd):blonicy
    stog.y* = (int32 self.ddd)
    push 1s
    stog.attackyou* = (int32 self.ddd)
    self.i = (+ self.i 1s)
    goto 0x0001B0
0x000268:
    exit
