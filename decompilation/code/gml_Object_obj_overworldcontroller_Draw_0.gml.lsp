0x000000:
    self.buffer = (+ self.buffer 1s)
    if !(== global.interact 5s) goto 0x003254
0x00002C:
    self.currentmenu = global.menuno
    if !(< global.menuno 6s) goto 0x000070
0x000050:
    push -5s
    self.currentspot = (int32 global.menuno):menucoord
0x000070:
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (+ (int32 self.view_current):view_yview 10s)
    self.moveyy = self.yy
    if !(> 1570.y (+ self.yy 120s)) goto 0x000100
0x0000E8:
    self.moveyy = (+ self.moveyy 135s)
0x000100:
    if !(!= global.menuno 4s) goto 0x000A14
0x000114:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ 70s self.moveyy) (+ 86s self.xx) (+ 16s self.moveyy) (+ 16s self.xx))
    call (draw_rectangle[]:int32 (var 0s) (+ 147s self.yy) (+ 86s self.xx) (+ 74s self.yy) (+ 16s self.xx))
    if (== global.menuno 1s) goto 0x000210
0x0001E8:
    if (== global.menuno 5s) goto 0x000210
0x0001FC:
    push (== global.menuno 6s)
    goto 0x000214
0x000210:
    push 1s
0x000214:
    if !pop goto 0x00026C
0x000218:
    call (draw_rectangle[]:int32 (var 0s) (+ 196s self.yy) (+ 266s self.xx) (+ 16s self.yy) (+ 94s self.xx))
0x00026C:
    if !(== global.menuno 2s) goto 0x0002D4
0x000280:
    call (draw_rectangle[]:int32 (var 0s) (+ 224s self.yy) (+ 266s self.xx) (+ 16s self.yy) (+ 94s self.xx))
0x0002D4:
    if !(== global.menuno 3s) goto 0x00033C
0x0002E8:
    call (draw_rectangle[]:int32 (var 0s) (+ 150s self.yy) (+ 266s self.xx) (+ 16s self.yy) (+ 94s self.xx))
0x00033C:
    if !(== global.menuno 7s) goto 0x0003A4
0x000350:
    call (draw_rectangle[]:int32 (var 0s) (+ 216s self.yy) (+ 266s self.xx) (+ 16s self.yy) (+ 94s self.xx))
0x0003A4:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ 67s self.moveyy) (+ 83s self.xx) (+ 19s self.moveyy) (+ 19s self.xx))
    call (draw_rectangle[]:int32 (var 0s) (+ 144s self.yy) (+ 83s self.xx) (+ 77s self.yy) (+ 19s self.xx))
    if (== global.menuno 1s) goto 0x00049C
0x000474:
    if (== global.menuno 5s) goto 0x00049C
0x000488:
    push (== global.menuno 6s)
    goto 0x0004A0
0x00049C:
    push 1s
0x0004A0:
    if !pop goto 0x0004F8
0x0004A4:
    call (draw_rectangle[]:int32 (var 0s) (+ 193s self.yy) (+ 263s self.xx) (+ 19s self.yy) (+ 97s self.xx))
0x0004F8:
    if !(== global.menuno 2s) goto 0x000560
0x00050C:
    call (draw_rectangle[]:int32 (var 0s) (+ 221s self.yy) (+ 263s self.xx) (+ 19s self.yy) (+ 97s self.xx))
0x000560:
    if !(== global.menuno 3s) goto 0x0005C8
0x000574:
    call (draw_rectangle[]:int32 (var 0s) (+ 147s self.yy) (+ 263s self.xx) (+ 19s self.yy) (+ 97s self.xx))
0x0005C8:
    if !(== global.menuno 7s) goto 0x000630
0x0005DC:
    call (draw_rectangle[]:int32 (var 0s) (+ 213s self.yy) (+ 263s self.xx) (+ 19s self.yy) (+ 97s self.xx))
0x000630:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 3s))
    call (draw_text[]:int32 (+ (+ (+ "HP  " (string[]:int32 global.hp)) "/") (string[]:int32 global.maxhp)) (+ 49s self.moveyy) (+ 23s self.xx))
    call (draw_text[]:int32 (+ "LV  " (string[]:int32 global.lv)) (+ 40s self.moveyy) (+ 23s self.xx))
    call (draw_text[]:int32 (+ "G   " (string[]:int32 global.gold)) (+ 58s self.moveyy) (+ 23s self.xx))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_text[]:int32 global.charname (+ 20s self.moveyy) (+ 23s self.xx))
    push -5s
    if !(== 0s:menuchoice 1s) goto 0x0007F0
