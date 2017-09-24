0x000000:
    self.l_buffer = (- self.l_buffer 1s)
    self.timer = (+ self.timer 1s)
    if !(== self.h_mode 0s) goto 0x0006C0
0x000044:
    if !(> self.timer 1s) goto 0x00006C
0x000058:
    push (< self.timer 10s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x0000F4
0x000074:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (+ (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (+ self.i 1s)
0x0000F4:
    if !(> self.timer 21s) goto 0x00011C
0x000108:
    push (< self.timer 30s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x0001A4
0x000124:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (- (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (- self.i 1s)
0x0001A4:
    if !(> self.timer 41s) goto 0x0001CC
0x0001B8:
    push (< self.timer 50s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x000254
0x0001D4:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (+ (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (+ self.i 1s)
0x000254:
    if !(> self.timer 61s) goto 0x00027C
0x000268:
    push (< self.timer 70s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x000304
0x000284:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (- (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (- self.i 1s)
0x000304:
    if !(== self.timer 90s) goto 0x000468
0x000318:
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 200s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 320s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 440s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
0x000468:
    if !(== self.timer 106s) goto 0x00055C
0x00047C:
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 260s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 380s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
0x00055C:
    if !(== self.timer 122s) goto 0x0006C0
0x000570:
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 200s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 320s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (var 440s))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
0x0006C0:
    if !(== self.h_mode 1s) goto 0x000A84
0x0006D4:
    if !(> self.timer 1s) goto 0x0006FC
0x0006E8:
    push (< self.timer 10s)
    goto 0x000700
0x0006FC:
    push 0s
0x000700:
    if !pop goto 0x000784
0x000704:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (+ (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (+ self.i 1s)
0x000784:
    if !(> self.timer 17s) goto 0x0007AC
0x000798:
    push (< self.timer 27s)
    goto 0x0007B0
0x0007AC:
    push 0s
0x0007B0:
    if !pop goto 0x000834
0x0007B4:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (- (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (- self.i 1s)
0x000834:
    if !(> self.timer 34s) goto 0x00085C
0x000848:
    push (< self.timer 44s)
    goto 0x000860
0x00085C:
    push 0s
0x000860:
    if !pop goto 0x0008E4
0x000864:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (+ (+ (+ -80s self.x) (* (/ self.i (double 8s)) 640s)) 20s))
    self.i = (+ self.i 1s)
0x0008E4:
    if !(> self.timer 54s) goto 0x00090C
0x0008F8:
    push (< self.timer 70s)
    goto 0x000910
0x00090C:
    push 0s
0x000910:
    if !pop goto 0x00096C
0x000914:
    call (caster_stop[]:int32 self.er)
    call (instance_create[]:int32 (var 584s) (var 360s) (+ 743.x 8s))
    self.i = (+ self.i 1s)
0x00096C:
    if (== self.timer 76s) goto 0x0009D0
0x000980:
    if (== self.timer 91s) goto 0x0009D0
0x000994:
    if (== self.timer 106s) goto 0x0009D0
0x0009A8:
    if (== self.timer 121s) goto 0x0009D0
0x0009BC:
    push (== self.timer 136s)
    goto 0x0009D4
0x0009D0:
    push 1s
0x0009D4:
    if !pop goto 0x000A84
0x0009D8:
    call (caster_stop[]:int32 self.er)
    self.gg = (instance_create[]:int32 (var 584s) (var 360s) (+ 200s (* self.rr 60s)))
    push 1s
    stog.giga* = (int32 self.gg)
    push 3s
    stog.image_xscale* = (int32 self.gg)
    push 3s
    stog.image_yscale* = (int32 self.gg)
    self.rr = (+ self.rr 1s)
0x000A84:
    exit
