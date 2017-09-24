0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(== self.active 1s) goto 0x000E04
0x00006C:
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 235s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 304s) -1s (+ (int32 self.view_current):view_yview 180s) -1s (+ (int32 self.view_current):view_xview 16s))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 232s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 301s) -1s (+ (int32 self.view_current):view_yview 183s) -1s (+ (int32 self.view_current):view_xview 19s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    self.buffer = -1s
    if !(== self.everselect 0s) goto 0x00021C
0x00020C:
    self.mytext = "* Aim with arrows and select with [Z]."
0x00021C:
    if !(!= self.everselect 0s) goto 0x000240
0x000230:
    self.mytext = " "
0x000240:
    if !(> self.everselect 1s) goto 0x00026C
0x000254:
    self.everselect = (- self.everselect 1s)
0x00026C:
    if !(== self.active 1s) goto 0x000318
0x000280:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0002CC
0x000298:
    if !(< self.image_angle 170s) goto 0x0002CC
0x0002AC:
    self.image_angle = (+ self.image_angle 1.5d)
0x0002CC:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000318
0x0002E4:
    if !(> self.image_angle 10s) goto 0x000318
0x0002F8:
    self.image_angle = (- self.image_angle 1.5d)
0x000318:
    self.select = 0s
    call (draw_set_color[]:int32 (var 255s))
    self.getdir = self.image_angle
    self.xdir = (lengthdir_x[]:int32 self.getdir (var 300s))
    self.ydir = (lengthdir_y[]:int32 self.getdir (var 300s))
    self.col = -4s
    self.col2 = (collision_line[]:int32 (var 1s) (var 0s) self.undyne (+ self.y self.ydir) (+ self.x self.xdir) self.y self.x)
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) self.teabox (+ self.y self.ydir) (+ self.x self.xdir) self.y self.x)) goto 0x0004C4
0x000454:
    if !(< self.everselect 2s) goto 0x000498
0x000468:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000498
0x000484:
    call (snd_play[]:int32 (var 114s))
0x000498:
    self.everselect = 3s
    self.select = self.teabox
    self.mytext = "* Teabox - Blatantly correct choice.#* Select with [Z]."
0x0004C4:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) self.hotchocolate (+ self.y self.ydir) (+ self.x self.xdir) self.y self.x)) goto 0x000594
0x000524:
    if !(< self.everselect 2s) goto 0x000568
0x000538:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000568
0x000554:
    call (snd_play[]:int32 (var 114s))
0x000568:
    self.everselect = 3s
    self.select = self.hotchocolate
    self.mytext = "* Hot Chocolate - Green cylinder.#* Select with [Z]."
0x000594:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) self.soda (+ self.y self.ydir) (+ self.x self.xdir) self.y self.x)) goto 0x000664
0x0005F4:
    if !(< self.everselect 2s) goto 0x000638
0x000608:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000638
0x000624:
    call (snd_play[]:int32 (var 114s))
0x000638:
    self.everselect = 3s
    self.select = self.soda
    self.mytext = "* Soda - Sickly yellow liquid.#* Select with [Z]."
0x000664:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) self.sugar (+ self.y self.ydir) (+ self.x self.xdir) self.y self.x)) goto 0x000734
0x0006C4:
    if !(< self.everselect 2s) goto 0x000708
0x0006D8:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000708
0x0006F4:
    call (snd_play[]:int32 (var 114s))
0x000708:
    self.everselect = 3s
    self.select = self.sugar
    self.mytext = "* Sugar - Goes in tea.#* Select with [Z]."
0x000734:
    if !(== self.col2 self.undyne) goto 0x0007BC
0x00074C:
    if !(< self.everselect 2s) goto 0x000790
0x000760:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000790
0x00077C:
    call (snd_play[]:int32 (var 114s))
0x000790:
    self.everselect = 3s
    self.select = self.undyne
    self.mytext = "* Undyne.#* Select with [Z]."
0x0007BC:
    if !(>= self.image_angle 53s) goto 0x0007E4
0x0007D0:
    push (<= self.image_angle 66s)
    goto 0x0007E8
0x0007E4:
    push 0s
0x0007E8:
    if !pop goto 0x000858
0x0007EC:
    if !(< self.everselect 2s) goto 0x000830
0x000800:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x000830
0x00081C:
    call (snd_play[]:int32 (var 114s))
0x000830:
    self.select = 9s
    self.everselect = 3s
    self.mytext = "* Fridge - Full of food.#* Select with [Z]."
0x000858:
    if !(>= self.image_angle 17s) goto 0x000880
0x00086C:
    push (<= self.image_angle 41s)
    goto 0x000884
0x000880:
    push 0s
0x000884:
    if !pop goto 0x0008F4
0x000888:
    if !(< self.everselect 2s) goto 0x0008CC
0x00089C:
    if !(~ (bool (snd_isplaying[]:int32 (var 114s)))) goto 0x0008CC
