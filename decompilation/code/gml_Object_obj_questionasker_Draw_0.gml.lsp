0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y self.shake) (random[]:int32 (* self.shake 2s))) (+ (- self.x self.shake) (random[]:int32 (* self.shake 2s))) (round[]:int32 self.image_index) self.sprite_index)
    if !(== self.phase -1s) goto 0x0000D0
0x0000C4:
    self.sprite_index = 343s
0x0000D0:
    if !(> self.phase 0s) goto 0x0000F8
0x0000E4:
    push (== self.con 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    self.sprite_index = 344s
0x00010C:
    if !(== self.phase 2s) goto 0x000134
0x000120:
    push (< self.quiztimer 280s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x0001DC
0x00013C:
    if !(== self.correct 0s) goto 0x00015C
0x000150:
    self.sprite_index = 331s
0x00015C:
    if !(== self.correct 1s) goto 0x00017C
0x000170:
    self.sprite_index = 332s
0x00017C:
    if !(== self.correct 2s) goto 0x00019C
0x000190:
    self.sprite_index = 333s
0x00019C:
    if !(== self.correct 3s) goto 0x0001BC
0x0001B0:
    self.sprite_index = 337s
0x0001BC:
    if !(== self.q 7s) goto 0x0001DC
0x0001D0:
    self.sprite_index = 345s
0x0001DC:
    if !(== self.phase 2s) goto 0x000204
0x0001F0:
    push (> self.quiztimer 320s)
    goto 0x000208
0x000204:
    push 0s
0x000208:
    if !pop goto 0x000218
0x00020C:
    self.sprite_index = 345s
0x000218:
    if !(> self.phase 2s) goto 0x000240
0x00022C:
    push (< self.q 10s)
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x0002B0
0x000248:
    self.sprite_index = 340s
    [obj_mettatonb_body].arms = 322s
    if !(== self.correct self.answer) goto 0x0002B0
0x000278:
    [obj_mettatonb_body].arms = 321s
    self.sprite_index = 334s
    if !(== self.q 7s) goto 0x0002B0
0x0002A4:
    self.sprite_index = 345s
0x0002B0:
    if !(== self.q 8s) goto 0x0002D8
0x0002C4:
    push (< self.quiztimer 300s)
    goto 0x0002DC
0x0002D8:
    push 0s
0x0002DC:
    if !pop goto 0x000370
0x0002E0:
    if !(== (% self.quiztimer 2s) 0s) goto 0x000314
0x0002FC:
    self.mettamt = (+ self.mettamt 1s)
0x000314:
    if !(== (instance_exists[]:int32 (var 300s)) 0s) goto 0x000344
0x000330:
    push (== self.phase 2s)
    goto 0x000348
0x000344:
    push 0s
0x000348:
    if !pop goto 0x000370
0x00034C:
    call (instance_create[]:int32 (var 300s) self.y self.x)
0x000370:
    if !(== self.q 9s) goto 0x0003B4
0x000384:
    push -1s
    if !(< 4s:alarm 140s) goto 0x0003B4
0x0003A0:
    push (== self.con 0s)
    goto 0x0003B8
0x0003B4:
    push 0s
0x0003B8:
    if !pop goto 0x0004D8
0x0003BC:
    self.sprite_index = 335s
    stog.alarm[4s] = -2s
    global.msc = 0s
    self.image_speed = 0.3d
    global.typer = 52s
    stog.msg[0s] = "OH^1! OH^1! I KNOW&THIS ONE!!!&IT'S SNAIL ICE&CREAM!!!!!!!^1!%"
    stog.msg[1s] = "IN THE FOURTH&CHAPTER EVERYONE&GOES TO THE&BEACH!!!%"
    stog.msg[2s] = "AND SHE BUYS&ICE CREAM FOR&ALL OF HER&FRIENDS!!!!%"
    stog.msg[3s] = "BUT IT'S SNAIL&FLAVOR AND SHE'S&THE ONLY ONE&WHO WANTS IT!!!!!!%"
    stog.msg[4s] = "IT'S ONE OF MY&FAVORITE PARTS&OF THE GAME&BECAUSE%"
    stog.msg[5s] = "IT'S ACTUALLY A&VERY POWERFUL&message abou^1t&friendshi^1p and..^2.%%"
    call (scr_blcon[]:int32 (var 2s) (- self.y 120s) (- self.x 10s))
    self.con = 1s
0x0004D8:
    if !(== self.con 1s) goto 0x0005D0
0x0004EC:
    self.go = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000520
0x000514:
    self.go = 1s
0x000520:
    if !(== (instance_exists[]:int32 (var 782s)) 1s) goto 0x00055C
0x00053C:
    if !(== 782.stringno 5s) goto 0x00055C
0x000550:
    self.go = 1s
0x00055C:
    if !(== self.go 1s) goto 0x0005D0
0x000570:
    self.image_speed = (- self.image_speed 0.004d)
    if !(<= self.image_speed 0s) goto 0x0005D0
0x0005A4:
    self.con = 2s
    stog.alarm[7s] = 60s
    self.sprite_index = 336s
0x0005D0:
    if !(== self.con 3s) goto 0x0006C0
0x0005E4:
    global.typer = 51s
    self.phase = -2s
    stog.msg[0s] = "ALPHYS^1,&ALPHYS^1,&ALPHYS./"
    stog.msg[1s] = "YOU AREN'T HELPING&OUR CONTESTANT,&ARE YOU?/"
    stog.msg[2s] = "OOOOOOH!!!&YOU SHOULD HAVE&TOLD ME./"
    stog.msg[3s] = "I'LL ASK A&QUESTION.../"
    stog.msg[4s] = "YOU'LL BE SURE&TO KNOW THE&ANSWER TO!/%%"
    self.con = 4s
    self.sprite_index = 336s
    call (scr_blcon[]:int32 (var 3s) (- 301.y 100s) (+ 301.x 95s))
0x0006C0:
    if !(== self.con 4s) goto 0x0006F0
0x0006D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006F4
0x0006F0:
    push 0s
0x0006F4:
    if !pop goto 0x000738
0x0006F8:
    self.image_speed = 0.2d
    self.sprite_index = 342s
    self.con = 5s
    call (event_user[]:int32 (var 0s))
0x000738:
    if !(== self.con 4s) goto 0x0007D8
0x00074C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000784
0x000764:
    if !(== 782.stringno 1s) goto 0x000784
0x000778:
    self.sprite_index = 339s
0x000784:
    if !(== 782.stringno 3s) goto 0x0007A4
0x000798:
    self.sprite_index = 338s
0x0007A4:
    self.image_speed = 0.1d
    if !(== 782.stringno 4s) goto 0x0007D8
0x0007CC:
    self.sprite_index = 340s
0x0007D8:
    if !(== self.con 7s) goto 0x000D34
0x0007EC:
    self.sprite_index = 341s
    global.typer = 51s
    self.phase = -2s
    stog.msg[0s] = "ALPHYS^1, ALPHYS^1,&ALPHYS./"
    stog.msg[1s] = "YOU AREN'T HELPING&OUR CONTESTANT,&ARE YOU?/"
    stog.msg[2s] = "OOOOOOH!!!&YOU SHOULD HAVE&TOLD ME./"
    stog.msg[3s] = "I'LL ASK A&QUESTION.../"
    stog.msg[4s] = "YOU'LL BE SURE&TO KNOW THE&ANSWER TO!/%%"
    self.con = 30s
    if !(== self.answer 0s) goto 0x000978
0x0008A8:
    stog.msg[0s] = "SEE, ALPHYS?&I TOLD YOU IT&WAS OBVIOUS./"
    stog.msg[1s] = "EVEN THE HUMAN&FIGURED IT OUT./"
    stog.msg[2s] = "YES, SHE SCRAWLS&HER NAME IN THE&MARGINS OF HER&NOTES./"
    stog.msg[3s] = "SHE NAMES PROGRAMMING&VARIABLES AFTER&HER./"
    self.fsgsfgsx = "LOOLLLL IF YOU CAME TO THIS PART OF THE CODE TO SEE WHO I HAVE A CRUSH ON YOURE OUT OF LUCK"
    stog.msg[4s] = "SHE EVEN WRITES&STORIES OF THEM&TOGETHER.../"
    stog.msg[5s] = "SHARING A DOMESTIC&LIFE./"
    stog.msg[6s] = "PROBABILITY OF&CRUSH:&101 PERCENT./"
    stog.msg[7s] = "MARGIN OF ERROR.&ONE PERCENT./%%"
0x000978:
    if !(== self.answer 1s) goto 0x000A94
0x00098C:
    stog.msg[0s] = "WHY WOULD SOMEONE&OUTFIT AN&AMUSEMENT ROBOT.../"
    stog.msg[1s] = "WITH BRUTAL COMBAT&CAPABILITIES?/"
    stog.msg[2s] = "SIMPLE./"
    stog.msg[3s] = "TO IMPRESS MR.&ASGORE DREEMURR,&OF COURSE!/"
    stog.msg[4s] = "OR AS ALPHYS&CALLS HIM.../"
    stog.msg[5s] = "\"MR. DREAMY.\"/"
    stog.msg[6s] = "THOSE STRONG ARMS.../"
    stog.msg[7s] = "THAT LUSTROUS&BEARD.../"
    stog.msg[8s] = "LIKE ALL THOSE WHO&CREATE WEAPONS./"
    stog.msg[9s] = "SHE CRAVES THE&TENDER EMBRACE OF&A BURLY MAN./"
    stog.msg[10s] = "CAN SHE TRULY&BE BLAMED?/%%"
0x000A94:
    if !(== self.answer 2s) goto 0x000BB0
0x000AA8:
    self.sprite_index = 345s
    self.shake = 0s
    stog.msg[0s] = "... SERIOUSLY?/"
    stog.msg[1s] = "MY MY..^1.&HOW CONCEITED CAN&YOU GET...?/"
    stog.msg[2s] = "I LOVE IT!/"
    stog.msg[3s] = "AND WHILE YOU ARE&COMPLETELY WRONG^1,&YOU DESERVE SOME&CREDIT./"
    stog.msg[4s] = "I'VE SEEN HER WATCH&YOU ON HER COMPUTER&SCREEN./"
    stog.msg[5s] = "SMILING WHEN YOU&SUCCEED./"
    stog.msg[6s] = "SHRIEKING WHEN YOU&FAIL./"
    stog.msg[7s] = "AND ALWAYS, ALWAYS,&WHISPERING.../"
    stog.msg[8s] = "\"NO! WRONG!&YOU HAVE TO&GO THAT WAY!\"/"
    stog.msg[9s] = "IN ITS OWN WAY^1,&IS THIS NOT&LOVE??/%%"
0x000BB0:
    if !(== self.answer 3s) goto 0x000CE0
0x000BC4:
    self.sprite_index = 334s
    self.image_speed = 0.2d
    stog.msg[0s] = "CORRECT./"
    stog.msg[1s] = "DR. ALPHYS HAS&A CRUSH ON.../"
    stog.msg[2s] = "THE UNKNOWABLE./"
    stog.msg[3s] = "YOU SEE, ALPHYS&BELIEVES THERE IS&SOMEONE OUT THERE./"
    stog.msg[4s] = "SOMEONE WATCHING HER./"
    stog.msg[5s] = "SOMEONE SHE THINKS&IS \"CUTE\" AND&\"INTERESTING.\"/"
    stog.msg[6s] = "HELLO, THEORETICAL&PERSON./"
    stog.msg[7s] = "DR. ALPHYS LIKES&YOU./"
    stog.msg[8s] = "TOO BAD YOU&ARE NOT REAL./"
    stog.msg[9s] = "*DERISIVE&LAUGHTRACK*/%%"
    self.con = 20s
0x000CE0:
    if !(!= self.con 20s) goto 0x000D00
0x000CF4:
    self.shake = 1s
0x000D00:
    call (scr_blcon[]:int32 (var 3s) (- 301.y 100s) (+ 301.x 95s))
0x000D34:
    if !(== self.con 20s) goto 0x000D64
0x000D48:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000D68
0x000D64:
    push 0s
0x000D68:
    if !pop goto 0x000DCC
0x000D6C:
    if !(== 782.stringno 2s) goto 0x000D8C
0x000D80:
    self.sprite_index = 345s
0x000D8C:
    if !(== 782.stringno 4s) goto 0x000DAC
0x000DA0:
    self.sprite_index = 338s
0x000DAC:
    if !(== 782.stringno 8s) goto 0x000DCC
0x000DC0:
    self.sprite_index = 345s
0x000DCC:
    if !(== self.con 20s) goto 0x000DFC
0x000DE0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E00
0x000DFC:
    push 0s
0x000E00:
    if !pop goto 0x000EA4
0x000E04:
    self.con = 21s
    self.sprite_index = 343s
    global.typer = 52s
    stog.msg[0s] = "H-hey^1, I've done&research about this!/"
    stog.msg[1s] = "There are alternate&universes out there!/"
    stog.msg[2s] = "S-someday^1, maybe^1, I&could meet them.../%%"
    call (scr_blcon[]:int32 (var 2s) (- self.y 120s) (- self.x 10s))
0x000EA4:
    if !(== self.con 21s) goto 0x000ED4
0x000EB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000ED8
0x000ED4:
    push 0s
0x000ED8:
    if !pop goto 0x000FA0
0x000EDC:
    self.sprite_index = 338s
    global.typer = 51s
    self.phase = -2s
    stog.msg[0s] = "YOU SAID THE&EXACT SAME THING&ABOUT \"MEW MEW&KISSY CUTIE.\"/"
    stog.msg[1s] = "BUT I'LL GIVE YOU&THE BENEFIT OF&THE DOUBT./"
    stog.msg[2s] = "PERSON^1, IF YOU'RE&OUT THERE.../"
    stog.msg[3s] = "HOW ABOUT GIVING US&A SIGN^1, RIGHT NOW?/%%"
    self.con = 22s
    call (scr_blcon[]:int32 (var 3s) (- 301.y 100s) (+ 301.x 95s))
0x000FA0:
    if !(== self.con 22s) goto 0x000FD0
0x000FB4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FD4
0x000FD0:
    push 0s
0x000FD4:
    if !pop goto 0x001018
0x000FD8:
    self.sprite_index = 343s
    call (caster_pause[]:int32 global.batmusic)
    self.con = 23s
    stog.alarm[7s] = 150s
0x001018:
    if !(== self.con 24s) goto 0x0010A4
0x00102C:
    self.sprite_index = 338s
    call (caster_resume[]:int32 global.batmusic)
    self.con = 30s
    stog.msg[0s] = "THAT SETTLES&THAT, DOESN'T IT?/%%"
    call (scr_blcon[]:int32 (var 3s) (- 301.y 100s) (+ 301.x 95s))
0x0010A4:
    if !(== self.con 30s) goto 0x0010D4
0x0010B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010D8
0x0010D4:
    push 0s
0x0010D8:
    if !pop goto 0x00111C
0x0010DC:
    pushenv 301s 0x0010F8
0x0010E4:
    call (event_user[]:int32 (var 1s))
0x0010F8:
    popenv 0x0010E4
0x0010FC:
    stog.alarm[7s] = 20s
    self.con = 31s
0x00111C:
    if !(== self.con 32s) goto 0x00114C
0x001130:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001150
0x00114C:
    push 0s
0x001150:
    if !pop goto 0x001308
0x001154:
    self.shake = 0s
    [obj_mettatonb_body].arms = 319s
    self.sprite_index = 343s
    global.typer = 51s
    self.phase = -2s
    if !(bool (instance_exists[]:int32 (var 306s))) goto 0x0011C0
0x0011A8:
    pushenv 306s 0x0011BC
0x0011B0:
    call (instance_destroy[]:int32 )
0x0011BC:
    popenv 0x0011B0
0x0011C0:
    stog.msg[0s] = "WELL WELL WELL./"
    stog.msg[1s] = "WITH DR. ALPHYS&HELPING YOU.../"
    stog.msg[2s] = "THE SHOW HAS NO&DRAMATIC TENSION!/"
    stog.msg[3s] = "WE CAN'T GO ON&LIKE THIS!!/"
    stog.msg[4s] = "BUT./"
    stog.msg[5s] = "BUT!!!/"
    stog.msg[6s] = "THIS WAS JUST THE&PILOT EPISODE!!/"
    stog.msg[7s] = "NEXT UP, MORE&DRAMA!/"
    stog.msg[8s] = "MORE ROMANCE!!!/"
    stog.msg[9s] = "MORE BLOODSHED!!!/"
    stog.msg[10s] = "UNTIL NEXT TIME,&DARLINGS...!!!/%%"
    self.con = 34s
    call (scr_blcon[]:int32 (var 1s) (- 301.y 120s) (- 301.x 320s))
0x001308:
    if !(== self.con 34s) goto 0x001338
0x00131C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00133C
0x001338:
    push 0s
0x00133C:
    if !pop goto 0x00139C
0x001340:
    [obj_mettatonb_body].arms = 995s
    self.con = 35s
    [obj_mettatonb_body].siner = 0s
    [obj_mettatonb_body].sineron = 0s
    [obj_mettatonb_body].sprite_index = 329s
    [obj_mettatonb_body].image_index = 0s
    [obj_mettatonb_body].image_speed = 0.25d
0x00139C:
    if !(== self.con 35s) goto 0x0013F0
0x0013B0:
    if !(>= 301.image_index 5s) goto 0x0013F0
0x0013C4:
    self.con = 36s
    stog.alarm[7s] = 10s
    [obj_mettatonb_body].image_speed = 0s
0x0013F0:
    if !(== self.con 37s) goto 0x001430
0x001404:
    [obj_mettatonb_body].shaker = 2s
    self.con = 38s
    stog.alarm[7s] = 25s
0x001430:
    if !(== self.con 39s) goto 0x0014A4
0x001444:
    [obj_mettatonb_body].image_speed = 0.334d
    [obj_mettatonb_body].sprite_index = 330s
    [obj_mettatonb_body].gravity = -0.4d
    [obj_mettatonb_body].gravity_direction = 270s
    self.con = 40s
    stog.alarm[7s] = 20s
0x0014A4:
    if !(== self.con 41s) goto 0x0014E4
0x0014B8:
    self.con = 42s
    stog.alarm[7s] = 40s
    self.sprite_index = 344s
0x0014E4:
    if !(== self.con 43s) goto 0x00153C
0x0014F8:
    call (instance_create[]:int32 (var 149s) self.y self.x)
    stog.alarm[9s] = 12s
    self.con = 44s
0x00153C:
    if !(>= self.phase 1s) goto 0x001564
0x001550:
    push (< self.phase 3s)
    goto 0x001568
0x001564:
    push 0s
0x001568:
    if !pop goto 0x0016BC
0x00156C:
    [obj_mettatonb_body].arms = 318s
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.q 10s) goto 0x0015D0
0x0015A4:
    call (draw_set_color[]:int32 (make_color_hsv[]:int32 (var 21165s) (var 0s) (var 0s)))
0x0015D0:
    call (draw_set_font[]:int32 (var 1s))
    if !(!= self.q 4s) goto 0x00163C
0x0015F8:
    call (draw_text[]:int32 self.qtext (+ 50s (random[]:int32 (var 1s))) (+ 205s (random[]:int32 (var 1s))))
0x00163C:
    if !(== self.q 4s) goto 0x0016BC
0x001650:
    call (draw_text_transformed[]:int32 (var 6s) (var 0.5d) (var 0.5d) self.qtext (+ 20s (random[]:int32 (var 1s))) (+ 170s (random[]:int32 (var 1s))))
0x0016BC:
    if !(== self.phase 2s) goto 0x0017D8
0x0016D0:
    if !(!= self.q 10s) goto 0x0016F8
0x0016E4:
    push (!= self.q 9s)
    goto 0x0016FC
0x0016F8:
    push 0s
0x0016FC:
    if !pop goto 0x001718
0x001700:
    self.quiztimer = (- self.quiztimer 1s)
0x001718:
    if !(== self.q 7s) goto 0x001744
0x00172C:
    self.quiztimer = (+ self.quiztimer 2s)
0x001744:
    self.drawtime = (ceil[]:int32 (/ self.quiztimer (double 10s)))
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 1s))
    if !(> self.drawtime 0s) goto 0x0017CC