0x0007B8:
    call (draw_text[]:int32 (var "ITEM") (+ 84s self.yy) (+ 42s self.xx))
0x0007F0:
    push -5s
    if !(== 1s:menuchoice 1s) goto 0x000844
0x00080C:
    call (draw_text[]:int32 (var "STAT") (+ 102s self.yy) (+ 42s self.xx))
0x000844:
    push -5s
    if !(== 2s:menuchoice 1s) goto 0x000898
0x000860:
    call (draw_text[]:int32 (var "CELL") (+ 120s self.yy) (+ 42s self.xx))
0x000898:
    if (== global.menuno 1s) goto 0x0008C0
0x0008AC:
    push (== global.menuno 5s)
    goto 0x0008C4
0x0008C0:
    push 1s
0x0008C4:
    if !pop goto 0x000A14
0x0008C8:
    self.i = 0s
    if !(< self.i 8s) goto 0x00095C
0x0008E8:
    push -5s
    call (draw_text[]:int32 (int32 self.i):itemname (+ (+ 30s self.yy) (* self.i 16s)) (+ 116s self.xx))
    self.i = (+ self.i 1s)
    goto 0x0008D4
0x00095C:
    call (draw_text[]:int32 (var "USE") (+ 170s self.yy) (+ 116s self.xx))
    call (draw_text[]:int32 (var "INFO") (+ 170s self.yy) (+ (+ 116s self.xx) 48s))
    call (draw_text[]:int32 (var "DROP") (+ 170s self.yy) (+ (+ 116s self.xx) 105s))
0x000A14:
    if !(== global.menuno 3s) goto 0x000ABC
0x000A28:
    self.i = 0s
    if !(< self.i 7s) goto 0x000ABC
0x000A48:
    push -5s
    call (draw_text[]:int32 (int32 self.i):phonename (+ (+ 30s self.yy) (* self.i 16s)) (+ 116s self.xx))
    self.i = (+ self.i 1s)
    goto 0x000A34
0x000ABC:
    if !(== global.menuno 6s) goto 0x000B70
0x000AD0:
    call (scr_itemname[]:int32 )
    self.i = 0s
    if !(< self.i 8s) goto 0x000B70
0x000AFC:
    push -5s
    call (draw_text[]:int32 (int32 self.i):itemname (+ (+ 30s self.yy) (* self.i 16s)) (+ 116s self.xx))
    self.i = (+ self.i 1s)
    goto 0x000AE8
0x000B70:
    if !(== global.menuno 7s) goto 0x000C2C
0x000B84:
    call (scr_storagename[]:int32 (var 300s))
    self.i = 0s
    if !(< self.i 10s) goto 0x000C2C
0x000BB8:
    push -5s
    call (draw_text[]:int32 (int32 self.i):itemname (+ (+ 30s self.yy) (* self.i 16s)) (+ 116s self.xx))
    self.i = (+ self.i 1s)
    goto 0x000BA4
0x000C2C:
    if !(== global.menuno 2s) goto 0x001674
0x000C40:
    call (draw_text[]:int32 (+ (+ "\"" global.charname) "\"") (+ 32s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ "LV  " (string[]:int32 global.lv)) (+ 62s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ (+ (+ "HP  " (string[]:int32 global.hp)) " / ") (string[]:int32 global.maxhp)) (+ 78s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ (+ (+ (+ "AT  " (string[]:int32 (- global.at 10s))) " (") (string[]:int32 global.wstrength)) ")") (+ 110s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ (+ (+ (+ "DF  " (string[]:int32 (- global.df 10s))) " (") (string[]:int32 global.adef)) ")") (+ 126s self.yy) (+ 108s self.xx))
    self.weaponname = " "
    self.armorname = " "
    if !(== global.weapon 3s) goto 0x000E78
0x000E68:
    self.weaponname = "Stick"
0x000E78:
    if !(== global.weapon 13s) goto 0x000E9C
0x000E8C:
    self.weaponname = "Toy Knife"