0x0008B8:
    call (snd_play[]:int32 (var 114s))
0x0008CC:
    self.select = 10s
    self.everselect = 3s
    self.mytext = "* Sword - Acquired taste.#* Select with [Z]."
0x0008F4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000948
0x00090C:
    if !(== self.active 1s) goto 0x000948
0x000920:
    if !(< self.buffer 1s) goto 0x000948
0x000934:
    push (!= self.select 0s)
    goto 0x00094C
0x000948:
    push 0s
0x00094C:
    if !pop goto 0x000DC8
0x000950:
    global.facechoice = 5s
    global.msc = 0s
    global.faceemotion = 0s
    self.active = 2s
    if !(== self.select self.undyne) goto 0x000A24
0x000998:
    global.faceemotion = 1s
    stog.msg[0s] = "\\E1* ... are you.../"
    stog.msg[1s] = "\\E5* Hitting on me????/%%"
    if !(> self.sel_undyne 0s) goto 0x000A0C
0x0009E8:
    global.faceemotion = 5s
    stog.msg[0s] = "* ????????????????/%%"
0x000A0C:
    self.sel_undyne = (+ self.sel_undyne 1s)
0x000A24:
    if !(== self.select self.sugar) goto 0x000AA4
0x000A3C:
    global.faceemotion = 9s
    global.msc = 708s
    if !(> self.sel_sugar 0s) goto 0x000A8C
0x000A68:
    global.msc = 0s
    stog.msg[0s] = "* The sugar is for&  tea^1, mmm'kay?/%%"
0x000A8C:
    self.sel_sugar = (+ self.sel_sugar 1s)
0x000AA4:
    if !(== self.select self.soda) goto 0x000BB4
0x000ABC:
    global.faceemotion = 9s
    stog.msg[0s] = "* Oh^1, soda?/"
    stog.msg[1s] = "\\E4* Actually^1, even though&  you pointed to it^1,&  you don't look happy./"
    stog.msg[2s] = "\\E0* Heh^1, that's fine^1!&* I think soda's gross^1,&  too!/"
    stog.msg[3s] = "\\E4* It rots your teeth..^1.&* It rots your mind.../"
    stog.msg[4s] = "\\E1* IT ROTS YOUR FIGHTING&  SPIRIT!/"
    stog.msg[5s] = "\\E9* ... huh^1?&* Why do I have it?/"
    stog.msg[6s] = "\\E8* .../%%"
    if !(> self.sel_soda 0s) goto 0x000B9C
0x000B84:
    stog.msg[0s] = "* What^1?&* You wanna throw the&  spear at it?/%%"
0x000B9C:
    self.sel_soda = (+ self.sel_soda 1s)
0x000BB4:
    if !(== self.select self.hotchocolate) goto 0x000C7C
0x000BCC:
    global.faceemotion = 9s
    stog.msg[0s] = "* Oh^1, you want some&  hot chocolate?/"
    stog.msg[1s] = "\\E1* Wait^1, wait^1, I just&  remembered..^1.&* That container's empty./"
    stog.msg[2s] = "\\E9* I stopped getting&  it because it was&  always a hassle.../"
    stog.msg[3s] = "\\E6* ASGORE kept getting&  marshmallows stuck in&  his beard./%%"
    if !(> self.sel_hotchocolate 0s) goto 0x000C64
0x000C4C:
    stog.msg[0s] = "* That container's empty./%%"
0x000C64:
    self.sel_hotchocolate = (+ self.sel_hotchocolate 1s)
0x000C7C:
    if !(== self.select self.teabox) goto 0x000CD0
0x000C94:
    global.faceemotion = 9s
    stog.msg[0s] = "\\E9* ... tea^1, huh^1?&* Coming right up!/%%"
    [obj_undynedate_inside].con = 300s
    self.active = 3s
0x000CD0:
    if !(== self.select 9s) goto 0x000D20
0x000CE4:
    global.faceemotion = 2s
    stog.msg[0s] = "* The fridge!^1?&* You want to have&  the entire fridge!?/"
    stog.msg[1s] = "\\E1* No!/%%"
0x000D20:
    if !(== self.select 10s) goto 0x000D70
0x000D34:
    global.faceemotion = 3s
    stog.msg[0s] = "* Believe me^1, I would&  GLADLY give you your&  fill of swords./"
    stog.msg[1s] = "\\E9* If you weren't my&  beloved houseguest!/%%"
0x000D70:
    self.gh = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    if !(!= self.select self.sugar) goto 0x000DC8
0x000DB0:
    push 1s
    stog.side* = (int32 self.gh)
0x000DC8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 self.mytext (var 186s) (var 24s))
0x000E04:
    if !(== self.active 2s) goto 0x000E34
0x000E18:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E38
0x000E34:
    push 0s
0x000E38:
    if !pop goto 0x000E54
0x000E3C:
    self.active = 1s
    self.buffer = 12s
0x000E54:
    exit
