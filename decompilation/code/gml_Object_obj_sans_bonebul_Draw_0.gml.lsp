0x000000:
    self.siner = (+ self.siner 1s)
    self.z_h = (* (sin[]:int32 (* self.siner self.z_b)) self.z_a)
    self.y = (+ self.yinit self.z_h)
    if (== self.type 0s) goto 0x00008C
0x000078:
    push (== self.type 1s)
    goto 0x000090
0x00008C:
    push 1s
0x000090:
    if !pop goto 0x000380
0x000094:
    call (event_user[]:int32 (var 10s))
    if !(> self.width 0s) goto 0x000380
0x0000BC:
    if !(== self.type 0s) goto 0x0000E0
0x0000D0:
    self.image_blend = 16777215
0x0000E0:
    if !(== self.type 1s) goto 0x000104
0x0000F4:
    self.image_blend = 16754964
0x000104:
    call (draw_sprite_part_ext[]:int32 (var 1s) self.image_blend (var 1s) (var 1s) self.y (+ self.x self.le) (var 6s) self.width (var 0s) self.le (var 0s) (var 657s))
    if !(== self.type 0s) goto 0x0001A8
0x000190:
    call (draw_set_color[]:int32 (var 16777215))
0x0001A8:
    if !(== self.type 1s) goto 0x0001D4
0x0001BC:
    call (draw_set_color[]:int32 (var 16754964))
0x0001D4:
    push (var 0s)
    call (draw_rectangle[]:int32 -5s (- 3s:idealborder 6s) (- (+ self.x 8s) self.rc_cut) (+ self.y 5s) (+ (+ self.x 2s) self.rc_le))
    if !(> self.width 0s) goto 0x0002F8
0x00025C:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) -5s (- 3s:idealborder 6s) (- (+ self.x 8s) self.rc_cut) (+ self.y 5s) (+ (+ self.x 2s) self.rc_le))) goto 0x0002F8
0x0002E4:
    call (event_user[]:int32 (var 2s))
0x0002F8:
    push (var 1s)
    call (draw_sprite_part_ext[]:int32 self.image_blend (var 1s) (var 1s) -5s (- 3s:idealborder 6s) (+ self.x self.le) (var 6s) self.width (var 0s) self.le (var 0s) (var 659s))
0x000380:
    if !(== self.type 2s) goto 0x0005A8
0x000394:
    call (event_user[]:int32 (var 10s))
    if !(> self.width 0s) goto 0x0005A8
0x0003BC:
    push -5s
    call (draw_sprite_part[]:int32 (+ 2s:idealborder 6s) (+ self.x self.le) (var 6s) self.width (var 0s) self.le (var 0s) (var 657s))
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    call (draw_rectangle[]:int32 self.y (- (+ self.x 8s) self.rc_cut) -5s (+ 2s:idealborder 11s) (+ (+ self.x 2s) self.rc_le))
    if !(> self.width 0s) goto 0x000550
0x0004BC:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) self.y (- (+ self.x 8s) self.rc_cut) -5s (+ 2s:idealborder 11s) (+ (+ self.x 2s) self.rc_le))) goto 0x000550
0x00053C:
    call (event_user[]:int32 (var 2s))
0x000550:
    call (draw_sprite_part[]:int32 self.y (+ self.x self.le) (var 6s) self.width (var 0s) self.le (var 0s) (var 659s))
0x0005A8:
    if !(< self.x 0s) goto 0x0005D0
0x0005BC:
    push (< self.hspeed 0s)
    goto 0x0005D4
0x0005D0:
    push 0s
0x0005D4:
    if !pop goto 0x0005E4
0x0005D8:
    call (instance_destroy[]:int32 )
0x0005E4:
    if !(> self.x 640s) goto 0x00060C
0x0005F8:
    push (> self.hspeed 0s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x000620
0x000614:
    call (instance_destroy[]:int32 )
0x000620:
    exit