0x0017A4:
    call (draw_text[]:int32 self.drawtime (var 260s) (var 300s))
    goto 0x0017D8
0x0017CC:
    self.phase = 3s
0x0017D8:
    if !(== self.phase 3s) goto 0x0019D8
0x0017EC:
    global.msc = 0s
    global.typer = 51s
    if !(!= self.q 10s) goto 0x001988
0x001818:
    if !(bool (instance_exists[]:int32 (var 300s))) goto 0x001848
0x001830:
    pushenv 300s 0x001844
0x001838:
    call (instance_destroy[]:int32 )
0x001844:
    popenv 0x001838
0x001848:
    if !(bool (instance_exists[]:int32 (var 303s))) goto 0x001880
0x001860:
    pushenv 303s 0x00187C
0x001868:
    call (event_user[]:int32 (var 0s))
0x00187C:
    popenv 0x001868
0x001880:
    stog.alarm[6s] = 4s
    if !(== self.correct self.answer) goto 0x0018C0
0x0018AC:
    push (!= self.q 7s)
    goto 0x0018C4
0x0018C0:
    push 0s
0x0018C4:
    if !pop goto 0x00193C
0x0018C8:
    call (snd_play[]:int32 (var 26s))
    if (<= 60s 0) goto 0x001938
0x0018F4:
    push 60s
    call (instance_create[]:int32 (var 109s) (var -10s) (random[]:int32 (var 640s)))
    if (bool (- pop 1)) goto 0x0018F4
