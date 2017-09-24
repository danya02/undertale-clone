0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.naming 4s) goto 0x0000F0
0x000040:
    global.charname = self.charname
    call (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    self.alerm = 0s
    self.naming = 5s
    self.cy = (caster_load[]:int32 (var "music/cymbal.ogg"))
    call (caster_play[]:int32 (var 0.95d) (var 0.8d) self.cy)
0x0000F0:
    if !(== self.naming 5s) goto 0x0004A8
0x000104:
    self.alerm = (+ self.alerm 1s)
    if !(< self.q 120s) goto 0x000148
0x000130:
    self.q = (+ self.q 1s)
0x000148:
    call (draw_text_transformed[]:int32 (random_ranger[]:int32 (/ (* self.r self.q) (double 60s)) (/ (* (- self.r) self.q) (double 60s))) (+ 1s (/ self.q (double 50s))) (+ 1s (/ self.q (double 50s))) self.charname (+ (+ (/ self.q (double 2s)) 55s) (random[]:int32 (* self.r 2s))) (- (+ 140s (random[]:int32 (* self.r 2s))) (/ self.q (double 3s))))
    if !(> self.alerm 179s) goto 0x0004A8
0x000264:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(> self.truereset 0s) goto 0x0003B4
0x00029C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.sk = (ini_read_real[]:int32 (var 0s) (var "s_key") (var "reset"))
    call (ini_close[]:int32 )
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x000324
0x00030C:
    call (file_delete[]:int32 (var "undertale.ini"))
0x000324:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "reset") (var "reset"))
    if !(!= self.sk 0s) goto 0x0003A8
0x00037C:
    call (ini_write_real[]:int32 self.sk (var "s_key") (var "reset"))
0x0003A8:
    call (ini_close[]:int32 )
0x0003B4:
    call (caster_free[]:int32 self.cy)
    stog.flag[5s] = (+ (floor[]:int32 (random[]:int32 (var 100s))) 1s)
    call (ini_open[]:int32 (var "undertale.ini"))
    push -5s
    call (ini_write_real[]:int32 5s:flag (var "fun") (var "General"))
    call (ini_close[]:int32 )
    pushenv 1569s 0x000464
0x000458:
    self.time = 0s
0x000464:
    popenv 0x000458
0x000468:
    if !(== (string_lower[]:int32 self.charname) "frisk") goto 0x00049C
0x000488:
    stog.flag[6s] = 1s
0x00049C:
    call (room_goto_next[]:int32 )
0x0004A8:
    if !(== self.naming 2s) goto 0x000F60
0x0004BC:
    self.allow = 1s
    self.l_char = (string_lower[]:int32 self.charname)
    self.spec_m = "Is this name correct?"
    if !(== self.hasname 1s) goto 0x000538
0x000504:
    if !(== self.truereset 0s) goto 0x000538
0x000518:
    push (!= (string_lower[]:int32 global.charname) "frisk")
    goto 0x00053C
0x000538:
    push 0s
0x00053C:
    if !pop goto 0x000550
0x000540:
    self.spec_m = "A name has already#been chosen."
0x000550:
    if !(== self.l_char "") goto 0x000584
0x000568:
    self.spec_m = "You must choose a name."
    self.allow = 0s
0x000584:
    if !(== self.l_char "aaaaaa") goto 0x0005B8
0x00059C:
    self.spec_m = "Not very creative...?"
    self.allow = 1s
0x0005B8:
    if !(== self.l_char "asgore") goto 0x0005EC
0x0005D0:
    self.spec_m = "You cannot."
    self.allow = 0s
0x0005EC:
    if !(== self.l_char "toriel") goto 0x000620
0x000604:
    self.spec_m = "I think you should#think of your own#name, my child."
    self.allow = 0s
0x000620:
    if !(== self.l_char "sans") goto 0x000654
0x000638:
    self.spec_m = "nope."
    self.allow = 0s
0x000654:
    if !(== self.l_char "undyne") goto 0x000688
0x00066C:
    self.spec_m = "Get your OWN name!"
    self.allow = 0s
0x000688:
    if !(== self.l_char "flowey") goto 0x0006BC
0x0006A0:
    self.spec_m = "I already CHOSE#that name."
    self.allow = 0s
0x0006BC:
    if !(== self.l_char "chara") goto 0x0006F0
0x0006D4:
    self.spec_m = "The true name."
    self.allow = 1s
0x0006F0:
    if !(== self.l_char "alphys") goto 0x000724
