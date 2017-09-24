0x000000:
    if !(== self.myinteract 0s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000040:
    if !(== self.myinteract 1s) goto 0x000128
0x000054:
    if !(== self.con 0s) goto 0x000128
0x000068:
    call (audio_play_sound[]:int32 (var 0s) (var 90s) (var 155s))
    self.con = 1s
    self.drawthis = 1s
    stog.alarm[4s] = 90s
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = (- 0s:view_yview 10s)
    push -1s
    self.nowxx = 0s:view_xview
    push -1s
    self.nowyy = (- 0s:view_yview 10s)
0x000128:
    if !(== self.drawthis 1s) goto 0x0005B0
0x00013C:
    global.interact = 1s
    self.iniread = (ini_open[]:int32 (var "undertale.ini"))
    self.name = (ini_read_string[]:int32 (var "EMPTY") (var "Name") (var "General"))
    self.love = (ini_read_real[]:int32 (var 0s) (var "Love") (var "General"))
    self.time = (ini_read_real[]:int32 (var 0s) (var "Time") (var "General"))
    self.kills = (ini_read_real[]:int32 (var 0s) (var "Kills") (var "General"))
    self.roome = (ini_read_real[]:int32 (var 0s) (var "Room") (var "General"))
    call (ini_close[]:int32 )
    call (draw_set_font[]:int32 (var 10s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ 135s self.yy) (+ 265s self.xx) (+ 49s self.yy) (+ 54s self.xx))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ 132s self.yy) (+ 262s self.xx) (+ 52s self.yy) (+ 57s self.xx))
    call (draw_set_color[]:int32 (var 16777215))
    self.minutes = (floor[]:int32 (/ self.time (double 1800s)))
    self.seconds = (round[]:int32 (* (- (/ self.time (double 1800s)) self.minutes) 60s))
    if !(== self.seconds 60s) goto 0x0003E0
0x0003D4:
    self.seconds = 59s
0x0003E0:
    if !(< self.seconds 10s) goto 0x000418
0x0003F4:
    self.seconds = (+ "0" (string[]:int32 self.seconds))
0x000418:
    call (script_execute[]:int32 self.roome (var 54s))
    call (draw_text[]:int32 self.name (+ 60s self.yy) (+ 70s self.xx))
    call (draw_text[]:int32 (+ "LV " (string[]:int32 self.love)) (+ 60s self.yy) (+ 140s self.xx))
    call (draw_text[]:int32 (+ (+ (string[]:int32 self.minutes) ":") (string[]:int32 self.seconds)) (+ 60s self.yy) (+ 210s self.xx))
    call (draw_text[]:int32 self.roomname (+ 80s self.yy) (+ 70s self.xx))
    call (draw_text[]:int32 (var "Save") (+ self.yy 110s) (+ self.xx 85s))
    call (draw_text[]:int32 (var "Return") (+ self.yy 110s) (+ self.xx 175s))
0x0005B0:
    if !(== self.con 2s) goto 0x00068C
0x0005C4:
    self.punch = (caster_load[]:int32 (var "music/sfx_gigapunch.ogg"))
    self.explosion = (caster_load[]:int32 (var "music/explosion.ogg"))
    call (caster_play[]:int32 (var 0.9d) (var 0.7d) self.punch)
    self.crack = 1s
    self.shake = 6s
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    self.con = 3s
    stog.alarm[4s] = 50s
0x00068C:
    if !(== self.con 4s) goto 0x00073C
0x0006A0:
    call (caster_play[]:int32 (var 0.83d) (var 0.85d) self.punch)
    self.crack = 2s
    self.shake = 8s
    self.drawthis = 0s
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    self.con = 5s
    stog.alarm[4s] = 50s
0x00073C:
    if !(== self.con 6s) goto 0x0007E4
0x000750:
    call (caster_play[]:int32 (var 0.76d) (var 1s) self.punch)
    self.crack = 3s
    self.shake = 10s
    self.drawthis = 0s
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    self.con = 7s
    stog.alarm[4s] = 60s
0x0007E4:
    if !(== self.con 8s) goto 0x00095C
