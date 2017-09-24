0x000000:
    push -1s
    pushenv (int32 4s:glove) 0x000024
0x000018:
    call (instance_destroy[]:int32 )
0x000024:
    popenv 0x000018
0x000028:
    stog.glove[4s] = (instance_create[]:int32 (var 1616s) self.y self.x)
    stog.gloveang[4s] = (/ (double 1440s) self.maxnum)
    push -1s
    push 4s:gloveang
    push -1s
    stog.ang* = (int32 4s:glove)
    push self.x
    push (+ -1s (lengthdir_x[]:int32 (+ 4s:gloveang self.ourang) self.radius))
    push -1s
    stog.x* = (int32 4s:glove)
    push self.y
    push (+ -1s (lengthdir_y[]:int32 (+ 4s:gloveang self.ourang) self.radius))
    push -1s
    stog.y* = (int32 4s:glove)
    push -1s
    push (+ 4s:gloveang self.ourang)
    push -1s
    stog.image_angle* = (int32 4s:glove)
    self.spec = 1s
0x000194:
    exit
