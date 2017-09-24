0x000000:
    self.anim = (+ self.anim 0.2d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index (var 265s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.ducky) (+ self.x 46s) self.image_index (var 259s))
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) self.wy (- (+ 40s self.x) (* (sin[]:int32 (/ self.anim (double 2s))) 4s)) (var 28s) (var 16s) (var 0s) (var 0s) (var 0s) (var 264s))
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) self.wy (+ (+ 40s self.x) (* (sin[]:int32 (/ self.anim (double 2s))) 4s)) (var 28s) (var 16s) (var 0s) (var 0s) (var 0s) (var 264s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 50s) (+ self.x 88s) self.anim (var 263s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.hy) self.x self.image_index (var 260s))
    if !(== self.bull 0s) goto 0x0003CC
0x00035C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.hy) self.fy) self.x self.image_index (var 261s))
0x0003CC:
    if !(== self.bull 1s) goto 0x000450
0x0003E0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.hy) self.fy) self.x self.image_index (var 262s))
0x000450:
    if !(> self.con 0s) goto 0x000B88
0x000464:
    if !(== self.con 1s) goto 0x0004C0
0x000478:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0004A8
0x000490:
    pushenv 782s 0x0004A4
0x000498:
    call (instance_destroy[]:int32 )
0x0004A4:
    popenv 0x000498
0x0004A8:
    global.myfight = 2s
    global.mnfight = 9s
0x0004C0:
    if !(== self.con 2s) goto 0x000524
0x0004D4:
    self.bull = 1s
    [obj_aaronbody].bull = 1s
    [obj_aaronbody].sprite_index = 249s
    self.aaron = 289s
    self.con = 3s
    stog.alarm[4s] = 45s
0x000524:
    if !(== self.con 4s) goto 0x0005A0
0x000538:
    global.typer = 33s
    global.msc = 0s
    stog.msg[0s] = "... what the&HECK is that&music?/%%"
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
    self.con = 5s
0x0005A0:
    if !(== self.con 5s) goto 0x0005D0
0x0005B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005D4
0x0005D0:
    push 0s
0x0005D4:
    if !pop goto 0x000648
0x0005D8:
    stog.msg[0s] = "I-I DUNNO^1, DUDE&BUT IT'S SPOOKIN&ME OUT ; )/%%"
    pushenv (int32 self.aaron) 0x00062C
0x000600:
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
0x00062C:
    popenv 0x000600
0x000630:
    [obj_aaronbody].shake = 2s
    self.con = 6s
0x000648:
    if !(== self.con 6s) goto 0x000678
0x00065C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00067C
0x000678:
    push 0s
0x00067C:
    if !pop goto 0x0006D0
0x000680:
    stog.msg[0s] = "... this is worse&than Shyren./%%"
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
    self.con = 7s
0x0006D0:
    if !(== self.con 7s) goto 0x000700
0x0006E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000704
0x000700:
    push 0s
0x000704:
    if !pop goto 0x000778
0x000708:
    stog.msg[0s] = "No way^1, Shyren is&way less scary&; )/%%"
    pushenv (int32 self.aaron) 0x00075C
0x000730:
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
0x00075C:
    popenv 0x000730
0x000760:
    [obj_aaronbody].shake = 2s
    self.con = 8s
0x000778:
    if !(== self.con 8s) goto 0x0007A8
0x00078C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007AC
0x0007A8:
    push 0s
0x0007AC:
    if !pop goto 0x000800
0x0007B0:
    stog.msg[0s] = "... if you're so&scared^1, why do&you keep winking?/%%"
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
    self.con = 9s
0x000800:
    if !(== self.con 9s) goto 0x000830
0x000814:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000834
0x000830:
    push 0s
0x000834:
    if !pop goto 0x0008A8
0x000838:
    stog.msg[0s] = "THESE ARE WINKS&OF FEAR ; )/%%"
    pushenv (int32 self.aaron) 0x00088C
0x000860:
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 100s))
0x00088C:
    popenv 0x000860
0x000890:
    [obj_aaronbody].shake = 3s
    self.con = 10s
0x0008A8:
    if !(== self.con 10s) goto 0x0008D8
0x0008BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008DC
0x0008D8:
    push 0s
0x0008DC:
    if !pop goto 0x000948
0x0008E0:
    stog.msg[0s] = "Forget it^1.&This beat is&too.../"
    stog.msg[1s] = "... filthy./%%"
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
    self.con = 11s
0x000948:
    if !(== self.con 11s) goto 0x000978
0x00095C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00097C
0x000978:
    push 0s
0x00097C:
    if !pop goto 0x000A2C
0x000980:
    self.hspeed = 4s
    stog.msg[0s] = "Wosh^1! Wait^1!&Don't leave me ; )/"
    stog.msg[1s] = "Is this creepy&music my punishment&for being creepy?&; )/"
    stog.msg[2s] = "Please..^1. stop..^1.&I'll never creep&again ; )/%%"
    [obj_aaronbody].shake = 3s
    pushenv (int32 self.aaron) 0x000A1C
0x0009F0:
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
0x000A1C:
    popenv 0x0009F0
0x000A20:
    self.con = 13s
0x000A2C:
    if !(== self.con 13s) goto 0x000A5C
0x000A40:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A60
0x000A5C:
    push 0s
0x000A60:
    if !pop goto 0x000AF4
0x000A64:
    [obj_aaronbody].vspeed = -8s
    stog.msg[0s] = "Wahhhhh!!!!!&; )^3 %%"
    [obj_aaronbody].shake = 0s
    pushenv (int32 self.aaron) 0x000AD0
0x000AA4:
    call (scr_blcon[]:int32 (var 0s) self.y (+ self.x 80s))
0x000AD0:
    popenv 0x000AA4
0x000AD4:
    self.con = 14s
    stog.alarm[4s] = 90s
0x000AF4:
    if !(== self.con 15s) goto 0x000B60
0x000B08:
    stog.flag[95s] = 1s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 16s
    stog.alarm[4s] = 8s
0x000B60:
    if !(== self.con 17s) goto 0x000B88
0x000B74:
    call (room_goto[]:int32 global.currentroom)
0x000B88:
    exit