0x000E9C:
    if !(== global.weapon 14s) goto 0x000EC0
0x000EB0:
    self.weaponname = "Tough Glove"
0x000EC0:
    if !(== global.weapon 25s) goto 0x000EE4
0x000ED4:
    self.weaponname = "Ballet Shoes"
0x000EE4:
    if !(== global.weapon 45s) goto 0x000F08
0x000EF8:
    self.weaponname = "Torn Notebook"
0x000F08:
    if !(== global.weapon 47s) goto 0x000F2C
0x000F1C:
    self.weaponname = "Burnt Pan"
0x000F2C:
    if !(== global.weapon 49s) goto 0x000F50
0x000F40:
    self.weaponname = "Empty Gun"
0x000F50:
    if !(== global.weapon 51s) goto 0x000F74
0x000F64:
    self.weaponname = "Worn Dagger"
0x000F74:
    if !(== global.weapon 52s) goto 0x000F98
0x000F88:
    self.weaponname = "Real Knife"
0x000F98:
    if !(== global.armor 4s) goto 0x000FBC
0x000FAC:
    self.armorname = "Bandage"
0x000FBC:
    if !(== global.armor 12s) goto 0x000FE0
0x000FD0:
    self.armorname = "Faded Ribbon"
0x000FE0:
    if !(== global.armor 15s) goto 0x001004
0x000FF4:
    self.armorname = "Manly Bandanna"
0x001004:
    if !(== global.armor 24s) goto 0x001028
0x001018:
    self.armorname = "Old Tutu"
0x001028:
    if !(== global.armor 44s) goto 0x00104C
0x00103C:
    self.armorname = "Clouded Glasses"
0x00104C:
    if !(== global.armor 46s) goto 0x001070
0x001060:
    self.armorname = "Stained Apron"
0x001070:
    if !(== global.armor 48s) goto 0x001094
0x001084:
    self.armorname = "Cowboy Hat"
0x001094:
    if !(== global.armor 50s) goto 0x0010B8
0x0010A8:
    self.armorname = "Heart Locket"
0x0010B8:
    if !(== global.armor 53s) goto 0x0010DC
0x0010CC:
    self.armorname = "The Locket"
0x0010DC:
    if !(== global.armor 64s) goto 0x001100
0x0010F0:
    self.armorname = "Temmie Armor"
0x001100:
    call (draw_text[]:int32 (+ "WEAPON: " self.weaponname) (+ 156s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ "ARMOR: " self.armorname) (+ 172s self.yy) (+ 108s self.xx))
    call (draw_text[]:int32 (+ "GOLD: " (string[]:int32 global.gold)) (+ 192s self.yy) (+ 108s self.xx))
    if !(> global.kills 20s) goto 0x001224
0x0011DC:
    call (draw_text[]:int32 (+ "KILLS: " (string[]:int32 global.kills)) (+ 192s self.yy) (+ 192s self.xx))
0x001224:
    if !(>= (string_length[]:int32 global.charname) 7s) goto 0x001278
0x001240:
    call (draw_text[]:int32 (var "Easy to#change,#huh?") (+ 32s self.yy) (+ 192s self.xx))
0x001278:
    call (draw_text[]:int32 (+ "EXP: " (string[]:int32 global.xp)) (+ 110s self.yy) (+ 192s self.xx))
    if !(== global.lv 1s) goto 0x0012EC
0x0012D4:
    self.nextlevel = (- 10s global.xp)
0x0012EC:
    if !(== global.lv 2s) goto 0x001318
0x001300:
    self.nextlevel = (- 30s global.xp)
0x001318:
    if !(== global.lv 3s) goto 0x001344
0x00132C:
    self.nextlevel = (- 70s global.xp)
0x001344:
    if !(== global.lv 4s) goto 0x001370
0x001358:
    self.nextlevel = (- 120s global.xp)
0x001370:
    if !(== global.lv 5s) goto 0x00139C
0x001384:
    self.nextlevel = (- 200s global.xp)
0x00139C:
    if !(== global.lv 6s) goto 0x0013C8
0x0013B0:
    self.nextlevel = (- 300s global.xp)
0x0013C8:
    if !(== global.lv 7s) goto 0x0013F4
0x0013DC:
    self.nextlevel = (- 500s global.xp)