0x000708:
    self.spec_m = "D-don't do that."
    self.allow = 0s
0x000724:
    if !(== self.l_char "alphy") goto 0x000758
0x00073C:
    self.spec_m = "Uh.... OK?"
    self.allow = 1s
0x000758:
    if !(== self.l_char "papyru") goto 0x00078C
0x000770:
    self.spec_m = "I'LL ALLOW IT!!!!"
    self.allow = 1s
0x00078C:
    if (== self.l_char "napsta") goto 0x0007BC
0x0007A4:
    push (== self.l_char "blooky")
    goto 0x0007C0
0x0007BC:
    push 1s
0x0007C0:
    if !pop goto 0x0007E0
0x0007C4:
    self.spec_m = "............#(They're powerless to#stop you.)"
    self.allow = 1s
0x0007E0:
    if (== self.l_char "murder") goto 0x000810
0x0007F8:
    push (== self.l_char "mercy")
    goto 0x000814
0x000810:
    push 1s
0x000814:
    if !pop goto 0x000834
0x000818:
    self.spec_m = "That's a little on-#the-nose, isn't it...?"
    self.allow = 1s
0x000834:
    if !(== self.l_char "asriel") goto 0x000868
0x00084C:
    self.spec_m = "..."
    self.allow = 0s
0x000868:
    if !(== self.l_char "frisk") goto 0x00089C
0x000880:
    self.spec_m = "WARNING: This name will#make your life hell.#Proceed anyway?"
    self.allow = 1s
0x00089C:
    if !(== self.l_char "catty") goto 0x0008D0
0x0008B4:
    self.spec_m = "Bratty! Bratty!#That's MY name!"
    self.allow = 1s
0x0008D0:
    if !(== self.l_char "bratty") goto 0x000904
0x0008E8:
    self.spec_m = "Like, OK I guess."
    self.allow = 1s
0x000904:
    if (== self.l_char "MTT") goto 0x00094C
0x00091C:
    if (== self.l_char "metta") goto 0x00094C
0x000934:
    push (== self.l_char "mett")
    goto 0x000950
0x00094C:
    push 1s
0x000950:
    if !pop goto 0x000970
0x000954:
    self.spec_m = "OOOOH!!! ARE YOU#PROMOTING MY BRAND?"
    self.allow = 1s
0x000970:
    if !(== self.l_char "gerson") goto 0x0009A4
0x000988:
    self.spec_m = "Wah ha ha! Why not?"
    self.allow = 1s
0x0009A4:
    if !(== self.l_char "shyren") goto 0x0009D8
0x0009BC:
    self.spec_m = "...?"
    self.allow = 1s
0x0009D8:
    if !(== self.l_char "aaron") goto 0x000A0C
0x0009F0:
    self.spec_m = "Is this name correct? ; )"
    self.allow = 1s
0x000A0C:
    if !(== self.l_char "temmie") goto 0x000A40
0x000A24:
    self.spec_m = "hOI!"
    self.allow = 1s
0x000A40:
    if !(== self.l_char "woshua") goto 0x000A74
0x000A58:
    self.spec_m = "Clean name."
    self.allow = 1s
0x000A74:
    if !(== self.l_char "jerry") goto 0x000AA8
0x000A8C:
    self.spec_m = "Jerry."
    self.allow = 1s
0x000AA8:
    if !(== self.l_char "bpants") goto 0x000ADC
0x000AC0:
    self.spec_m = "You are really scraping the#bottom of the barrel."
    self.allow = 1s
0x000ADC:
    self.demonx = "Part of this game's charm is the mystery of how many options or secrets there are. If you are reading this, please don't post this message or this information anywhere. Or doing secrets will become pointless."
    if !(== self.l_char "gaster") goto 0x000B10
0x000B04:
    call (game_restart[]:int32 )
0x000B10:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x000BF8
0x000B2C:
    if !(== self.allow 1s) goto 0x000B84
0x000B40:
    if !(== self.selected2 1s) goto 0x000B70
0x000B54:
    push (> (string_length[]:int32 self.charname) 0s)
    goto 0x000B74
0x000B70:
    push 0s
0x000B74:
    if !pop goto 0x000B84
0x000B78:
    self.naming = 4s
0x000B84:
    if !(== self.selected2 0s) goto 0x000BE4
0x000B98:
    if !(== self.hasname 1s) goto 0x000BC0
0x000BAC:
    push (== self.truereset 0s)
    goto 0x000BC4
0x000BC0:
    push 0s
