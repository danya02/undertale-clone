0x000000:
    if !(< self.maxer 1.1d) goto 0x00003C
0x00001C:
    self.maxer = (+ self.maxer 0.1d)
0x00003C:
    self.image_xscale = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    self.image_yscale = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    self.xprev4 = self.xprev3
    self.yprev4 = self.yprev3
    self.xprev3 = self.xprev2
    self.yprev3 = self.yprev2
    self.xprev2 = self.xprevious
    self.yprev2 = self.yprevious
    self.siner = (+ self.siner 1s)
    self.pb = self.bounces
    if !(< self.bounces 7s) goto 0x0001C0
0x000158:
    if !(> self.x (- self.room_width 20s)) goto 0x00018C
0x000178:
    push (> self.hspeed 0s)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x0001C0
0x000194:
    self.hspeed = (- self.hspeed)
    self.bounces = (+ self.bounces 1s)
0x0001C0:
    if !(< self.bounces 7s) goto 0x000230
0x0001D4:
    if !(< self.x 20s) goto 0x0001FC
0x0001E8:
    push (< self.hspeed 0s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000230
0x000204:
    self.hspeed = (- self.hspeed)
    self.bounces = (+ self.bounces 1s)
0x000230:
    if !(< self.bounces 7s) goto 0x0002AC
0x000244:
    if !(> self.vspeed 0s) goto 0x000278
0x000258:
    push (> self.y (- self.room_height 20s))
    goto 0x00027C
0x000278:
    push 0s
0x00027C:
    if !pop goto 0x0002AC
0x000280:
    self.vspeed = (- self.vspeed)
    self.bounces = (+ self.bounces 1s)
0x0002AC:
    if !(< self.bounces 7s) goto 0x00031C
0x0002C0:
    if !(< self.vspeed 0s) goto 0x0002E8
0x0002D4:
    push (< self.y 20s)
    goto 0x0002EC
0x0002E8:
    push 0s
0x0002EC:
    if !pop goto 0x00031C
0x0002F0:
    self.bounces = (+ self.bounces 1s)
    self.vspeed = (- self.vspeed)
0x00031C:
    if !(> self.bounces self.pb) goto 0x000388
0x000334:
    if !(== (instance_exists[]:int32 (var 1582s)) 0s) goto 0x000388
0x000350:
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 21s))
0x000388:
    if !(> self.x (+ self.room_width 300s)) goto 0x0003BC
0x0003A8:
    call (event_user[]:int32 (var 7s))
0x0003BC:
    if !(< self.x -300s) goto 0x0003E4
0x0003D0:
    call (event_user[]:int32 (var 7s))
0x0003E4:
    exit