0x001938:
    push (- pop 1)
    pop
0x00193C:
    if !(== self.q 7s) goto 0x001964
0x001950:
    call (snd_play[]:int32 (var 27s))
0x001964:
    self.phase = 4s
    stog.alarm[4s] = 70s
    goto 0x0019D8
0x001988:
    self.correct = self.answer
    self.phase = 4s
    self.con = 6s
    call (snd_play[]:int32 (var 28s))
    stog.alarm[7s] = 30s
0x0019D8:
    if !(== self.phase 5s) goto 0x001AA8
0x0019EC:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001A1C
0x001A04:
    pushenv 782s 0x001A18
0x001A0C:
    call (instance_destroy[]:int32 )
0x001A18:
    popenv 0x001A0C
0x001A1C:
    if !(bool (instance_exists[]:int32 (var 296s))) goto 0x001A4C
0x001A34:
    pushenv 296s 0x001A48
0x001A3C:
    call (instance_destroy[]:int32 )
0x001A48:
    popenv 0x001A3C
0x001A4C:
    global.mnfight = 3s
    self.phase = -1s
    [obj_mettatonb_body].arms = 319s
    pushenv 301s 0x001A8C
0x001A78:
    call (event_user[]:int32 (var 1s))
0x001A8C:
    popenv 0x001A78
0x001A90:
    pushenv 306s 0x001AA4
0x001A98:
    call (instance_destroy[]:int32 )
0x001AA4:
    popenv 0x001A98
0x001AA8:
    exit
