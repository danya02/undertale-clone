0x000000:
    if !(== self.wavein 0s) goto 0x0000BC
0x000014:
    pushenv 1134s 0x000044
0x00001C:
    call (event_user[]:int32 (var 3s))
    call (caster_stop[]:int32 global.currentsong)
0x000044:
    popenv 0x00001C
0x000048:
    global.interact = 1s
    self.waver = (instance_create[]:int32 (var 112s) (var 0s) (var 0s))
    push 100000
    stog.depth* = (int32 self.waver)
    push 0s
    stog.image_alpha* = (int32 self.waver)
    self.wavein = 1s
0x0000BC:
    if !(>= self.wavein 2s) goto 0x0000FC
0x0000D0:
    self.wavein = 3s
    pushenv 1134s 0x0000F8
0x0000E4:
    call (event_user[]:int32 (var 3s))
0x0000F8:
    popenv 0x0000E4
0x0000FC:
    exit