0x000BC4:
    if !pop goto 0x000BD8
0x000BC8:
    self.naming = 3s
    goto 0x000BE4
0x000BD8:
    self.naming = 1s
0x000BE4:
    call (keyboard_clear[]:int32 (var 13s))
0x000BF8:
    if !(== self.naming 2s) goto 0x000F60
0x000C0C:
    call (draw_set_color[]:int32 (var 16777215))
    if !(< self.q 120s) goto 0x000C50
0x000C38:
    self.q = (+ self.q 1s)
0x000C50:
    call (draw_text_transformed[]:int32 (random_ranger[]:int32 (/ (* self.r self.q) (double 60s)) (/ (* (- self.r) self.q) (double 60s))) (+ 1s (/ self.q (double 50s))) (+ 1s (/ self.q (double 50s))) self.charname (+ (+ (/ self.q (double 2s)) 55s) (random[]:int32 (* self.r 2s))) (- (+ 140s (random[]:int32 (* self.r 2s))) (/ self.q (double 3s))))
    call (draw_text[]:int32 self.spec_m (var 30s) (var 90s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.allow 1s) goto 0x000E68
0x000DA8:
    if !(== self.selected2 0s) goto 0x000DD4
0x000DBC:
    call (draw_set_color[]:int32 (var 65535))
0x000DD4:
    call (draw_text[]:int32 (var "No") (var 200s) (var 70s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected2 1s) goto 0x000E40
0x000E28:
    call (draw_set_color[]:int32 (var 65535))
0x000E40:
    call (draw_text[]:int32 (var "Yes") (var 200s) (var 210s))
0x000E68:
    if !(== self.allow 0s) goto 0x000ED4
0x000E7C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Go back") (var 200s) (var 70s))
    call (draw_set_color[]:int32 (var 16777215))
0x000ED4:
    if !(== self.allow 1s) goto 0x000F54
0x000EE8:
    if (bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000F18
0x000F00:
    push (bool (keyboard_check_pressed[]:int32 (var 37s)))
    goto 0x000F1C
0x000F18:
    push 1s
0x000F1C:
    if !pop goto 0x000F50
0x000F20:
    if !(== self.selected2 1s) goto 0x000F44
0x000F34:
    self.selected2 = 0s
    goto 0x000F50
0x000F44:
    self.selected2 = 1s
0x000F50:
    goto 0x000F60
0x000F54:
    self.selected2 = 0s
0x000F60:
    if !(== self.naming 1s) goto 0x001980
0x000F74:
    if !(< self.selected 65s) goto 0x000F94
0x000F88:
    self.selected = 65s
0x000F94:
    self.i = 0s
    self.j = 0s
    self.m = 0s
    self.r = 0.5d
    self.q = 0s
    self.n = 65s
    if !(< self.n 91s) goto 0x001120
0x000FF8:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.n self.selected) goto 0x001040
0x001028:
    call (draw_set_color[]:int32 (var 65535))
0x001040:
    call (draw_text[]:int32 (chr[]:int32 self.n) (+ (+ 75s (* self.m 14s)) (random[]:int32 self.r)) (+ (+ 60s (* self.j 32s)) (random[]:int32 self.r)))
    self.j = (+ self.j 1s)
    if !(> self.j 6s) goto 0x001104
0x0010E0:
    self.m = (+ self.m 1s)
    self.j = 0s
0x001104:
    self.n = (+ self.n 1s)
    goto 0x000FE4
0x001120:
    self.i = 0s
    self.j = 0s
    self.m = 0s
    self.n = 97s
    if !(< self.n 123s) goto 0x00128C
0x001164:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.n self.selected) goto 0x0011AC
0x001194:
    call (draw_set_color[]:int32 (var 65535))
0x0011AC:
    call (draw_text[]:int32 (chr[]:int32 self.n) (+ (+ 135s (* self.m 14s)) (random[]:int32 self.r)) (+ (+ 60s (* self.j 32s)) (random[]:int32 self.r)))
    self.j = (+ self.j 1s)
    if !(> self.j 6s) goto 0x001270
0x00124C:
    self.m = (+ self.m 1s)
    self.j = 0s
0x001270:
    self.n = (+ self.n 1s)
    goto 0x001150
0x00128C:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected 123s) goto 0x0012D0
0x0012B8:
    call (draw_set_color[]:int32 (var 65535))
