0x000000:
    self.shkx = (* self.shaker (choose[]:int32 (var -1s) (var 1s)))
    self.shky = (* self.shaker (choose[]:int32 (var -1s) (var 1s)))
    if !(> self.shaker 0s) goto 0x000084
0x00006C:
    self.shaker = (- self.shaker 1s)
0x000084:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.b_al)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y self.shky) (+ (- self.bx) self.shkx) (var 0s) (var 2405s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y self.shky) (+ self.bx self.shkx) (var 1s) (var 2405s))
    self.timer = (+ self.timer 1s)
    if !(== self.timer 60s) goto 0x000238
0x000204:
    call (caster_play[]:int32 (var 0.95d) (var 0.8d) self.sfx2)
0x000238:
    if !(>= self.timer 60s) goto 0x000280
0x00024C:
    self.bx = (+ self.bx self.bxspeed)
    self.bxspeed = (+ self.bxspeed 2s)
0x000280:
    if !(== self.timer 110s) goto 0x000300
0x000294:
    global.msc = 0s
    global.typer = 21s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "The barrier was&destroyed^7.%%"
    call (instance_create[]:int32 (var 782s) (var 50s) (var 50s))
0x000300:
    if !(== self.timer 310s) goto 0x000344
0x000314:
    if !(bool (instance_exists[]:int32 (var 1684s))) goto 0x000344
0x00032C:
    [obj_asriel_overworldanim].powered = 0s
    [obj_asriel_overworldanim].con = 20s
0x000344:
    if !(>= self.timer 310s) goto 0x000378
0x000358:
    self.b_al = (- self.b_al 0.02d)
0x000378:
    if !(>= self.timer 370s) goto 0x0003AC
0x00038C:
    call (caster_free[]:int32 (var -3s))
    call (instance_destroy[]:int32 )
0x0003AC:
    exit