0x0013F4:
    if !(== global.lv 8s) goto 0x001420
0x001408:
    self.nextlevel = (- 800s global.xp)
0x001420:
    if !(== global.lv 9s) goto 0x00144C
0x001434:
    self.nextlevel = (- 1200s global.xp)
0x00144C:
    if !(== global.lv 10s) goto 0x001478
0x001460:
    self.nextlevel = (- 1700s global.xp)
0x001478:
    if !(== global.lv 11s) goto 0x0014A4
0x00148C:
    self.nextlevel = (- 2500s global.xp)
0x0014A4:
    if !(== global.lv 12s) goto 0x0014D0
0x0014B8:
    self.nextlevel = (- 3500s global.xp)
0x0014D0:
    if !(== global.lv 13s) goto 0x0014FC
0x0014E4:
    self.nextlevel = (- 5000s global.xp)
0x0014FC:
    if !(== global.lv 14s) goto 0x001528
0x001510:
    self.nextlevel = (- 7000s global.xp)
0x001528:
    if !(== global.lv 15s) goto 0x001554
0x00153C:
    self.nextlevel = (- 10000s global.xp)
0x001554:
    if !(== global.lv 16s) goto 0x001580
0x001568:
    self.nextlevel = (- 15000s global.xp)
0x001580:
    if !(== global.lv 17s) goto 0x0015AC
0x001594:
    self.nextlevel = (- 25000s global.xp)
0x0015AC:
    if !(== global.lv 18s) goto 0x0015DC
0x0015C0:
    self.nextlevel = (- 50000 global.xp)
0x0015DC:
    if !(== global.lv 19s) goto 0x00160C
0x0015F0:
    self.nextlevel = (- 99999 global.xp)
0x00160C:
    if !(>= global.lv 20s) goto 0x00162C
0x001620:
    self.nextlevel = 0s
0x00162C:
    call (draw_text[]:int32 (+ "NEXT: " (string[]:int32 self.nextlevel)) (+ 126s self.yy) (+ 192s self.xx))
0x001674:
    if !(== global.menuno 4s) goto 0x001EA8
0x001688:
    self.iniread = (ini_open[]:int32 (var "undertale.ini"))
    self.name = (ini_read_string[]:int32 (var "EMPTY") (var "Name") (var "General"))
    self.love = (ini_read_real[]:int32 (var 0s) (var "Love") (var "General"))
    self.time = (ini_read_real[]:int32 (var 1s) (var "Time") (var "General"))
    self.kills = (ini_read_real[]:int32 (var 0s) (var "Kills") (var "General"))
    self.roome = (ini_read_real[]:int32 (var 0s) (var "Room") (var "General"))
    call (ini_close[]:int32 )
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ 135s self.yy) (+ 265s self.xx) (+ 49s self.yy) (+ 54s self.xx))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ 132s self.yy) (+ 262s self.xx) (+ 52s self.yy) (+ 57s self.xx))
    call (draw_set_color[]:int32 (var 16777215))
    push -5s
    if !(== 4s:menucoord 2s) goto 0x0018D8
0x0018C0:
    call (draw_set_color[]:int32 (var 65535))
0x0018D8:
    self.minutes = (floor[]:int32 (/ self.time (double 1800s)))
    self.seconds = (round[]:int32 (* (- (/ self.time (double 1800s)) self.minutes) 60s))
    if !(== self.seconds 60s) goto 0x001954
0x001948:
    self.seconds = 59s
0x001954:
    if !(< self.seconds 10s) goto 0x00198C
0x001968:
    self.seconds = (+ "0" (string[]:int32 self.seconds))
0x00198C:
    call (script_execute[]:int32 self.roome (var 54s))
    call (draw_text[]:int32 self.name (+ 60s self.yy) (+ 70s self.xx))
    call (draw_text[]:int32 (+ "LV " (string[]:int32 self.love)) (+ 60s self.yy) (+ 140s self.xx))
    call (draw_text[]:int32 (+ (+ (string[]:int32 self.minutes) ":") (string[]:int32 self.seconds)) (+ 60s self.yy) (+ 210s self.xx))
    call (draw_text[]:int32 self.roomname (+ 80s self.yy) (+ 70s self.xx))
    push -5s
    if !(== 4s:menucoord 0s) goto 0x001B0C
