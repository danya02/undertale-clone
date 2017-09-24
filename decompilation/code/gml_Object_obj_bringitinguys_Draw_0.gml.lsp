0x000000:
    if !(> (int32 self.guy):x -32s) goto 0x000064
0x000020:
    push -34s
    stog.x* = (int32 self.guy)
    push 0s
    stog.hspeed* = (int32 self.guy)
    stog.talk[0s] = 1s
0x000064:
    push -1s
    if !(== 0s:talk 1s) goto 0x000094
0x000080:
    push (== self.shake 0s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x000160
0x00009C:
    call (draw_sprite[]:int32 (int32 self.guy):y (+ (int32 self.guy):x 190s) (var 0s) (var 19s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "You can#do it!") (+ (int32 self.guy):y 10s) (+ (int32 self.guy):x 220s))
0x000160:
    if !(> (int32 self.guy2):x -24s) goto 0x0001C4
0x000180:
    push -24s
    stog.x* = (int32 self.guy2)
    push 0s
    stog.hspeed* = (int32 self.guy2)
    stog.talk[1s] = 1s
0x0001C4:
    push -1s
    if !(== 1s:talk 1s) goto 0x0001F4
0x0001E0:
    push (== self.shake 0s)
    goto 0x0001F8
0x0001F4:
    push 0s
0x0001F8:
    if !pop goto 0x0002C0
0x0001FC:
    call (draw_sprite[]:int32 (int32 self.guy2):y (+ (int32 self.guy2):x 90s) (var 0s) (var 19s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "Ribbit.") (+ (int32 self.guy2):y 10s) (+ (int32 self.guy2):x 120s))
0x0002C0:
    if !(> (int32 self.guy3):x -24s) goto 0x000324
0x0002E0:
    push -24s
    stog.x* = (int32 self.guy3)
    push 0s
    stog.hspeed* = (int32 self.guy3)
    stog.talk[2s] = 1s
0x000324:
    push -1s
    if !(== 2s:talk 1s) goto 0x000354
0x000340:
    push (== self.shake 0s)
    goto 0x000358
0x000354:
    push 0s
0x000358:
    if !pop goto 0x000420
0x00035C:
    call (draw_sprite[]:int32 (int32 self.guy3):y (+ (int32 self.guy3):x 130s) (var 0s) (var 19s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "You've#GOT to#win!") (+ (int32 self.guy3):y 10s) (+ (int32 self.guy3):x 160s))
0x000420:
    if !(< (int32 self.guy4):y (- self.room_height 60s)) goto 0x000488
0x00044C:
    push (- self.room_height 60s)
    stog.y* = (int32 self.guy4)
    push 0s
    stog.vspeed* = (int32 self.guy4)
0x000488:
    if !(< (int32 self.guy_r):x (- self.room_width 80s)) goto 0x000504
0x0004B4:
    push (- self.room_width 80s)
    stog.x* = (int32 self.guy_r)
    push 0s
    stog.hspeed* = (int32 self.guy_r)
    stog.talk_r[0s] = 1s
0x000504:
    push -1s
    if !(== 0s:talk_r 1s) goto 0x000534
0x000520:
    push (== self.shake 0s)
    goto 0x000538
0x000534:
    push 0s
0x000538:
    if !pop goto 0x000600
0x00053C:
    call (draw_sprite[]:int32 (int32 self.guy_r):y (- (int32 self.guy_r):x 113s) (var 0s) (var 21s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "We're#with you#too!") (+ (int32 self.guy_r):y 10s) (- (int32 self.guy_r):x 88s))
0x000600:
    if !(< (int32 self.guy_r2):x (- self.room_width 90s)) goto 0x00067C
0x00062C:
    push (- self.room_width 90s)
    stog.x* = (int32 self.guy_r2)
    push 0s
    stog.hspeed* = (int32 self.guy_r2)
    stog.talk_r[1s] = 1s
0x00067C:
    push -1s
    if !(== 1s:talk_r 1s) goto 0x0006AC
0x000698:
    push (== self.shake 0s)
    goto 0x0006B0
0x0006AC:
    push 0s
0x0006B0:
    if !pop goto 0x000778
0x0006B4:
    call (draw_sprite[]:int32 (int32 self.guy_r2):y (- (int32 self.guy_r2):x 113s) (var 0s) (var 21s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "C'mon,#you got#this!") (+ (int32 self.guy_r2):y 10s) (- (int32 self.guy_r2):x 88s))
0x000778:
    if !(< (int32 self.guy_r3):x (- self.room_width 90s)) goto 0x0007F4
0x0007A4:
    push (- self.room_width 90s)
    stog.x* = (int32 self.guy_r3)
    push 0s
    stog.hspeed* = (int32 self.guy_r3)
    stog.talk_r[2s] = 1s
0x0007F4:
    push -1s
    if !(== 2s:talk_r 1s) goto 0x000824
0x000810:
    push (== self.shake 0s)
    goto 0x000828
0x000824:
    push 0s
0x000828:
    if !pop goto 0x0008F0
0x00082C:
    call (draw_sprite[]:int32 (int32 self.guy_r3):y (- (int32 self.guy_r3):x 113s) (var 0s) (var 21s))
    call (draw_set_font[]:int32 (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_text[]:int32 (var "La la#la la!") (+ (int32 self.guy_r3):y 10s) (- (int32 self.guy_r3):x 88s))
0x0008F0:
    if !(< (int32 self.guy_r4):x (- self.room_width 90s)) goto 0x000958
0x00091C:
    push (- self.room_width 90s)
    stog.x* = (int32 self.guy_r4)
    push 0s
    stog.hspeed* = (int32 self.guy_r4)
0x000958:
    if !(> self.shake 0s) goto 0x000A90
0x00096C:
    self.shake = (+ self.shake 0.02d)
    self.i = 0s
    if !(< self.i 8s) goto 0x000A90
0x0009AC:
    push -1s
    push (- (+ (int32 self.i):shx (random[]:int32 self.shake)) (random[]:int32 self.shake))
    push -1s
    stog.x* = (int32 (int32 self.i):sh)
    push -1s
    push (- (+ (int32 self.i):shy (random[]:int32 self.shake)) (random[]:int32 self.shake))
    push -1s
    stog.y* = (int32 (int32 self.i):sh)
    self.i = (+ self.i 1s)
    goto 0x000998
0x000A90:
    exit
