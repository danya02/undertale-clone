0x000000:
    if !(== self.a_con 4s) goto 0x0000E0
0x000014:
    pushenv (int32 self.asriel) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    self.a2 = (scr_marker[]:int32 (var 2296s) (var 140s) (var 286s))
    push 100000
    stog.depth* = (int32 self.a2)
    push 2s
    stog.image_xscale* = (int32 self.a2)
    push 2s
    stog.image_yscale* = (int32 self.a2)
    push 0s
    stog.image_index* = (int32 self.a2)
    self.a_con = 5s
    stog.alarm[4s] = 60s
0x0000E0:
    if !(== self.a_con 6s) goto 0x000184
0x0000F4:
    global.typer = 85s
    global.msc = 0s
    stog.msg[0s] = "\\XI mean^1, we haven't&even done the\\R &Special Thanks\\X yet.../"
    stog.msg[1s] = "Ready^1?&Let's end all of&this for good!/%%"
    call (scr_blcon_x[]:int32 (int32 self.a2):y (+ (int32 self.a2):x 80s))
    self.a_con = 7s
0x000184:
    if !(== self.a_con 7s) goto 0x0001B0
0x000198:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001E4
0x0001B8:
    if !(== 782.stringno 1s) goto 0x0001E4
0x0001CC:
    push 1s
    stog.image_index* = (int32 self.a2)
0x0001E4:
    if !(== self.a_con 7s) goto 0x000214
0x0001F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x000290
0x00021C:
    self.a_con = 8s
    stog.alarm[4s] = 50s
    self.ch = (instance_create[]:int32 (var 1699s) (var 300s) (var 300s))
    call (snd_play[]:int32 (var 21s))
    self.specialfade = 15s
    self.drawbar = 1s
0x000290:
    if !(== self.a_con 8s) goto 0x0002D4
0x0002A4:
    stog.image_alpha* = (- (int32 self.a2):image_alpha 0.06d)
0x0002D4:
    push (int32 self.a2)
    if !(== self.a_con 9s) goto 0x000314
0x0002E8:
    stog.alarm[5s] = 10s
    self.active = 1s
    self.a_con = 10s
0x000314:
    if !(== self.a_con 2s) goto 0x0003C0
0x000328:
    self.a_con = 3s
    global.typer = 86s
    global.msc = 0s
    stog.msg[0s] = "Ha ha ha ha.../"
    stog.msg[1s] = "\\M1Did you REALLY&think it was&OVER!?!?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.asriel):y 20s) (+ (int32 self.asriel):x 80s))
0x0003C0:
    if !(== self.a_con 3s) goto 0x0003F0
0x0003D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003F4
0x0003F0:
    push 0s
0x0003F4:
    if !pop goto 0x000450
0x0003F8:
    call (caster_stop[]:int32 self.horror)
    self.a_con = 4s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
0x000450:
    if !(== self.active 1s) goto 0x00047C
0x000464:
    self.mytimer = (+ self.mytimer 1s)
0x00047C:
    if !(== self.mytimer 10s) goto 0x0004F0
0x000490:
    self.lastsong = (caster_load[]:int32 (var "music/end/express_myself.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.lastsong)
    self.memory = 0s
    stog.alarm[5s] = 1s
0x0004F0:
    if !(>= self.credno 60s) goto 0x000518
0x000504:
    push (== self.memory 0s)
    goto 0x00051C
0x000518:
    push 0s
0x00051C:
    if !pop goto 0x000540
0x000520:
    stog.alarm[5s] = 90s
    self.memory = 2s
0x000540:
    if !(== self.memory 2s) goto 0x000568
0x000554:
    push (>= self.credno 252s)
    goto 0x00056C
0x000568:
    push 0s
0x00056C:
    if !pop goto 0x0005EC
0x000570:
    stog.alarm[5s] = -1s
    self.cb = (instance_create[]:int32 (var 1700s) (var 240s) (var 320s))
    push 60s
    push (int32 self.cb)
    stog.alarm[] = 0s
    push 2s
    stog.type* = (int32 self.cb)
    self.memory = 3s
0x0005EC:
    if !(== self.memory 3s) goto 0x00061C
0x000600:
    push (== (instance_exists[]:int32 (var 1700s)) 0s)
    goto 0x000620
0x00061C:
    push 0s
0x000620:
    if !pop goto 0x000644
0x000624:
    stog.alarm[5s] = 60s
    self.memory = 4s
0x000644:
    if !(== self.memory 4s) goto 0x00066C
0x000658:
    push (>= self.credno 596s)
    goto 0x000670
0x00066C:
    push 0s
0x000670:
    if !pop goto 0x000694
0x000674:
    self.memory = 7s
    stog.alarm[5s] = 100s
0x000694:
    if !(== self.memory 7s) goto 0x0006BC
0x0006A8:
    push (>= self.credno 716s)
    goto 0x0006C0
0x0006BC:
    push 0s
0x0006C0:
    if !pop goto 0x0006E4
0x0006C4:
    self.memory = 6s
    stog.alarm[5s] = 160s
0x0006E4:
    if !(== self.memory 6s) goto 0x00070C
0x0006F8:
    push (>= self.credno 881s)
    goto 0x000710
0x00070C:
    push 0s
0x000710:
    if !pop goto 0x000758
0x000714:
    self.memory = -2s
    self.st_y = 500s
    self.st_t = 0s
    self.st_f = 1s
    stog.alarm[5s] = -1s
0x000758:
    if !(== self.drawbar 1s) goto 0x0008CC
0x00076C:
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 65280))
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_alpha[]:int32 self.specialfade)
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "SPECIAL THANKS") (var 20s) (var 320s))
    call (draw_set_halign[]:int32 (var 0s))
    self.specialfade = (- self.specialfade 0.05d)
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite[]:int32 (var 450s) (var 260s) (var 0s) (var 15s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 65535) (var 0s) (var 2s) (var 2s) (var 452s) (var 296s) (var 0s) (var 837s))
0x0008CC:
    if !(== self.memory -2s) goto 0x0008FC
