0x000000:
    self.slidedoorx = 0s
    self.on = 0s
    self.active = 0s
    self.salad = (instance_create[]:int32 (var 2s) (var 80s) (var 888s))
    push -5s
    if !(>= 493s:flag 10s) goto 0x000084
0x000068:
    push -5s
    push (== 7s:flag 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x000168
0x00008C:
    self.active = 1s
    self.door = (instance_create[]:int32 (var 789s) (- (int32 self.salad):y 4s) (int32 self.salad):x)
    pushenv (int32 self.salad) 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    popenv 0x0000F0
0x000100:
    call (instance_create[]:int32 (var 1348s) (var 130s) (var 890s))
    self.pape = (scr_marker[]:int32 (var 1286s) (var 130s) (var 890s))
    push 900000
    stog.depth* = (int32 self.pape)
0x000168:
    self.o_noise = 0s
    self.c_noise = 0s
    self.s_noise = 0s
0x00018C:
    exit