0x001AD0:
    call (draw_sprite[]:int32 (+ self.yy 113s) (+ self.xx 71s) (var 0s) (var 49s))
0x001B0C:
    push -5s
    if !(== 4s:menucoord 1s) goto 0x001B64
0x001B28:
    call (draw_sprite[]:int32 (+ self.yy 113s) (+ self.xx 161s) (var 0s) (var 49s))
0x001B64:
    push -5s
    if !(< 4s:menucoord 2s) goto 0x001BF4
0x001B80:
    call (draw_text[]:int32 (var "Save") (+ self.yy 110s) (+ self.xx 85s))
    call (draw_text[]:int32 (var "Return") (+ self.yy 110s) (+ self.xx 175s))
    goto 0x001C84
0x001BF4:
    call (draw_text[]:int32 (var "File saved.") (+ self.yy 110s) (+ self.xx 85s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x001C84
0x001C44:
    global.menuno = -1s
    global.interact = 0s
    stog.menucoord[4s] = 0s
    call (keyboard_clear[]:int32 (var 13s))
0x001C84:
    if (bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x001CB4
0x001C9C:
    push (bool (keyboard_check_pressed[]:int32 (var 39s)))
    goto 0x001CB8
0x001CB4:
    push 1s
0x001CB8:
    if !pop goto 0x001D48
0x001CBC:
    push -5s
    if !(< 4s:menucoord 2s) goto 0x001D48
0x001CD8:
    push -5s
    if !(== 4s:menucoord 1s) goto 0x001D0C
0x001CF4:
    stog.menucoord[4s] = 0s
    goto 0x001D20
0x001D0C:
    stog.menucoord[4s] = 1s
0x001D20:
    call (keyboard_clear[]:int32 (var 37s))
    call (keyboard_clear[]:int32 (var 39s))
0x001D48:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x001D7C
0x001D60:
    push -5s
    push (== 4s:menucoord 0s)
    goto 0x001D80
0x001D7C:
    push 0s
0x001D80:
    if !pop goto 0x001DD4
0x001D84:
    call (snd_play[]:int32 (var 25s))
    call (script_execute[]:int32 (var 60s))
    stog.menucoord[4s] = 2s
    call (keyboard_clear[]:int32 (var 13s))
0x001DD4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x001E08
0x001DEC:
    push -5s
    push (== 4s:menucoord 1s)
    goto 0x001E0C
0x001E08:
    push 0s
0x001E0C:
    if !pop goto 0x001E50
0x001E10:
    global.menuno = -1s
    global.interact = 0s
    stog.menucoord[4s] = 0s
    call (keyboard_clear[]:int32 (var 13s))
0x001E50:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 16s))) goto 0x001EA8
0x001E68:
    global.menuno = -1s
    global.interact = 0s
    stog.menucoord[4s] = 0s
    call (keyboard_clear[]:int32 (var 16s))
0x001EA8:
    if !(== global.menuno 0s) goto 0x001F14
0x001EBC:
    push (+ 88s self.yy)
    call (draw_sprite[]:int32 (+ 18s (* -5s 0s:menucoord)) (+ 28s self.xx) (var 0s) (var 49s))
0x001F14:
    if !(== global.menuno 1s) goto 0x001F80
0x001F28:
    push (+ 34s self.yy)
    call (draw_sprite[]:int32 (+ 16s (* -5s 1s:menucoord)) (+ 104s self.xx) (var 0s) (var 49s))
0x001F80:
    if !(== global.menuno 3s) goto 0x001FEC
0x001F94:
    push (+ 34s self.yy)
    call (draw_sprite[]:int32 (+ 16s (* -5s 3s:menucoord)) (+ 104s self.xx) (var 0s) (var 49s))
0x001FEC:
    if !(== global.menuno 6s) goto 0x002058
0x002000:
    push (+ 34s self.yy)
    call (draw_sprite[]:int32 (+ 16s (* -5s 6s:menucoord)) (+ 104s self.xx) (var 0s) (var 49s))
0x002058:
    if !(== global.menuno 7s) goto 0x0020C4
0x00206C:
    push (+ 34s self.yy)
    call (draw_sprite[]:int32 (+ 16s (* -5s 7s:menucoord)) (+ 104s self.xx) (var 0s) (var 49s))
