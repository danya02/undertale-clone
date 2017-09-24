0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 1s))
    push (var 450s)
    push (var 25s)
    call (draw_text_ext[]:int32 self.mystring -5s (+ 2s:idealborder 15s) -5s (+ 0s:idealborder 25s))
    if !(== self.cantype 1s) goto 0x0000C0
0x000094:
    call (draw_text[]:int32 (var "ESSAY PROMPT:#Why do you#love most about#Mettaton?#(No X or Z)") (var 50s) (var 430s))
    goto 0x0000E8
0x0000C0:
    call (draw_text[]:int32 (var "TIME UP!!!") (var 200s) (var 430s))
0x0000E8:
    self.dotimer = (+ self.dotimer 1s)
    if !(> self.dotimer 4s) goto 0x000150
0x000114:
    if !(== self.draw_on 0s) goto 0x000138
0x000128:
    self.draw_on = 1s
    goto 0x000144
0x000138:
    self.draw_on = 0s
0x000144:
    self.dotimer = 0s
0x000150:
    if !(== self.draw_on 1s) goto 0x000180
0x000164:
    push (< (string_length[]:int32 self.mystring) 3s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001C0
0x000188:
    call (draw_text[]:int32 (var "[START TYPING]") (+ 743.y 20s) (- 743.x 30s))
0x0001C0:
    if !(== self.cantype 1s) goto 0x000418
0x0001D4:
    if !(bool (keyboard_check_pressed[]:int32 (var 1s))) goto 0x000418
0x0001EC:
    self.exc = 0s
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x00021C
0x000210:
    self.exc = 1s
0x00021C:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000240
0x000234:
    self.exc = 1s
0x000240:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000264
0x000258:
    self.exc = 1s
0x000264:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x000288
0x00027C:
    self.exc = 1s
0x000288:
    if !(bool (keyboard_check_pressed[]:int32 (var 8s))) goto 0x0002AC
0x0002A0:
    self.exc = 1s
0x0002AC:
    if !(bool (keyboard_check_pressed[]:int32 (var 16s))) goto 0x0002D0
0x0002C4:
    self.exc = 1s
0x0002D0:
    if !(bool (keyboard_check_pressed[]:int32 (var 13s))) goto 0x0002F4
0x0002E8:
    self.exc = 1s
0x0002F4:
    if !(bool (keyboard_check_pressed[]:int32 (var 27s))) goto 0x000318
0x00030C:
    self.exc = 1s
0x000318:
    if !(== self.exc 0s) goto 0x000368
0x00032C:
    if !(< self.endbuffer 30s) goto 0x00034C
0x000340:
    self.endbuffer = 30s
0x00034C:
    self.mystring = (+ self.mystring self.keyboard_lastchar)
0x000368:
    if !(bool (keyboard_check_pressed[]:int32 (var 90s))) goto 0x00039C
0x000380:
    push (~ (bool (keyboard_check_pressed[]:int32 (var 13s))))
    goto 0x0003A0
0x00039C:
    push 0s
0x0003A0:
    if !pop goto 0x0003C0
0x0003A4:
    self.mystring = (+ self.mystring "z")
0x0003C0:
    if !(bool (keyboard_check_pressed[]:int32 (var 88s))) goto 0x0003F4
0x0003D8:
    push (~ (bool (keyboard_check_pressed[]:int32 (var 16s))))
    goto 0x0003F8
0x0003F4:
    push 0s
0x0003F8:
    if !pop goto 0x000418
0x0003FC:
    self.mystring = (+ self.mystring "x")
0x000418:
    self.endbuffer = (- self.endbuffer 1s)
    if !(< self.endbuffer 0s) goto 0x000474
0x000444:
    push -1s
    if !(> 0s:alarm 10s) goto 0x000474
0x000460:
    stog.alarm[0s] = 10s
0x000474:
    if !(bool (keyboard_check_pressed[]:int32 (var 8s))) goto 0x0004A0
0x00048C:
    push (== self.cantype 1s)
    goto 0x0004A4
0x0004A0:
    push 0s
0x0004A4:
    if !pop goto 0x000504
0x0004A8:
    if !(> (string_length[]:int32 self.mystring) 1s) goto 0x000504
0x0004C4:
    self.stl = (string_length[]:int32 self.mystring)
    self.mystring = (string_delete[]:int32 (var 1s) self.stl self.mystring)
0x000504:
    stog.msg[0s] = ""
    if !(== self.con 1s) goto 0x0025C0
0x000530:
    self.leng = (string_length[]:int32 self.mystring)
    if !(== (string_length[]:int32 self.mystring) 1s) goto 0x00057C
0x000564:
    stog.msg[0s] = "Speechless...?&Who can blame you?/%%"
0x00057C:
    if !(== (string_length[]:int32 self.mystring) 2s) goto 0x0005B0
0x000598:
    stog.msg[0s] = "Well... that's concise./%%"
0x0005B0:
    if !(> (string_length[]:int32 self.mystring) 2s) goto 0x0005E4
0x0005CC:
    stog.msg[0s] = "Beautiful. Sometimes&the fewest words&speak the loudest./%%"
0x0005E4:
    if !(> (string_length[]:int32 self.mystring) 13s) goto 0x000618
0x000600:
    stog.msg[0s] = "Nice. You get a&gold star./%%"
0x000618:
    if !(> (string_length[]:int32 self.mystring) 50s) goto 0x00064C
0x000634:
    stog.msg[0s] = "Oh my... what a&great answer./%%"
0x00064C:
    if !(> (string_length[]:int32 self.mystring) 90s) goto 0x0006B0
0x000668:
    stog.msg[0s] = "Oooooh, you said so&much about me.../"
    stog.msg[1s] = "I love how&passionate you are./"
    stog.msg[2s] = "... even though I&don't understand&what you said.../%%"
0x0006B0:
    if !(> (string_length[]:int32 self.mystring) 140s) goto 0x0006E4
0x0006CC:
    stog.msg[0s] = "Beautiful.&Why don't you&write a book?/%%"
0x0006E4:
    self.spec = 0s
    self.swear = 0s
    self.nice = 0s
    self.beaut = 0s
    self.mystring_l = (string_lower[]:int32 self.mystring)
    if !(> (string_pos[]:int32 self.mystring_l (var "beaut")) 0s) goto 0x000784
0x000754:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000784:
    if !(> (string_pos[]:int32 self.mystring_l (var "hot")) 0s) goto 0x0007DC
0x0007AC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x0007DC:
    if !(> (string_pos[]:int32 self.mystring_l (var "sexy")) 0s) goto 0x000834
0x000804:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000834:
    if !(> (string_pos[]:int32 self.mystring_l (var "pretty")) 0s) goto 0x00088C
0x00085C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x00088C:
    if !(> (string_pos[]:int32 self.mystring_l (var "handsome")) 0s) goto 0x0008E4
0x0008B4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x0008E4:
    if !(> (string_pos[]:int32 self.mystring_l (var "gorgeous")) 0s) goto 0x00093C
0x00090C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x00093C:
    if !(> (string_pos[]:int32 self.mystring_l (var "sparkl")) 0s) goto 0x000994
0x000964:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000994:
    if !(> (string_pos[]:int32 self.mystring_l (var "charm")) 0s) goto 0x0009EC
0x0009BC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x0009EC:
    if !(> (string_pos[]:int32 self.mystring_l (var "attract")) 0s) goto 0x000A44
0x000A14:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000A44:
    if !(> (string_pos[]:int32 self.mystring_l (var "cute")) 0s) goto 0x000A9C
0x000A6C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000A9C:
    if !(> (string_pos[]:int32 self.mystring_l (var "smokin")) 0s) goto 0x000AF4
0x000AC4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000AF4:
    if !(> (string_pos[]:int32 self.mystring_l (var "elegant")) 0s) goto 0x000B4C
0x000B1C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000B4C:
    if !(> (string_pos[]:int32 self.mystring_l (var "good look")) 0s) goto 0x000BA4
0x000B74:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000BA4:
    if !(> (string_pos[]:int32 self.mystring_l (var "goodlook")) 0s) goto 0x000BFC
0x000BCC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000BFC:
    if !(> (string_pos[]:int32 self.mystring_l (var "good-look")) 0s) goto 0x000C54
0x000C24:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000C54:
    if !(> (string_pos[]:int32 self.mystring_l (var "grace")) 0s) goto 0x000CAC
0x000C7C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000CAC:
    if !(> (string_pos[]:int32 self.mystring_l (var "comely")) 0s) goto 0x000D04
0x000CD4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000D04:
    if !(> (string_pos[]:int32 self.mystring_l (var "fine")) 0s) goto 0x000D5C
0x000D2C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000D5C:
    if !(> (string_pos[]:int32 self.mystring_l (var "foxy")) 0s) goto 0x000DB4
0x000D84:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000DB4:
    if !(> (string_pos[]:int32 self.mystring_l (var "looker")) 0s) goto 0x000E0C
0x000DDC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000E0C:
    if !(> (string_pos[]:int32 self.mystring_l (var "dreamboat")) 0s) goto 0x000E64
0x000E34:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000E64:
    if !(> (string_pos[]:int32 self.mystring_l (var "stun")) 0s) goto 0x000EBC
0x000E8C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000EBC:
    if !(> (string_pos[]:int32 self.mystring_l (var "shapely")) 0s) goto 0x000F14
0x000EE4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000F14:
    if !(> (string_pos[]:int32 self.mystring_l (var "ravishing")) 0s) goto 0x000F6C
0x000F3C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000F6C:
    if !(> (string_pos[]:int32 self.mystring_l (var "allur")) 0s) goto 0x000FC4
0x000F94:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x000FC4:
    if !(> (string_pos[]:int32 self.mystring_l (var "entic")) 0s) goto 0x00101C
0x000FEC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x00101C:
    if !(> (string_pos[]:int32 self.mystring_l (var "seduct")) 0s) goto 0x001074
0x001044:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x001074:
    if !(> (string_pos[]:int32 self.mystring_l (var "enchant")) 0s) goto 0x0010CC
0x00109C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x0010CC:
    if !(> (string_pos[]:int32 self.mystring_l (var "appeal")) 0s) goto 0x001124
0x0010F4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x001124:
    if !(> (string_pos[]:int32 self.mystring_l (var "tantaliz")) 0s) goto 0x00117C
0x00114C:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x00117C:
    if !(> (string_pos[]:int32 self.mystring_l (var "adorable")) 0s) goto 0x0011D4
0x0011A4:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x0011D4:
    if !(> (string_pos[]:int32 self.mystring_l (var "radiant")) 0s) goto 0x00122C
0x0011FC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x00122C:
    if !(> (string_pos[]:int32 self.mystring_l (var "capitvat")) 0s) goto 0x001284
0x001254:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
0x001284:
    if !(> (string_pos[]:int32 self.mystring_l (var "leg")) 0s) goto 0x0012E8
0x0012AC:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
    self.spec = 1s
0x0012E8:
    if !(> (string_pos[]:int32 self.mystring_l (var "arm")) 0s) goto 0x00134C
0x001310:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
    self.spec = 2s
0x00134C:
    if !(> (string_pos[]:int32 self.mystring_l (var "hair")) 0s) goto 0x0013B0
0x001374:
    self.beaut = (+ self.beaut 2s)
    self.nice = (+ self.nice 1s)
    self.spec = 3s
0x0013B0:
    if !(> self.beaut 1s) goto 0x0013DC
0x0013C4:
    stog.msg[0s] = "Nice detail...&You're right, I do&look quite nice./%%"
0x0013DC:
    if !(> self.beaut 3s) goto 0x001408
0x0013F0:
    stog.msg[0s] = "Wonderful! Amazing! A+...&I AM completely stunning./%%"
0x001408:
    if !(> self.beaut 5s) goto 0x001434
0x00141C:
    stog.msg[0s] = "Oh, I'm blushing...&You're completely right,&I am beautiful in&every way./%%"
0x001434:
    if !(> self.beaut 7s) goto 0x001460
0x001448:
    stog.msg[0s] = "Oh my... I'm speechless...&You've completely&captured how&beautiful I am./%%"
0x001460:
    if !(== self.spec 1s) goto 0x00148C
0x001474:
    stog.msg[0s] = "That's right.&Legs was the&correct answer!/%%"
0x00148C:
    if !(== self.spec 2s) goto 0x0014B8
0x0014A0:
    stog.msg[0s] = "How creative. Arms...&most people just&think about my legs./%%"
0x0014B8:
    if !(== self.spec 3s) goto 0x0014E4
0x0014CC:
    stog.msg[0s] = "My hair... yes,&I use metal hair&gel./%%"
0x0014E4:
    if !(> (string_pos[]:int32 self.mystring_l (var "personality")) 0s) goto 0x001520
0x00150C:
    self.spec = 3.1d
0x001520:
    if !(> (string_pos[]:int32 self.mystring_l (var "voice")) 0s) goto 0x00155C
0x001548:
    self.spec = 3.2d
0x00155C:
    if !(> (string_pos[]:int32 self.mystring_l (var "dancing")) 0s) goto 0x001598
0x001584:
    self.spec = 3.3d
0x001598:
    if !(> (string_pos[]:int32 self.mystring_l (var "dance")) 0s) goto 0x0015D4
0x0015C0:
    self.spec = 3.3d
0x0015D4:
    if !(== self.spec 3.1d) goto 0x001608
0x0015F0:
    stog.msg[0s] = "Yes^1, my personality&is quite charming^1,&isn't it?/%%"
0x001608:
    if !(== self.spec 3.2d) goto 0x001654
0x001624:
    stog.msg[0s] = "They say I have&the voice of a&Siren..^1./"
    stog.msg[1s] = "... awooga!/%%"
0x001654:
    if !(== self.spec 3.3d) goto 0x001688
0x001670:
    stog.msg[0s] = "Dancing...^1?&Thank you^1, I'm&self-taught./%%"
0x001688:
    if !(> (string_pos[]:int32 self.mystring_l (var "ugly")) 0s) goto 0x0016BC
0x0016B0:
    self.spec = 4s
0x0016BC:
    if !(> (string_pos[]:int32 self.mystring_l (var "hideous")) 0s) goto 0x0016F0
0x0016E4:
    self.spec = 4s
0x0016F0:
    if !(> (string_pos[]:int32 self.mystring_l (var "repulsive")) 0s) goto 0x001724
0x001718:
    self.spec = 4s
0x001724:
    if !(> (string_pos[]:int32 self.mystring_l (var "unattractive")) 0s) goto 0x001758
0x00174C:
    self.spec = 4s
0x001758:
    if !(> (string_pos[]:int32 self.mystring_l (var "look bad")) 0s) goto 0x00178C
0x001780:
    self.spec = 4s
0x00178C:
    if !(> (string_pos[]:int32 self.mystring_l (var "stupid")) 0s) goto 0x0017C0
0x0017B4:
    self.spec = 4s
0x0017C0:
    if !(> (string_pos[]:int32 self.mystring_l (var "idiot")) 0s) goto 0x0017F4
0x0017E8:
    self.spec = 4s
0x0017F4:
    if !(> (string_pos[]:int32 self.mystring_l (var "jerk")) 0s) goto 0x001828
0x00181C:
    self.spec = 4s
0x001828:
    if !(> (string_pos[]:int32 self.mystring_l (var "asshole")) 0s) goto 0x00185C
0x001850:
    self.spec = 4s
0x00185C:
    if !(> (string_pos[]:int32 self.mystring_l (var "loser")) 0s) goto 0x001890
0x001884:
    self.spec = 4s
0x001890:
    if !(> (string_pos[]:int32 self.mystring_l (var "dumbass")) 0s) goto 0x0018C4
0x0018B8:
    self.spec = 4s
0x0018C4:
    if !(> (string_pos[]:int32 self.mystring_l (var "douche")) 0s) goto 0x0018F8
0x0018EC:
    self.spec = 4s
0x0018F8:
    if !(> (string_pos[]:int32 self.mystring_l (var "creep")) 0s) goto 0x00192C
0x001920:
    self.spec = 4s
0x00192C:
    if !(== self.spec 4s) goto 0x001958
0x001940:
    stog.msg[0s] = "Huh? This essay is&supposed to be about&me, not about you.../%%"
0x001958:
    if !(> (string_pos[]:int32 self.mystring_l (var "i love you")) 0s) goto 0x00198C
0x001980:
    self.spec = 5s
0x00198C:
    if !(> (string_pos[]:int32 self.mystring_l (var "i love your")) 0s) goto 0x0019C0
0x0019B4:
    self.spec = 0s
0x0019C0:
    if !(== self.spec 5s) goto 0x0019EC
0x0019D4:
    stog.msg[0s] = "What a touching&confession! I'll add&it to the pile./%%"
0x0019EC:
    if !(> (string_pos[]:int32 self.mystring_l (var "toby")) 0s) goto 0x001A20
0x001A14:
    self.spec = 6s
0x001A20:
    if !(== self.spec 6s) goto 0x001A4C
0x001A34:
    stog.msg[0s] = "Toby? What the hell&is that?&Sounds... sexy./%%"
0x001A4C:
    if !(> (string_pos[]:int32 self.mystring_l (var "fuck")) 0s) goto 0x001A80
0x001A74:
    self.swear = 1s
0x001A80:
    if !(> (string_pos[]:int32 self.mystring_l (var "shit")) 0s) goto 0x001AB4
0x001AA8:
    self.swear = 1s
0x001AB4:
    if !(> (string_pos[]:int32 self.mystring_l (var "cock")) 0s) goto 0x001AE8
0x001ADC:
    self.swear = 1s
0x001AE8:
    if !(> (string_pos[]:int32 self.mystring_l (var "pussy")) 0s) goto 0x001B1C
0x001B10:
    self.swear = 1s
0x001B1C:
    if !(> (string_pos[]:int32 self.mystring_l (var "penis")) 0s) goto 0x001B50
0x001B44:
    self.swear = 1s
0x001B50:
    if !(> (string_pos[]:int32 self.mystring_l (var "vagina")) 0s) goto 0x001B84
0x001B78:
    self.swear = 1s
0x001B84:
    if !(> (string_pos[]:int32 self.mystring_l (var "anus")) 0s) goto 0x001BB8
0x001BAC:
    self.swear = 1s
0x001BB8:
    if !(> (string_pos[]:int32 self.mystring_l (var "poop")) 0s) goto 0x001BEC
0x001BE0:
    self.swear = 1s
0x001BEC:
    if !(> (string_pos[]:int32 self.mystring_l (var "tity")) 0s) goto 0x001C20
0x001C14:
    self.swear = 1s
0x001C20:
    if !(> (string_pos[]:int32 self.mystring_l (var "titty")) 0s) goto 0x001C54
0x001C48:
    self.swear = 1s
0x001C54:
    if !(> (string_pos[]:int32 self.mystring_l (var "bepis")) 0s) goto 0x001C88
0x001C7C:
    self.swear = 1s
0x001C88:
    if !(== self.swear 1s) goto 0x001CCC
0x001C9C:
    stog.msg[0s] = "Oh my! This is a family&friendly TV show./"
    stog.msg[1s] = "Now stand still while&I murder you./%%"
0x001CCC:
    self.done = 0s
    if !(== self.swear 1s) goto 0x001D00
0x001CEC:
    push (== self.done 0s)
    goto 0x001D04
0x001D00:
    push 0s
0x001D04:
    if !pop goto 0x001D4C
0x001D08:
    self.done = 1s
    pushenv 402s 0x001D48
0x001D1C:
    self.curtype = 12s
    self.essay = -150s
    call (event_user[]:int32 (var 0s))
0x001D48:
    popenv 0x001D1C
0x001D4C:
    if !(== self.spec 6s) goto 0x001DB8
0x001D60:
    if !(== self.done 0s) goto 0x001DB8
0x001D74:
    self.done = 1s
    pushenv 402s 0x001DB4
0x001D88:
    self.curtype = 12s
    self.essay = 300s
    call (event_user[]:int32 (var 0s))
0x001DB4:
    popenv 0x001D88
0x001DB8:
    if !(== self.spec 5s) goto 0x001DE0
0x001DCC:
    push (== self.done 0s)
    goto 0x001DE4
0x001DE0:
    push 0s
0x001DE4:
    if !pop goto 0x001E2C
0x001DE8:
    self.done = 1s
    pushenv 402s 0x001E28
0x001DFC:
    self.curtype = 12s
    self.essay = 250s
    call (event_user[]:int32 (var 0s))
0x001E28:
    popenv 0x001DFC
0x001E2C:
    if !(== self.spec 4s) goto 0x001E54
0x001E40:
    push (== self.done 0s)
    goto 0x001E58
0x001E54:
    push 0s
0x001E58:
    if !pop goto 0x001EA0
0x001E5C:
    self.done = 1s
    pushenv 402s 0x001E9C
0x001E70:
    self.curtype = 12s
    self.essay = -200s
    call (event_user[]:int32 (var 0s))
0x001E9C:
    popenv 0x001E70
0x001EA0:
    if !(== self.spec 1s) goto 0x001EC8
0x001EB4:
    push (== self.done 0s)
    goto 0x001ECC
0x001EC8:
    push 0s
0x001ECC:
    if !pop goto 0x001F14
0x001ED0:
    self.done = 1s
    pushenv 402s 0x001F10
0x001EE4:
    self.curtype = 12s
    self.essay = 350s
    call (event_user[]:int32 (var 0s))
0x001F10:
    popenv 0x001EE4
0x001F14:
    if (== self.spec 2s) goto 0x001F3C
0x001F28:
    push (== self.spec 3s)
    goto 0x001F40
0x001F3C:
    push 1s
0x001F40:
    if !pop goto 0x001F9C
0x001F44:
    if !(== self.done 0s) goto 0x001F9C
0x001F58:
    self.done = 1s
    pushenv 402s 0x001F98
0x001F6C:
    self.curtype = 12s
    self.essay = 250s
    call (event_user[]:int32 (var 0s))
0x001F98:
    popenv 0x001F6C
0x001F9C:
    if !(> self.spec 3s) goto 0x001FC4
0x001FB0:
    push (< self.spec 4s)
    goto 0x001FC8
0x001FC4:
    push 0s
0x001FC8:
    if !pop goto 0x002024
0x001FCC:
    if !(== self.done 0s) goto 0x002024
0x001FE0:
    self.done = 1s
    pushenv 402s 0x002020
0x001FF4:
    self.curtype = 12s
    self.essay = 250s
    call (event_user[]:int32 (var 0s))
0x002020:
    popenv 0x001FF4
0x002024:
    if !(== self.done 0s) goto 0x00204C
0x002038:
    push (> self.beaut 0s)
    goto 0x002050
0x00204C:
    push 0s
0x002050:
    if !pop goto 0x002224
0x002054:
    if !(>= self.beaut 7s) goto 0x00207C
0x002068:
    push (== self.done 0s)
    goto 0x002080
0x00207C:
    push 0s
0x002080:
    if !pop goto 0x0020C8
0x002084:
    self.done = 1s
    pushenv 402s 0x0020C4
0x002098:
    self.curtype = 12s
    self.essay = 360s
    call (event_user[]:int32 (var 0s))
0x0020C4:
    popenv 0x002098
0x0020C8:
    if !(>= self.beaut 5s) goto 0x0020F0
0x0020DC:
    push (== self.done 0s)
    goto 0x0020F4
0x0020F0:
    push 0s
0x0020F4:
    if !pop goto 0x00213C
0x0020F8:
    self.done = 1s
    pushenv 402s 0x002138
0x00210C:
    self.curtype = 12s
    self.essay = 280s
    call (event_user[]:int32 (var 0s))
0x002138:
    popenv 0x00210C
0x00213C:
    if !(>= self.beaut 3s) goto 0x002164
0x002150:
    push (== self.done 0s)
    goto 0x002168
0x002164:
    push 0s
0x002168:
    if !pop goto 0x0021B0
0x00216C:
    self.done = 1s
    pushenv 402s 0x0021AC
0x002180:
    self.curtype = 12s
    self.essay = 250s
    call (event_user[]:int32 (var 0s))
0x0021AC:
    popenv 0x002180
0x0021B0:
    if !(>= self.beaut 1s) goto 0x0021D8
0x0021C4:
    push (== self.done 0s)
    goto 0x0021DC
0x0021D8:
    push 0s
0x0021DC:
    if !pop goto 0x002224
0x0021E0:
    self.done = 1s
    pushenv 402s 0x002220
0x0021F4:
    self.curtype = 12s
    self.essay = 200s
    call (event_user[]:int32 (var 0s))
0x002220:
    popenv 0x0021F4
0x002224:
    if !(== self.done 0s) goto 0x00247C
0x002238:
    if !(>= self.leng 140s) goto 0x002260
0x00224C:
    push (== self.done 0s)
    goto 0x002264
0x002260:
    push 0s
0x002264:
    if !pop goto 0x0022AC
0x002268:
    self.done = 1s
    pushenv 402s 0x0022A8
0x00227C:
    self.curtype = 12s
    self.essay = 180s
    call (event_user[]:int32 (var 0s))
0x0022A8:
    popenv 0x00227C
0x0022AC:
    if !(>= self.leng 90s) goto 0x0022D4
0x0022C0:
    push (== self.done 0s)
    goto 0x0022D8
0x0022D4:
    push 0s
0x0022D8:
    if !pop goto 0x002320
0x0022DC:
    self.done = 1s
    pushenv 402s 0x00231C
0x0022F0:
    self.curtype = 12s
    self.essay = 150s
    call (event_user[]:int32 (var 0s))
0x00231C:
    popenv 0x0022F0
0x002320:
    if !(>= self.leng 50s) goto 0x002348
0x002334:
    push (== self.done 0s)
    goto 0x00234C
0x002348:
    push 0s
0x00234C:
    if !pop goto 0x002394
0x002350:
    self.done = 1s
    pushenv 402s 0x002390
0x002364:
    self.curtype = 12s
    self.essay = 120s
    call (event_user[]:int32 (var 0s))
0x002390:
    popenv 0x002364
0x002394:
    if !(>= self.leng 13s) goto 0x0023BC
0x0023A8:
    push (== self.done 0s)
    goto 0x0023C0
0x0023BC:
    push 0s
0x0023C0:
    if !pop goto 0x002408
0x0023C4:
    self.done = 1s
    pushenv 402s 0x002404
0x0023D8:
    self.curtype = 12s
    self.essay = 100s
    call (event_user[]:int32 (var 0s))
0x002404:
    popenv 0x0023D8
0x002408:
    if !(<= self.leng 12s) goto 0x002430
0x00241C:
    push (== self.done 0s)
    goto 0x002434
0x002430:
    push 0s
0x002434:
    if !pop goto 0x00247C
0x002438:
    self.done = 1s
    pushenv 402s 0x002478
0x00244C:
    self.curtype = 12s
    self.essay = 80s
    call (event_user[]:int32 (var 0s))
0x002478:
    popenv 0x00244C
0x00247C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.essaynum = (ini_read_real[]:int32 (var 0s) (var "EssayNo") (var "MTT"))
    call (ini_write_real[]:int32 (+ self.essaynum 1s) (var "EssayNo") (var "MTT"))
    call (ini_close[]:int32 )
    pushenv 782s 0x002518
0x00250C:
    call (instance_destroy[]:int32 )
0x002518:
    popenv 0x00250C
0x00251C:
    self.con = 4s
    global.typer = 51s
    global.msc = 0s
    self.blcon = (instance_create[]:int32 (var 187s) 403.y (+ 403.x 200s))
    self.blconwd = (instance_create[]:int32 (var 784s) (- (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 20s))
0x0025C0:
    if !(== self.con 4s) goto 0x0025F0
0x0025D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0025F4
0x0025F0:
    push 0s
0x0025F4:
    if !pop goto 0x00266C
0x0025F8:
    [obj_mettatonex].attacked = 0s
    pushenv (int32 self.blcon) 0x002620
0x002614:
    call (instance_destroy[]:int32 )
0x002620:
    popenv 0x002614
0x002624:
    stog.msg[0s] = "* Mettaton is saving your&  essay for future use."
    global.mnfight = 3s
    global.myfight = -1s
    global.turntimer = -1s
    call (instance_destroy[]:int32 )
0x00266C:
    exit
