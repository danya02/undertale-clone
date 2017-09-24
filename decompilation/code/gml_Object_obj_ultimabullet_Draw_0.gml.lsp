0x000000:
    self.hh = (/ (- 573.x self.x) (double 20s))
    if !(> self.hh 1s) goto 0x000048
0x00003C:
    self.hh = 1s
0x000048:
    if !(< self.hh -1s) goto 0x000068
0x00005C:
    self.hh = -1s
0x000068:
    if !(== self.side 0s) goto 0x00009C
0x00007C:
    if !(< self.hh 0s) goto 0x00009C
0x000090:
    self.hh = 0s
0x00009C:
    if !(== self.side 1s) goto 0x0000D0
0x0000B0:
    if !(> self.hh 0s) goto 0x0000D0
0x0000C4:
    self.hh = 0s
0x0000D0:
    self.vv = (/ (- 573.y self.y) (double 20s))
    if !(> self.vv 1s) goto 0x000118
0x00010C:
    self.vv = 1s
0x000118:
    if !(< self.vv -1s) goto 0x000138
0x00012C:
    self.vv = -1s
0x000138:
    if !(> self.vv 0s) goto 0x000158
0x00014C:
    self.vv = 0s
0x000158:
    self.hspeed = (+ self.hspeed self.hh)
    self.vspeed = (+ self.vspeed self.vv)
    if !(> self.speed 22s) goto 0x0001B0
0x0001A4:
    self.speed = 22s
0x0001B0:
    self.image_angle = self.direction
    self.xxxx = self.xxx
    self.yyyy = self.yyy
    self.xxx = self.xx
    self.yyy = self.yy
    self.xx = self.xprevious
    self.yy = self.yprevious
    self.i = 18s
    if !(> self.i 0s) goto 0x0002CC
0x000240:
    push -1s
    stog.xprev[(int32 self.i)] = (int32 (- self.i 1s)):xprev
    push -1s
    stog.yprev[(int32 self.i)] = (int32 (- self.i 1s)):yprev
    self.i = (- self.i 1s)
    goto 0x00022C
0x0002CC:
    stog.xprev[0s] = self.x
    stog.yprev[0s] = self.y
    self.huer = (+ self.huer 20s)
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 60s) self.huer)
    call (draw_set_color[]:int32 self.image_blend)
    push (var 2s)
    push -1s
    push 12s:yprev
    push -1s
    call (draw_line_width[]:int32 12s:xprev -1s 10s:yprev -1s 10s:xprev)
    push (var 4s)
    push -1s
    push 10s:yprev
    push -1s
    call (draw_line_width[]:int32 10s:xprev -1s 8s:yprev -1s 8s:xprev)
    push (var 6s)
    push -1s
    push 8s:yprev
    push -1s
    call (draw_line_width[]:int32 8s:xprev -1s 4s:yprev -1s 4s:xprev)
    push (var 8s)
    push -1s
    call (draw_line_width[]:int32 4s:yprev -1s 4s:xprev self.y self.x)
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.direction self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
0x0004E4:
    exit