0x0020C4:
    if !(== global.menuno 5s) goto 0x002244
0x0020D8:
    push -5s
    if !(== 5s:menucoord 0s) goto 0x00214C
0x0020F4:
    push (+ 174s self.yy)
    call (draw_sprite[]:int32 (+ 104s self.xx) (+ 45s (* -5s 5s:menucoord)) (var 0s) (var 49s))
0x00214C:
    push -5s
    if !(== 5s:menucoord 1s) goto 0x0021C8
0x002168:
    push (+ 174s self.yy)
    call (draw_sprite[]:int32 (+ 104s self.xx) (+ 45s (+ (* -5s 5s:menucoord) 3s)) (var 0s) (var 49s))
0x0021C8:
    push -5s
    if !(== 5s:menucoord 2s) goto 0x002244
0x0021E4:
    push (+ 174s self.yy)
    call (draw_sprite[]:int32 (+ 104s self.xx) (+ 45s (+ (* -5s 5s:menucoord) 15s)) (var 0s) (var 49s))
0x002244:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x002B60
0x00225C:
    if !(== global.menuno 5s) goto 0x0027C4
0x002270:
    push -5s
    if !(== 5s:menucoord 0s) goto 0x0022DC
0x00228C:
    global.menuno = 9s
    push (int32 1s:menucoord[Altar.Decomp.Expression[]]):item
    call (script_execute[]:int32 -5s 1s:menucoord (var 73s))
0x0022DC:
    push -5s
    if !(== 5s:menucoord 1s) goto 0x002370
0x0022F8:
    global.menuno = 9s
    call (script_execute[]:int32 (int32 1s:menucoord[Altar.Decomp.Expression[]]):item (var 72s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
0x002370:
    push -5s
    if !(== 5s:menucoord 2s) goto 0x0027C4
0x00238C:
    global.menuno = 9s
    self.dontthrow = 0s
    if !(!= (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 23s) goto 0x002480
0x0023D0:
    if !(!= (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 27s) goto 0x002480
0x0023FC:
    if !(!= (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 54s) goto 0x002480
0x002428:
    if !(!= (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 56s) goto 0x002480
0x002454:
    push (!= (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 57s)
    goto 0x002484
0x002480:
    push 0s
0x002484:
    if !pop goto 0x0024C4
0x002488:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 12s) (var 146s))
    goto 0x002784
0x0024C4:
    if !(== (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 23s) goto 0x002528
0x0024F0:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 23s) (var 146s))
0x002528:
    if !(== (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 27s) goto 0x0025BC
0x002554:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* (You put the dog on the&  ground.)/%%") (var 0s) (var 146s))
    if !(bool (instance_exists[]:int32 (var 1147s))) goto 0x0025BC
0x0025A4:
    pushenv 1147s 0x0025B8
0x0025AC:
    self.con = 1s
0x0025B8:
    popenv 0x0025AC
0x0025BC:
    if !(== (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 54s) goto 0x00262C
0x0025E8:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* (You threw the Bad Memory&  away.^1)&* (But it came back.)/%%") (var 0s) (var 146s))
    self.dontthrow = 1s
0x00262C:
    if !(== (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 56s) goto 0x002714
0x002658:
    if !(~ (bool (instance_exists[]:int32 (var 1313s)))) goto 0x0026C4
0x002674:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* (Despite what seems like&  common sense^1, you threw&  away the letter.)/%%") (var 0s) (var 146s))
    stog.flag[494s] = 1s
    goto 0x002714
0x0026C4:
    global.faceemotion = 1s
    call (script_execute[]:int32 (var 37s) (var 5s) (var "* Hey^1! Don't throw that&  away^1! Just deliver it!/%%") (var 0s) (var 146s))
    self.dontthrow = 1s
0x002714:
    if !(== (int32 1s:menucoord[Altar.Decomp.Expression[]]):item 57s) goto 0x002784
0x002740:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* (The letter is too powerful to&  throw away.^1)&* (It gets the better of you.)/%%") (var 0s) (var 146s))
    self.dontthrow = 1s
0x002784:
    if !(== self.dontthrow 0s) goto 0x0027C4
0x002798:
    push (var 0s)
    call (script_execute[]:int32 -5s 1s:menucoord (var 66s))
0x0027C4:
    if !(== global.menuno 3s) goto 0x002828
0x0027D8:
    global.menuno = 9s
    push (int32 3s:menucoord[Altar.Decomp.Expression[]]):phone
    call (script_execute[]:int32 -5s 3s:menucoord (var 73s))
0x002828:
    if !(== global.menuno 6s) goto 0x002938
0x00283C:
    global.menuno = 9s
    call (script_execute[]:int32 (var 300s) (int32 6s:menucoord[Altar.Decomp.Expression[]]):item (var 85s))
    if !(== self.noroom 0s) goto 0x002900
0x002898:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 16s) (var 146s))
    push (var 0s)
    call (script_execute[]:int32 -5s 6s:menucoord (var 66s))
    goto 0x002938
0x002900:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 19s) (var 146s))
0x002938:
    if !(== global.menuno 7s) goto 0x002A48
0x00294C:
    global.menuno = 9s
    call (script_execute[]:int32 (int32 (+ 7s:menucoord[Altar.Decomp.Expression[]] 300s)):flag (var 84s))
    if !(== self.noroom 0s) goto 0x002A10
0x0029A8:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 17s) (var 146s))
    push (var 300s)
    call (scr_storageshift[]:int32 (var 0s) -5s 7s:menucoord)
    goto 0x002A48
0x002A10:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 18s) (var 146s))
0x002A48:
    if !(== global.menuno 1s) goto 0x002A7C