0x0012D0:
    call (draw_text[]:int32 (var "Quit") (var 200s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected 124s) goto 0x00133C
0x001324:
    call (draw_set_color[]:int32 (var 65535))
0x00133C:
    call (draw_text[]:int32 (var "Backspace") (var 200s) (var 120s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected 125s) goto 0x0013A8
0x001390:
    call (draw_set_color[]:int32 (var 65535))
0x0013A8:
    call (draw_text[]:int32 (var "Done") (var 200s) (var 220s))
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x001438
0x0013E8:
    if !(== self.selected 90s) goto 0x00140C
0x0013FC:
    self.selected = 97s
    goto 0x001438
0x00140C:
    if !(< self.selected 125s) goto 0x001438
0x001420:
    self.selected = (+ self.selected 1s)
0x001438:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0014A0
0x001450:
    if !(== self.selected 97s) goto 0x001474
0x001464:
    self.selected = 90s
    goto 0x0014A0
0x001474:
    if !(> self.selected 65s) goto 0x0014A0
0x001488:
    self.selected = (- self.selected 1s)
0x0014A0:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0015EC
0x0014B8:
    if !(<= self.selected 122s) goto 0x001598
0x0014CC:
    if !(>= self.selected 86s) goto 0x0014F4
0x0014E0:
    push (<= self.selected 90s)
    goto 0x0014F8
0x0014F4:
    push 0s
0x0014F8:
    if !pop goto 0x001514
0x0014FC:
    self.selected = (+ self.selected 4s)
0x001514:
    if (== self.selected 84s) goto 0x00153C
0x001528:
    push (== self.selected 85s)
    goto 0x001540
0x00153C:
    push 1s
0x001540:
    if !pop goto 0x00155C
0x001544:
    self.selected = (+ self.selected 11s)
0x00155C:
    self.selected = (+ self.selected 7s)
    if !(>= self.selected 123s) goto 0x001594
0x001588:
    self.selected = 124s
0x001594:
    goto 0x0015EC
0x001598:
    if !(== self.selected 125s) goto 0x0015BC
0x0015AC:
    self.selected = 70s
    goto 0x0015EC
0x0015BC:
    if !(== self.selected 124s) goto 0x0015E0
0x0015D0:
    self.selected = 68s
    goto 0x0015EC
0x0015E0:
    self.selected = 65s
0x0015EC:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x00173C
0x001604:
    if !(> self.selected 71s) goto 0x0016E8
0x001618:
    if !(<= self.selected 122s) goto 0x0016D8
0x00162C:
    if !(>= self.selected 97s) goto 0x001654
0x001640:
    push (<= self.selected 101s)
    goto 0x001658
0x001654:
    push 0s
0x001658:
    if !pop goto 0x001674
0x00165C:
    self.selected = (- self.selected 4s)
0x001674:
    if (== self.selected 102s) goto 0x00169C
0x001688:
    push (== self.selected 103s)
    goto 0x0016A0
0x00169C:
    push 1s
0x0016A0:
    if !pop goto 0x0016BC
0x0016A4:
    self.selected = (- self.selected 11s)
0x0016BC:
    self.selected = (- self.selected 7s)
    goto 0x0016E4
0x0016D8:
    self.selected = 122s
0x0016E4:
    goto 0x00173C
0x0016E8:
    if !(> self.selected 69s) goto 0x00170C
0x0016FC:
    self.selected = 125s
    goto 0x00173C
0x00170C:
    if !(> self.selected 67s) goto 0x001730
0x001720:
    self.selected = 124s
    goto 0x00173C
0x001730:
    self.selected = 123s
0x00173C:
    self.bks_f = 0s
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x001880
0x001764:
    if !(> self.selected 122s) goto 0x001818
0x001778:
    if !(== self.selected 123s) goto 0x001798
0x00178C:
    self.naming = 3s
0x001798:
    if !(== self.selected 124s) goto 0x0017B8
0x0017AC:
    self.bks_f = 1s
0x0017B8:
    if !(== self.selected 125s) goto 0x001800
0x0017CC:
    if !(> (string_length[]:int32 self.charname) 0s) goto 0x001800
0x0017E8:
    self.naming = 2s
    self.selected2 = 0s
0x001800:
    call (keyboard_clear[]:int32 (var 13s))
    goto 0x001880
0x001818:
    if !(== (string_length[]:int32 self.charname) 6s) goto 0x00185C
0x001834:
    self.charname = (string_delete[]:int32 (var 1s) (var 6s) self.charname)
0x00185C:
    self.charname = (+ self.charname (chr[]:int32 self.selected))
0x001880:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0018AC
0x001898:
    push (== self.bks_f 1s)
    goto 0x0018B0
0x0018AC:
    push 1s
0x0018B0:
    if !pop goto 0x00191C
0x0018B4:
    self.s = (string_length[]:int32 self.charname)
    if !(> self.s 0s) goto 0x001908
0x0018E0:
    self.charname = (string_delete[]:int32 (var 1s) self.s self.charname)
0x001908:
    call (keyboard_key_release[]:int32 (var 16s))
0x00191C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 self.charname (var 55s) (var 140s))
    call (draw_text[]:int32 (var "Name the fallen human.") (var 30s) (var 90s))
0x001980:
    if !(== self.naming 3s) goto 0x002448
0x001994:
    self.iniread = (ini_open[]:int32 (var "undertale.ini"))
    if !(bool (ini_section_exists[]:int32 (var "General"))) goto 0x0019E0
0x0019CC:
    push (== self.hasname 1s)
    goto 0x0019E4
0x0019E0:
    push 0s
0x0019E4:
    if !pop goto 0x0020A4
0x0019E8:
    self.minutes = (floor[]:int32 (/ self.time (double 1800s)))
    self.seconds = (round[]:int32 (* (- (/ self.time (double 1800s)) self.minutes) 60s))
    if !(== self.seconds 60s) goto 0x001A64
0x001A58:
    self.seconds = 0s
0x001A64:
    if !(< self.seconds 10s) goto 0x001A9C
0x001A78:
    self.seconds = (+ "0" (string[]:int32 self.seconds))
0x001A9C:
    call (script_execute[]:int32 self.roome (var 54s))
    call (draw_text[]:int32 self.name (var 60s) (var 70s))
    call (draw_text[]:int32 (+ "LV " (string[]:int32 self.love)) (var 60s) (var 140s))
    call (draw_text[]:int32 (+ (+ (string[]:int32 self.minutes) ":") (string[]:int32 self.seconds)) (var 60s) (var 210s))
    call (draw_text[]:int32 self.roomname (var 80s) (var 70s))
    if !(== self.selected3 0s) goto 0x001BB0
0x001B98:
    call (draw_set_color[]:int32 (var 65535))
0x001BB0:
    call (draw_text[]:int32 (var "Continue") (var 110s) (var 85s))
    call (draw_set_color[]:int32 (var 16777215))
    self.js = 0s
    if !(> 1569.j_ch 0s) goto 0x001C8C
0x001C10:
    self.js = 1s
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected3 2s) goto 0x001C60
0x001C48:
    call (draw_set_color[]:int32 (var 65535))