0x0007F8:
    self.crack = -1s
    self.drawthis = -1s
    self.con = 9s
    self.i = 0s
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    self.fl = (instance_create[]:int32 (var 1575s) (+ self.nowyy 56s) (+ self.nowxx 114s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.explosion)
    if (<= 6s 0) goto 0x000944
0x0008C0:
    push 6s
    self.in = (instance_create[]:int32 (var 1576s) (+ self.nowyy 49s) (+ self.nowxx 54s))
    push self.i
    stog.image_index* = (int32 self.in)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0008C0
0x000944:
    push (- pop 1)
    pop
    stog.alarm[4s] = 90s
0x00095C:
    if !(== self.con 10s) goto 0x0009B4
0x000970:
    push 1s
    stog.type* = (int32 self.fl)
    [obj_mainchara_fake].cutscene = 1s
    self.con = 11s
    stog.alarm[4s] = 6s
0x0009B4:
    if !(== self.con 12s) goto 0x000A1C
0x0009C8:
    self.hellmus = (caster_load[]:int32 (var "music/yourbestfriend_3.ogg"))
    push 2s
    stog.type* = (int32 self.fl)
    self.con = 13s
    stog.alarm[4s] = 10s
0x000A1C:
    if !(== self.con 13s) goto 0x000A60
0x000A30:
    [obj_mainchara_fake].y = (+ 1577.y 6s)
    [obj_floweyfacer].y = (- 1575.y 2s)
0x000A60:
    if !(== self.con 14s) goto 0x000AAC
0x000A74:
    push 1s
    stog.type* = (int32 self.fl)
    self.con = 15s
    stog.alarm[4s] = 8s
0x000AAC:
    if !(== self.con 16s) goto 0x000B30
0x000AC0:
    pushenv 1575s 0x000AF4
0x000AC8:
    self.moved = 2s
    self.xx = self.x
    self.yy = self.y
0x000AF4:
    popenv 0x000AC8
0x000AF8:
    push 0s
    stog.type* = (int32 self.fl)
    self.con = 17s
    stog.alarm[4s] = 20s
0x000B30:
    if !(== self.con 18s) goto 0x000CE0
0x000B44:
    call (caster_loop[]:int32 (var 0.7d) (var 0.8d) self.hellmus)
    stog.msg[0s] = "Howdy!/"
    stog.msg[1s] = "It's me, FLOWEY./"
    stog.msg[2s] = "\\E2FLOWEY the FLOWER!/"
    stog.msg[3s] = "\\E0I owe you a HUGE thanks./"
    stog.msg[4s] = "\\E9You really did a number&on that old fool./"
    stog.msg[5s] = "\\E0Without you^1, I NEVER could&have gotten past him./"
    stog.msg[6s] = "\\E7But now^1, with YOUR help.../"
    stog.msg[7s] = "\\E8 %"
    stog.msg[8s] = "\\TFHe's DEAD./"
    stog.msg[9s] = "\\E6And I'VE got the human&SOULS!/%%"
    global.typer = 9s
    stog.msg[10s] = "%%%"
    push (var 1598s)
    push -1s
    self.mywriter = (instance_create[]:int32 (+ 0s:view_yview 100s) -1s (+ 0s:view_xview 30s))
    self.con = 19s
0x000CE0:
    if !(== self.con 19s) goto 0x000D64
0x000CF4:
    if !(== (instance_exists[]:int32 self.mywriter) 0s) goto 0x000D64
0x000D10:
    self.laugh = (caster_load[]:int32 (var "music/f_newlaugh.ogg"))
    push 1s
    stog.type* = (int32 self.fl)
    self.con = 20s
    stog.alarm[4s] = 10s
0x000D64:
    if !(== self.con 21s) goto 0x000DE8
0x000D78:
    [obj_floweyfacer].set = 1s
    push 2s
    stog.type* = (int32 self.fl)
    call (caster_play[]:int32 (var 0.9d) (var 1s) self.laugh)
    self.con = 22s
    stog.alarm[4s] = 70s
0x000DE8:
    if !(== self.con 23s) goto 0x000E34
0x000DFC:
    push 1s
    stog.type* = (int32 self.fl)
    self.con = 24s
    stog.alarm[4s] = 10s
0x000E34:
    if !(== self.con 25s) goto 0x000E6C
0x000E48:
    push 0s
    stog.type* = (int32 self.fl)
    self.con = 26s
0x000E6C:
    if !(== self.con 26s) goto 0x001048
0x000E80:
    stog.msg[0s] = "\\E0Boy!/"
    stog.msg[1s] = "\\E0I've been empty for so&long.../"
    stog.msg[2s] = "\\E4It feels great to have a&SOUL inside me again./"
    stog.msg[3s] = "\\E1Mmmm^1, I can feel them&wriggling.../"
    stog.msg[4s] = "\\E6Awww^1, you're feeling&left out^1, aren't you?/"
    stog.msg[5s] = "\\E1Well^1, that's just perfect./"
    stog.msg[6s] = "\\E0After all^1, I only have&six souls./"
    stog.msg[7s] = "\\E1I still need one more.../"
    stog.msg[8s] = "\\TFB\\E2efore I become GOD./"
    stog.msg[9s] = "\\E3And then^1, with my&newfound powers.../"
    stog.msg[10s] = "\\E7Monsters./"
    stog.msg[11s] = "\\E5Humans./"
    stog.msg[12s] = "\\E5Everyone^2./"
    stog.msg[13s] = "\\E8I'll show them all the REAL&meaning of this world./%%"
    stog.msg[14s] = "%%%"
    global.typer = 9s
    push (var 1598s)
    push -1s
    self.mywriter = (instance_create[]:int32 (+ 0s:view_yview 100s) -1s (+ 0s:view_xview 30s))
    self.con = 27s
0x001048:
    if !(== self.con 27s) goto 0x001178
0x00105C:
    if !(bool (instance_exists[]:int32 (var 1598s))) goto 0x001124
0x001074:
    if !(== 1598.stringno 12s) goto 0x0010CC
0x001088:
    pushenv 1575s 0x0010C8
0x001090:
    if !(== self.type 0s) goto 0x0010C8
0x0010A4:
    self.image_index = 0s
    self.sprite_index = 2200s
    self.type = 3s
0x0010C8:
    popenv 0x001090
0x0010CC:
    if !(== 1598.stringno 13s) goto 0x001124
0x0010E0:
    pushenv 1575s 0x001120
0x0010E8:
    if !(== self.type 3s) goto 0x001120
0x0010FC:
    self.image_speed = 0s
    self.image_index = 0s
    self.type = 0s
0x001120:
    popenv 0x0010E8
0x001124:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001178
0x001140:
    self.con = 28s
    push 1s
    stog.type* = (int32 self.fl)
    stog.alarm[4s] = 20s
0x001178:
    if !(== self.con 29s) goto 0x001214
0x00118C:
    global.faceemotion = 0s
    push 2s
    stog.type* = (int32 self.fl)
    push 2s
    stog.set* = (int32 self.fl)
    call (caster_play[]:int32 (var 0.8d) (var 1s) self.laugh)
    self.con = 30s
    stog.alarm[4s] = 70s
0x001214:
    if !(== self.con 31s) goto 0x001260
0x001228:
    push 1s
    stog.type* = (int32 self.fl)
    self.con = 32s
    stog.alarm[4s] = 10s
0x001260:
    if !(== self.con 33s) goto 0x001298
0x001274:
    push 0s
    stog.type* = (int32 self.fl)
    self.con = 34s
0x001298:
    if !(== self.con 34s) goto 0x001434
0x0012AC:
    stog.msg[0s] = "\\E0Oh^1, and forget about escaping&to your old SAVE FILE./"
    stog.msg[1s] = "\\TFI\\E2t's gone FOREVER./"
    if !(== (file_exists[]:int32 (var "file0")) 0s) goto 0x00132C
0x0012FC:
    stog.msg[0s] = "\\E0Golly^1, if only you&had a SAVE FILE you&could run away to.../"
    stog.msg[1s] = "\\TFB\\E2ut you were just&too STUPID to make one!/"
0x00132C:
    stog.msg[2s] = "\\TfB\\E3ut don't worry./"
    stog.msg[3s] = "\\E0Your old friend FLOWEY.../"
    stog.msg[4s] = "\\E1Has worked out a replacement&for you!/"
    stog.msg[5s] = "\\TFI\\E6'll SAVE over your own&death./"
    stog.msg[6s] = "\\E7So you can watch me tear&you to bloody pieces.../"
    stog.msg[7s] = "\\E8Over^1, and over^1, and over.../%%"
    stog.msg[14s] = "%%%"
    global.typer = 9s
    push (var 1598s)
    push -1s
    self.mywriter = (instance_create[]:int32 (+ 0s:view_yview 100s) -1s (+ 0s:view_xview 30s))
    self.con = 35s
0x001434:
    if !(== self.con 35s) goto 0x0014B0
0x001448:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x0014B0
0x001464:
    [obj_mainchara_fake].vspeed = -2s
    [obj_mainchara_fake].image_speed = 0.334d
    [obj_mainchara_fake].moving = 1s
    self.con = 36s
    stog.alarm[4s] = 6s
0x0014B0:
    if !(== self.con 37s) goto 0x001508
0x0014C4:
    [obj_mainchara_fake].vspeed = 0s
    [obj_mainchara_fake].image_speed = 0s
    [obj_mainchara_fake].moving = 0s
    self.con = 38s
    stog.alarm[4s] = 20s
0x001508:
    if !(== self.con 39s) goto 0x0015DC
0x00151C:
    stog.msg[0s] = "\\E9... what?/"
    stog.msg[1s] = "Do you really think&you can stop ME?/"
    stog.msg[2s] = "\\TfH\\E4ee hee hee.../%%"
    stog.msg[14s] = "%%%"
    global.typer = 16s
    push (var 1598s)
    push -1s
    self.mywriter = (instance_create[]:int32 (+ 0s:view_yview 100s) -1s (+ 0s:view_xview 30s))
    self.con = 40s
0x0015DC:
    if !(== self.con 40s) goto 0x0016BC
0x0015F0:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x0016BC
0x00160C:
    global.faceemotion = 5s
    stog.msg[0s] = "\\E5You really ARE an idiot^4.%%"
    stog.msg[14s] = "%%%"
    call (caster_free[]:int32 (var -3s))
    global.typer = 78s
    push (var 1598s)
    push -1s
    self.mywriter = (instance_create[]:int32 (+ 0s:view_yview 100s) -1s (+ 0s:view_xview 30s))
    self.con = 41s
0x0016BC:
    if !(== self.con 41s) goto 0x001734
0x0016D0:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001734
0x0016EC:
    pushenv 1575s 0x001700
0x0016F4:
    call (instance_destroy[]:int32 )
0x001700:
    popenv 0x0016F4
0x001704:
    call (instance_create[]:int32 (var 1574s) (var 0s) (var 0s))
    self.con = 42s
0x001734:
    if !(== self.crack 1s) goto 0x001784
0x001748:
    call (draw_sprite[]:int32 (+ 49s self.yy) (+ 54s self.xx) (var 0s) (var 2262s))
0x001784:
    if (== self.crack 2s) goto 0x0017AC
0x001798:
    push (== self.crack 3s)
    goto 0x0017B0
0x0017AC:
    push 1s
0x0017B0:
    if !pop goto 0x001834
0x0017B4:
    call (draw_sprite[]:int32 (+ 49s self.yy) (+ 54s self.xx) (var 0s) (var 2261s))
    call (draw_sprite[]:int32 (+ 49s self.yy) (+ 54s self.xx) (- self.crack 1s) (var 2262s))
0x001834:
    if !(>= self.shake 0s) goto 0x0018D0
0x001848:
    self.xx = (+ self.nowxx (* self.shake (choose[]:int32 (var -1s) (var 1s))))
    self.yy = (+ self.nowyy (* self.shake (choose[]:int32 (var -1s) (var 1s))))
    self.shake = (- self.shake 1s)
0x0018D0:
    exit