0x002A5C:
    global.menuno = 5s
    stog.menucoord[5s] = 0s
0x002A7C:
    if !(== global.menuno 0s) goto 0x002ABC
0x002A90:
    push global.menuno
    global.menuno = (+ -5s (+ 0s:menucoord 1s))
0x002ABC:
    if !(== global.menuno 3s) goto 0x002AF8
0x002AD0:
    call (script_execute[]:int32 (var 70s))
    stog.menucoord[3s] = 0s
0x002AF8:
    if !(== global.menuno 1s) goto 0x002B60
0x002B0C:
    push -5s
    if !(!= 0s:item 0s) goto 0x002B54
0x002B28:
    stog.menucoord[1s] = 0s
    call (script_execute[]:int32 (var 82s))
    goto 0x002B60
0x002B54:
    global.menuno = 0s
0x002B60:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x002D1C
0x002B78:
    if !(== global.menuno 0s) goto 0x002BCC
0x002B8C:
    push -5s
    if !(!= 0s:menucoord 0s) goto 0x002BCC
0x002BA8:
    push -5s
    stog.menucoord[(- 0s:menucoord 1s)] = 0s
0x002BCC:
    if !(== global.menuno 1s) goto 0x002C20
0x002BE0:
    push -5s
    if !(!= 1s:menucoord 0s) goto 0x002C20
0x002BFC:
    push -5s
    stog.menucoord[(- 1s:menucoord 1s)] = 1s
0x002C20:
    if !(== global.menuno 3s) goto 0x002C74
0x002C34:
    push -5s
    if !(!= 3s:menucoord 0s) goto 0x002C74
0x002C50:
    push -5s
    stog.menucoord[(- 3s:menucoord 1s)] = 3s
0x002C74:
    if !(== global.menuno 6s) goto 0x002CC8
0x002C88:
    push -5s
    if !(!= 6s:menucoord 0s) goto 0x002CC8
0x002CA4:
    push -5s
    stog.menucoord[(- 6s:menucoord 1s)] = 6s
0x002CC8:
    if !(== global.menuno 7s) goto 0x002D1C
0x002CDC:
    push -5s
    if !(!= 7s:menucoord 0s) goto 0x002D1C
0x002CF8:
    push -5s
    stog.menucoord[(- 7s:menucoord 1s)] = 7s
0x002D1C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x002FDC
0x002D34:
    if !(== global.menuno 0s) goto 0x002DBC
0x002D48:
    push -5s
    if !(!= 0s:menucoord 2s) goto 0x002DBC
0x002D64:
    if !(!= (int32 (+ 0s:menucoord[Altar.Decomp.Expression[]] 1s)):menuchoice 0s) goto 0x002DBC
0x002D98:
    push -5s
    stog.menucoord[(+ 0s:menucoord 1s)] = 0s