0x001C60:
    call (draw_text[]:int32 (var "Joystick Config") (var 132s) (var 96s))
    goto 0x001CAC
0x001C8C:
    if !(== self.selected3 2s) goto 0x001CAC
0x001CA0:
    self.selected3 = 0s
0x001CAC:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected3 1s) goto 0x001CF0
0x001CD8:
    call (draw_set_color[]:int32 (var 65535))
0x001CF0:
    if !(== self.truereset 0s) goto 0x001D30
0x001D04:
    call (draw_text[]:int32 (var "Reset") (var 110s) (var 175s))
    goto 0x001D58
0x001D30:
    call (draw_text[]:int32 (var "True Reset") (var 110s) (var 175s))
0x001D58:
    if (bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x001D88
0x001D70:
    push (bool (keyboard_check_pressed[]:int32 (var 37s)))
    goto 0x001D8C
0x001D88:
    push 1s
0x001D8C:
    if !pop goto 0x001DFC
0x001D90:
    if !(== self.selected3 0s) goto 0x001DB4
0x001DA4:
    self.selected3 = 1s
    goto 0x001DD4
0x001DB4:
    if !(== self.selected3 1s) goto 0x001DD4
0x001DC8:
    self.selected3 = 0s
0x001DD4:
    call (keyboard_clear[]:int32 (var 37s))
    call (keyboard_clear[]:int32 (var 39s))
0x001DFC:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x001E28
0x001E14:
    push (== self.js 1s)
    goto 0x001E2C
0x001E28:
    push 0s
0x001E2C:
    if !pop goto 0x001E80
0x001E30:
    if (== self.selected3 0s) goto 0x001E58
0x001E44:
    push (== self.selected3 1s)
    goto 0x001E5C
0x001E58:
    push 1s
0x001E5C:
    if !pop goto 0x001E6C
0x001E60:
    self.selected3 = 2s
0x001E6C:
    call (keyboard_clear[]:int32 (var 40s))
0x001E80:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x001EAC
0x001E98:
    push (== self.js 1s)
    goto 0x001EB0
0x001EAC:
    push 0s
0x001EB0:
    if !pop goto 0x001EE8
0x001EB4:
    if !(== self.selected3 2s) goto 0x001ED4
0x001EC8:
    self.selected3 = 0s
0x001ED4:
    call (keyboard_clear[]:int32 (var 40s))
0x001EE8:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x0020A0
0x001F04:
    if !(== self.selected3 0s) goto 0x001F70
0x001F18:
    call (caster_free[]:int32 (var -3s))
    if !(== (file_exists[]:int32 (var "file0")) 0s) goto 0x001F5C
0x001F4C:
    call (room_goto_next[]:int32 )
    goto 0x001F70
0x001F5C:
    call (script_execute[]:int32 (var 61s))
0x001F70:
    if !(== self.selected3 1s) goto 0x002064
0x001F84:
    if (== self.hasname 0s) goto 0x001FCC
0x001F98:
    if (== (string_lower[]:int32 global.charname) "frisk") goto 0x001FCC
0x001FB8:
    push (> self.truereset 0s)
    goto 0x001FD0
0x001FCC:
    push 1s
0x001FD0:
    if !pop goto 0x001FE4
0x001FD4:
    self.naming = 1s
    goto 0x002050
0x001FE4:
    self.charname = global.charname
    self.naming = 2s
    self.alerm = 0s
    self.i = 0s
    self.j = 0s
    self.m = 0s
    self.r = 0.5d
    self.q = 0s
0x002050:
    call (keyboard_clear[]:int32 (var 13s))
0x002064:
    if !(== self.selected3 2s) goto 0x0020A0
0x002078:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 288s))
0x0020A0:
    goto 0x002448