0x0008E0:
    push (~ (bool (instance_exists[]:int32 (var 1701s))))
    goto 0x000900
0x0008FC:
    push 0s
0x000900:
    if !pop goto 0x000DE8
0x000904:
    self.drawbar = 0s
    self.st_t = (+ self.st_t 1s)
    if !(< self.st_t 150s) goto 0x000950
0x00093C:
    push (> self.st_y 50s)
    goto 0x000954
0x000950:
    push 0s
0x000954:
    if !pop goto 0x0009A0
0x000958:
    self.st_f = (+ self.st_f 0.25d)
    self.st_y = (- self.st_y self.st_f)
    self.st_f2 = 1s
0x0009A0:
    if !(> self.st_t 240s) goto 0x0009C8
0x0009B4:
    push (< self.st_y 500s)
    goto 0x0009CC
0x0009C8:
    push 0s
0x0009CC:
    if !pop goto 0x000A44
0x0009D0:
    self.vol = 0.8d
    self.l_alpha = 0s
    self.st_y = (+ self.st_y self.st_f2)
    self.st_f2 = (+ self.st_f2 0.25d)
    self.st_f3 = 0s
    self.st_y2 = 500s
0x000A44:
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 65535))
    if !(> self.hitno 0s) goto 0x000B80
0x000A98:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "TOUCHED CREDITS") self.st_y (var 320s))
    self.i = 0s
    if !(< self.i self.hitno) goto 0x000B80
0x000AFC:
    push (var 0s)
    call (draw_text_transformed[]:int32 (var 1s) (var 1s) -1s (int32 self.i):hitname (+ (+ self.st_y 40s) (* self.i 20s)) (var 320s))
    self.i = (+ self.i 1s)
    goto 0x000AE4
0x000B80:
    if !(<= self.hitno 0s) goto 0x000C24
0x000B94:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "s_key") (var "reset"))
    call (ini_close[]:int32 )
    call (draw_text_transformed[]:int32 (var 0s) (var 4s) (var 4s) (var "Incredible work.#Somewhere, felt a#door opening...!") self.st_y (var 320s))
0x000C24:
    if !(>= self.st_t 320s) goto 0x000DD4
0x000C38:
    call (draw_set_color[]:int32 (var 16777215))
    self.st_y2 = (- self.st_y2 2s)
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Thanks to friends and#family for supporting us.#And UNDERTALE TEAM thanks#you, the player, from#the bottom of our hearts.#Without you, all of this#would be impossible.# #Good night.") self.st_y2 (var 320s))
    if !(<= self.st_y2 -400s) goto 0x000DD4
0x000CBC:
    if !(>= self.st_y2 -410s) goto 0x000CDC
0x000CD0:
    self.l_alpha = 0s
0x000CDC:
    self.depth = -9000s
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.l_alpha)
    self.l_alpha = (+ self.l_alpha 0.00833333333333333d)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(<= self.st_y2 -830s) goto 0x000DD4
0x000D78:
    call (caster_free[]:int32 self.lastsong)
    push -5s
    if !(== 512s:flag 0s) goto 0x000DC0
0x000DA8:
    call (room_goto[]:int32 (var 285s))
    goto 0x000DD4
0x000DC0:
    call (room_goto[]:int32 (var 286s))
0x000DD4:
    call (draw_set_halign[]:int32 (var 0s))
0x000DE8:
    if !(== self.ting 1s) goto 0x000E30
0x000DFC:
    call (snd_stop[]:int32 (var 118s))
    call (snd_play[]:int32 (var 118s))
    self.ting = 0s
0x000E30:
    exit
