0x000000:
    if !(== self.blacker 1s) goto 0x00005C
0x000014:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 480s) (var 640s) (var 240s) (var 0s))
0x00005C:
    if !(== self.con 8s) goto 0x0002C8
0x000070:
    if (== self.flasher 1s) goto 0x000098
0x000084:
    push (== self.flasher 2s)
    goto 0x00009C
0x000098:
    push 1s
0x00009C:
    if !pop goto 0x0002C8
0x0000A0:
    if !(== self.flasher 1s) goto 0x0000D4
0x0000B4:
    self.flashamt = (+ self.flashamt 0.2d)
0x0000D4:
    if !(> self.flashamt 2s) goto 0x0001F4
0x0000E8:
    call (caster_stop[]:int32 self.presong)
    call (caster_play[]:int32 (var 1s) (var 1s) self.flashsound)
    self.flasher = 2s
    pushenv (int32 self.n) 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    popenv 0x00013C
0x00014C:
    pushenv (int32 self.n2) 0x000168
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    popenv 0x00015C
0x00016C:
    self.cloud = 0s
    pushenv 404s 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    popenv 0x000180
0x000190:
    self.mb = 408s
    push 1s
    stog.sineron* = (int32 self.mb)
    push 16777215
    stog.myblend* = (int32 self.mb)
    push 1s
    stog.myalpha* = (int32 self.mb)
    self.blacker = 0s
0x0001F4:
    if !(== self.flasher 2s) goto 0x000228
0x000208:
    self.flashamt = (- self.flashamt 0.4d)
0x000228:
    if !(< self.flashamt 0s) goto 0x000254
0x00023C:
    self.flasher = 0s
    self.con = 9s
0x000254:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.flashamt)
    call (draw_rectangle[]:int32 (var 0s) (var 700s) (var 700s) (var -1s) (var -1s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0002C8:
    exit