0x002DBC:
    if !(== global.menuno 1s) goto 0x002E44
0x002DD0:
    push -5s
    if !(!= 1s:menucoord 7s) goto 0x002E44
0x002DEC:
    if !(!= (int32 (+ 1s:menucoord[Altar.Decomp.Expression[]] 1s)):item 0s) goto 0x002E44
0x002E20:
    push -5s
    stog.menucoord[(+ 1s:menucoord 1s)] = 1s
0x002E44:
    if !(== global.menuno 3s) goto 0x002ECC
0x002E58:
    push -5s
    if !(!= 3s:menucoord 7s) goto 0x002ECC
0x002E74:
    if !(!= (int32 (+ 3s:menucoord[Altar.Decomp.Expression[]] 1s)):phone 0s) goto 0x002ECC
0x002EA8:
    push -5s
    stog.menucoord[(+ 3s:menucoord 1s)] = 3s
0x002ECC:
    if !(== global.menuno 6s) goto 0x002F54
0x002EE0:
    push -5s
    if !(!= 6s:menucoord 7s) goto 0x002F54
0x002EFC:
    if !(!= (int32 (+ 6s:menucoord[Altar.Decomp.Expression[]] 1s)):item 0s) goto 0x002F54
0x002F30:
    push -5s
    stog.menucoord[(+ 6s:menucoord 1s)] = 6s
0x002F54:
    if !(== global.menuno 7s) goto 0x002FDC
0x002F68:
    push -5s
    if !(!= 7s:menucoord 9s) goto 0x002FDC
0x002F84:
    if !(!= (int32 (+ 7s:menucoord[Altar.Decomp.Expression[]] 301s)):flag 0s) goto 0x002FDC
0x002FB8:
    push -5s
    stog.menucoord[(+ 7s:menucoord 1s)] = 7s
0x002FDC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 16s))) goto 0x003008
0x002FF4:
    push (>= self.buffer 0s)
    goto 0x00300C
0x003008:
    push 0s
0x00300C:
    if !pop goto 0x003080
0x003010:
    if !(== global.menuno 0s) goto 0x003040
0x003024:
    global.menuno = -1s
    global.interact = 0s
    goto 0x003060
0x003040:
    if !(<= global.menuno 3s) goto 0x003060
0x003054:
    global.menuno = 0s
0x003060:
    if !(== global.menuno 5s) goto 0x003080
0x003074:
    global.menuno = 1s
0x003080:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0030EC
0x003098:
    if !(== global.menuno 5s) goto 0x0030EC
0x0030AC:
    push -5s
    if !(!= 5s:menucoord 2s) goto 0x0030EC
0x0030C8:
    push -5s
    stog.menucoord[(+ 5s:menucoord 1s)] = 5s
0x0030EC:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x003158
0x003104:
    if !(== global.menuno 5s) goto 0x003158
0x003118:
    push -5s
    if !(!= 5s:menucoord 0s) goto 0x003158
0x003134:
    push -5s
    stog.menucoord[(- 5s:menucoord 1s)] = 5s
0x003158:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 17s))) goto 0x00319C
0x003170:
    if !(== global.menuno 0s) goto 0x00319C
0x003184:
    global.menuno = -1s
    global.interact = 0s
0x00319C:
    if !(< self.currentmenu global.menuno) goto 0x0031C8
0x0031B4:
    push (!= global.menuno 9s)
    goto 0x0031CC
0x0031C8:
    push 0s
0x0031CC:
    if !pop goto 0x0031E8
0x0031D0:
    call (snd_play[]:int32 (var 111s))
    goto 0x003254
0x0031E8:
    if !(>= global.menuno 0s) goto 0x003210
0x0031FC:
    push (< global.menuno 6s)
    goto 0x003214
0x003210:
    push 0s
0x003214:
    if !pop goto 0x003254
0x003218:
    push self.currentspot
    if !(!= -5s (int32 global.menuno):menucoord) goto 0x003254
0x003240:
    call (snd_play[]:int32 (var 114s))
0x003254:
    if !(== global.menuno 9s) goto 0x003284
0x003268:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x003288
0x003284:
    push 0s
0x003288:
    if !pop goto 0x0032A4
0x00328C:
    global.menuno = -1s
    global.interact = 0s
0x0032A4:
    exit