0x0020A4:
    call (draw_set_color[]:int32 (var 12632256))
    call (draw_text[]:int32 (var " --- Instruction ---") (var 20s) (var 85s))
    call (draw_text[]:int32 (var "[Z or ENTER] - Confirm") (var 50s) (var 85s))
    call (draw_text[]:int32 (var "[X or SHIFT] - Cancel") (var 68s) (var 85s))
    call (draw_text[]:int32 (var "[C or CTRL] - Menu (In-game)") (var 86s) (var 85s))
    call (draw_text[]:int32 (var "[F4] - Fullscreen") (var 104s) (var 85s))
    call (draw_text[]:int32 (var "[Hold ESC] - Quit") (var 122s) (var 85s))
    call (draw_text[]:int32 (var "When HP is 0, you lose.") (var 140s) (var 85s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected3 0s) goto 0x002218
0x002200:
    call (draw_set_color[]:int32 (var 65535))
0x002218:
    if !(> 1569.j_ch 0s) goto 0x002254
0x00222C:
    call (draw_text[]:int32 (var "Begin Game") (var 160s) (var 35s))
0x002254:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x002280
0x00226C:
    push (> 1569.j_ch 0s)
    goto 0x002284
0x002280:
    push 0s
0x002284:
    if !pop goto 0x0022A8
0x002288:
    if !(== self.selected3 0s) goto 0x0022A8
0x00229C:
    self.selected3 = 1s
0x0022A8:
    if !(== 1569.j_ch 0s) goto 0x0022C8
0x0022BC:
    self.selected3 = 0s
0x0022C8:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x002300
0x0022E0:
    if !(== self.selected3 1s) goto 0x002300
0x0022F4:
    self.selected3 = 0s
0x002300:
    if !(> 1569.j_ch 0s) goto 0x002384
0x002314:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.selected3 1s) goto 0x002358
0x002340:
    call (draw_set_color[]:int32 (var 65535))
0x002358:
    call (draw_text[]:int32 (var "Joystick Config") (var 160s) (var 175s))
    goto 0x002390
0x002384:
    self.selected3 = 0s
0x002390:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x0023C0
0x0023AC:
    push (== self.selected3 0s)
    goto 0x0023C4
0x0023C0:
    push 0s
0x0023C4:
    if !pop goto 0x0023E8
0x0023C8:
    self.naming = 1s
    call (keyboard_clear[]:int32 (var 13s))
0x0023E8:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x002418
0x002404:
    push (== self.selected3 1s)
    goto 0x00241C
0x002418:
    push 0s
0x00241C:
    if !pop goto 0x002448
0x002420:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 288s))
0x002448:
    exit
