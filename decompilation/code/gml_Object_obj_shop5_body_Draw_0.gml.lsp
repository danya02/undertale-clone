0x000000:
    if !(!= self.nowemote global.faceemotion) goto 0x00002C
0x000018:
    call (event_user[]:int32 (var 0s))
0x00002C:
    self.nowemote = global.faceemotion
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (floor[]:int32 (+ 62s (* (sin[]:int32 (/ self.siner (double 4s))) 1.5d))) (var 178s) (floor[]:int32 (/ self.siner (double 8s))) (var 889s))
    call (draw_sprite[]:int32 (+ 1s self.bodyy) (+ 99s self.bodyx) (var 0s) (var 888s))
    if !(== global.faceemotion 0s) goto 0x00055C
0x000118:
    push 32s
    push (floor[]:int32 (+ (+ -1s 0s:offy) (/ self.facey (double 2s))))
    call (draw_sprite[]:int32 138s (floor[]:int32 (+ -1s 0s:offx)) (var 0s) (var 890s))
    push 40s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 139s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (var 0s) (var 891s))
    push 48s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 141s (floor[]:int32 (+ (+ -1s 2s:offx) self.facex)) (var 0s) (var 897s))
    self.facetimer = (+ self.facetimer 1s)
    if !(> self.facetimer 90s) goto 0x0002B4
0x0002A0:
    push (< self.facetimer 110s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0002FC
0x0002BC:
    self.facex = (+ self.facex (* (sin[]:int32 (/ self.facetimer (double 10s))) 0.8d))
0x0002FC:
    if !(> self.facetimer 130s) goto 0x000324
0x000310:
    push (< self.facetimer 150s)
    goto 0x000328
0x000324:
    push 0s
0x000328:
    if !pop goto 0x00036C
0x00032C:
    self.facex = (+ self.facex (* (sin[]:int32 (/ self.facetimer (double 10s))) 0.8d))
0x00036C:
    if !(> self.facetimer 190s) goto 0x000394
0x000380:
    push (< self.facetimer 230s)
    goto 0x000398
0x000394:
    push 0s
0x000398:
    if !pop goto 0x0003E4
0x00039C:
    self.facex = (* self.facex 0.9d)
    if !(<= self.facex 0.5d) goto 0x0003E4
0x0003D8:
    self.facex = 0s
0x0003E4:
    if !(> self.facetimer 290s) goto 0x00040C
0x0003F8:
    push (< self.facetimer 310s)
    goto 0x000410
0x00040C:
    push 0s
0x000410:
    if !pop goto 0x000454
0x000414:
    self.facey = (+ self.facey (* (sin[]:int32 (/ self.facetimer (double 10s))) 0.8d))
0x000454:
    if !(> self.facetimer 326s) goto 0x00047C
0x000468:
    push (< self.facetimer 345s)
    goto 0x000480
0x00047C:
    push 0s
0x000480:
    if !pop goto 0x0004C4
0x000484:
    self.facey = (+ self.facey (* (sin[]:int32 (/ self.facetimer (double 10s))) 1.5d))
0x0004C4:
    if !(> self.facetimer 390s) goto 0x0004EC
0x0004D8:
    push (< self.facetimer 430s)
    goto 0x0004F0
0x0004EC:
    push 0s
0x0004F0:
    if !pop goto 0x00053C
0x0004F4:
    self.facey = (* self.facey 0.9d)
    if !(<= self.facey 0.5d) goto 0x00053C
0x000530:
    self.facex = 0s
0x00053C:
    if !(== self.facetimer 460s) goto 0x00055C
0x000550:
    self.facetimer = 0s
0x00055C:
    if !(== global.faceemotion 1s) goto 0x000794
0x000570:
    self.rr = (- (random[]:int32 (var 0.8d)) (random[]:int32 (var 0.8d)))
    self.rr2 = (- (random[]:int32 (var 0.8d)) (random[]:int32 (var 0.8d)))
    push 32s
    push (floor[]:int32 (- (+ (+ -1s 0s:offy) (/ self.facey (double 2s))) (sin[]:int32 (/ self.facetimer (double 2s)))))
    call (draw_sprite[]:int32 138s (floor[]:int32 (+ -1s 0s:offx)) (var 0s) (var 890s))
    push 38s
    push (floor[]:int32 (+ (+ (+ -1s 1s:offy) self.facey) self.rr2))
    call (draw_sprite[]:int32 135s (floor[]:int32 (+ (+ (+ -1s 1s:offx) self.facex) self.rr)) (var 0s) (var 892s))
    push 48s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 141s (floor[]:int32 (+ (+ -1s 2s:offx) self.facex)) (var 0s) (var 897s))
    self.facetimer = (+ self.facetimer 1s)
0x000794:
    if !(== global.faceemotion 2s) goto 0x000B48
0x0007A8:
    push 32s
    push (floor[]:int32 (+ (+ -1s 0s:offy) (/ self.facey (double 2s))))
    call (draw_sprite[]:int32 138s (floor[]:int32 (+ -1s 0s:offx)) (var 0s) (var 890s))
    push 40s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 139s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (var 0s) (var 893s))
    push 48s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 141s (floor[]:int32 (+ (+ -1s 2s:offx) self.facex)) (floor[]:int32 (/ self.siner (double 3s))) (var 898s))
    call (draw_sprite_ext[]:int32 (+ 1s (sin[]:int32 (/ self.siner (double 4s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ 39s (* (sin[]:int32 (/ self.siner (double 4s))) 1.5d)) (var 133s) (var 0s) (var 902s))
    if !(> self.facetimer 45s) goto 0x0009E0
0x0009CC:
    push (< self.facetimer 55s)
    goto 0x0009E4
0x0009E0:
    push 0s
0x0009E4:
    if !pop goto 0x000A28
0x0009E8:
    self.facex = (+ self.facex (* (sin[]:int32 (/ self.facetimer (double 5s))) 0.8d))
0x000A28:
    if !(> self.facetimer 65s) goto 0x000A50
0x000A3C:
    push (< self.facetimer 75s)
    goto 0x000A54
0x000A50:
    push 0s
0x000A54:
    if !pop goto 0x000A98
0x000A58:
    self.facex = (+ self.facex (* (sin[]:int32 (/ self.facetimer (double 5s))) 0.8d))
0x000A98:
    if !(> self.facetimer 95s) goto 0x000AC0
0x000AAC:
    push (< self.facetimer 115s)
    goto 0x000AC4
0x000AC0:
    push 0s
0x000AC4:
    if !pop goto 0x000B10
0x000AC8:
    self.facex = (* self.facex 0.9d)
    if !(<= self.facex 0.5d) goto 0x000B10
0x000B04:
    self.facex = 0s
0x000B10:
    if !(== self.facetimer 140s) goto 0x000B30
0x000B24:
    self.facetimer = 0s
0x000B30:
    self.facetimer = (+ self.facetimer 1s)
0x000B48:
    if !(== global.faceemotion 3s) goto 0x000C88
0x000B5C:
    self.facex = 2s
    self.facey = -2s
    push 32s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 137s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (var 0s) (var 894s))
    push 42s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 146s (floor[]:int32 (+ (+ -1s 2s:offx) self.facex)) (floor[]:int32 (/ self.siner (double 3s))) (var 899s))
    self.facetimer = (+ self.facetimer 1s)
0x000C88:
    if !(== global.faceemotion 4s) goto 0x000EB8
0x000C9C:
    self.facey = (* (sin[]:int32 (/ self.facetimer (double 5s))) 1.5d)
    push 32s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 137s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (var 0s) (var 895s))
    push 43s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 144s (floor[]:int32 (+ (+ (+ -1s 2s:offx) self.facex) (* (cos[]:int32 (/ self.siner 1.5d)) 1.5d))) (floor[]:int32 (/ self.siner (double 3s))) (var 899s))
    call (draw_sprite_ext[]:int32 (+ 1s (sin[]:int32 (/ self.siner (double 4s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ 39s (* (sin[]:int32 (/ self.siner (double 4s))) 1.5d)) (var 133s) (var 0s) (var 902s))
    self.facetimer = (+ self.facetimer 1s)
0x000EB8:
    if !(== global.faceemotion 5s) goto 0x001138
0x000ECC:
    self.rr = (- (random[]:int32 (var 1s)) (random[]:int32 (var 1s)))
    self.rr2 = (- (random[]:int32 (var 1s)) (random[]:int32 (var 1s)))
    self.bodyx = self.rr
    self.bodyy = self.rr2
    self.facey = (* (sin[]:int32 (/ self.facetimer (double 3s))) 2s)
    push 31s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 137s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (var 0s) (var 896s))
    push 43s
    push (floor[]:int32 (+ (+ -1s 2s:offy) self.facey))
    call (draw_sprite[]:int32 144s (floor[]:int32 (+ (+ (+ -1s 2s:offx) self.facex) (* (cos[]:int32 self.siner) 2s))) (floor[]:int32 (/ self.siner (double 3s))) (var 899s))
    call (draw_sprite_ext[]:int32 (+ 1s (sin[]:int32 (/ self.siner (double 2s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ 39s (* (sin[]:int32 (/ self.siner (double 2s))) 2s)) (var 133s) (var 0s) (var 902s))
    self.facetimer = (+ self.facetimer 1s)
0x001138:
    if !(== global.faceemotion 6s) goto 0x0011EC
0x00114C:
    push 25s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 139s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (floor[]:int32 (/ self.siner (double 2s))) (var 900s))
    self.facetimer = (+ self.facetimer 1s)
0x0011EC:
    if !(== global.faceemotion 7s) goto 0x0012A0
0x001200:
    push 25s
    push (floor[]:int32 (+ (+ -1s 1s:offy) self.facey))
    call (draw_sprite[]:int32 139s (floor[]:int32 (+ (+ -1s 1s:offx) self.facex)) (floor[]:int32 (/ self.siner (double 2s))) (var 901s))
    self.facetimer = (+ self.facetimer 1s)
0x0012A0:
    call (draw_sprite[]:int32 (var 68s) (+ 80s self.boxx) (var 0s) (var 886s))
    if !(== self.sellmenu 1s) goto 0x001CC0
0x0012E8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    stog.value[0s] = 100s
    stog.value[1s] = 5s
    stog.value[2s] = 666s
    stog.value[3s] = 10s
    stog.value[4s] = 100s
    stog.value[5s] = 5s
    stog.value[6s] = 12s
    stog.value[7s] = 0s
    stog.value[8s] = 0s
    stog.value[9s] = 0s
    stog.value[10s] = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x00158C
0x001410:
    push "    "
    stog.s_value[(int32 self.i)] = (+ -1s (string[]:int32 (int32 self.i):value))
    push -1s
    if !(>= (int32 self.i):value 10s) goto 0x00149C
0x001478:
    push -1s
    push (< (int32 self.i):value 100s)
    goto 0x0014A0
0x00149C:
    push 0s
0x0014A0:
    if !pop goto 0x0014E8
0x0014A4:
    push "  "
    stog.s_value[(int32 self.i)] = (+ -1s (string[]:int32 (int32 self.i):value))
0x0014E8:
    push -1s
    if !(>= (int32 self.i):value 100s) goto 0x001530
0x00150C:
    push -1s
    push (< (int32 self.i):value 1000s)
    goto 0x001534
0x001530:
    push 0s
0x001534:
    if !pop goto 0x001570
0x001538:
    push -1s
    stog.s_value[(int32 self.i)] = (string[]:int32 (int32 self.i):value)
0x001570:
    self.i = (+ self.i 1s)
    goto 0x0013FC
0x00158C:
    self.odd = -1s
    if (== self.sellpos 0s) goto 0x0015E8
0x0015AC:
    if (== self.sellpos 2s) goto 0x0015E8
0x0015C0:
    if (== self.sellpos 4s) goto 0x0015E8
0x0015D4:
    push (== self.sellpos 6s)
    goto 0x0015EC
0x0015E8:
    push 1s
0x0015EC:
    if !pop goto 0x001644
0x0015F0:
    self.odd = 0s
    call (draw_sprite[]:int32 (+ 135s (* (/ self.sellpos (double 2s)) 20s)) (var 15s) (var 0s) (var 49s))
0x001644:
    if (== self.sellpos 1s) goto 0x001694
0x001658:
    if (== self.sellpos 3s) goto 0x001694
0x00166C:
    if (== self.sellpos 5s) goto 0x001694
0x001680:
    push (== self.sellpos 7s)
    goto 0x001698
0x001694:
    push 1s
0x001698:
    if !pop goto 0x0016F8
0x00169C:
    self.odd = 1s
    call (draw_sprite[]:int32 (+ 135s (* (/ (- self.sellpos 1s) (double 2s)) 20s)) (var 155s) (var 0s) (var 49s))
0x0016F8:
    if !(== self.sellpos 8s) goto 0x001738
0x00170C:
    call (draw_sprite[]:int32 (var 215s) (var 15s) (var 0s) (var 49s))
0x001738:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x001764
0x001750:
    push (== self.odd 0s)
    goto 0x001768
0x001764:
    push 0s
0x001768:
    if !pop goto 0x0017B0
0x00176C:
    push -1s
    if !(!= (int32 (+ self.sellpos 1s)):value 0s) goto 0x0017B0
0x001798:
    self.sellpos = (+ self.sellpos 1s)
0x0017B0:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0017DC
0x0017C8:
    push (== self.odd 1s)
    goto 0x0017E0
0x0017DC:
    push 0s
0x0017E0:
    if !pop goto 0x0017FC
0x0017E4:
    self.sellpos = (- self.sellpos 1s)
0x0017FC:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x001968
0x001814:
    self.d_fail = 0s
    push -1s
    if !(== (int32 (+ self.sellpos 2s)):value 0s) goto 0x001858
0x00184C:
    self.d_fail = 1s
0x001858:
    if !(== self.d_fail 1s) goto 0x001898
0x00186C:
    push -1s
    push (!= (int32 (+ self.sellpos 1s)):value 0s)
    goto 0x00189C
0x001898:
    push 0s
0x00189C:
    if !pop goto 0x0018AC
0x0018A0:
    self.d_fail = 2s
0x0018AC:
    if (== self.sellpos 6s) goto 0x0018E8
0x0018C0:
    if (== self.sellpos 7s) goto 0x0018E8
0x0018D4:
    push (== self.sellpos 8s)
    goto 0x0018EC
0x0018E8:
    push 1s
0x0018EC:
    if !pop goto 0x0018FC
0x0018F0:
    self.d_fail = 1s
0x0018FC:
    if !(== self.d_fail 1s) goto 0x001920
0x001910:
    self.sellpos = 8s
    goto 0x001968
0x001920:
    if !(== self.d_fail 2s) goto 0x001950
0x001934:
    self.sellpos = (+ self.sellpos 1s)
    goto 0x001968
0x001950:
    self.sellpos = (+ self.sellpos 2s)
0x001968:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x001A8C
0x001980:
    if !(!= self.sellpos 0s) goto 0x0019A8
0x001994:
    push (!= self.sellpos 1s)
    goto 0x0019AC
0x0019A8:
    push 0s
0x0019AC:
    if !pop goto 0x001A8C
0x0019B0:
    if !(== self.sellpos 8s) goto 0x001A74
0x0019C4:
    self.this_i = -1s
    self.i = 7s
    if !(== self.this_i -1s) goto 0x001A60
0x0019F0:
    push -1s
    if !(!= (int32 self.i):value 0s) goto 0x001A24
0x001A14:
    self.this_i = self.i
0x001A24:
    self.i = (- self.i 1s)
    if !(== self.i -1s) goto 0x001A5C
0x001A50:
    self.this_i = 8s
0x001A5C:
    goto 0x0019DC
0x001A60:
    self.sellpos = self.this_i
    goto 0x001A8C
0x001A74:
    self.sellpos = (- self.sellpos 2s)
0x001A8C:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 4s) goto 0x001BF8
0x001AC4:
    push -1s
    if !(!= (int32 (* self.i 2s)):value 0s) goto 0x001B48
0x001AF0:
    push -1s
    call (draw_text[]:int32 (+ (int32 (* self.i 2s)):s_value "G - Ninechara") (+ 130s (* self.i 20s)) (var 30s))
0x001B48:
    push -1s
    if !(!= (int32 (+ (* self.i 2s) 1s)):value 0s) goto 0x001BDC
0x001B7C:
    push -1s
    call (draw_text[]:int32 (+ (int32 (+ (* self.i 2s) 1s)):s_value "G - Ninechara") (+ 130s (* self.i 20s)) (var 170s))
0x001BDC:
    self.i = (+ self.i 1s)
    goto 0x001AB0
0x001BF8:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "(9999 G)") (var 210s) (var 200s))
    if !(bool (keyboard_check_pressed[]:int32 (var 13s))) goto 0x001CC0
0x001C78:
    self.buffer = 3s
    if !(== self.sellpos 8s) goto 0x001CA8
0x001C98:
    self.sellmenu = 0s
    goto 0x001CC0
0x001CA8:
    self.sellmenu = 2s
    self.sellpos2 = 0s
0x001CC0:
    if !(== self.sellmenu 2s) goto 0x001EF8
0x001CD4:
    self.buffer = (- self.buffer 1s)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    push "Really sell Ninechara for "
    call (draw_text[]:int32 (+ (+ -1s (string[]:int32 (int32 self.sellpos):value)) "G?") (var 150s) (var 55s))
    call (draw_text[]:int32 (var "Yes") (var 180s) (var 80s))
    call (draw_text[]:int32 (var "No") (var 180s) (var 190s))
    call (draw_sprite[]:int32 (var 185s) (+ 65s (* self.sellpos2 110s)) (var 0s) (var 49s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "(9999 G)") (var 210s) (var 200s))
    if (bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x001E68
0x001E50:
    push (bool (keyboard_check_pressed[]:int32 (var 39s)))
    goto 0x001E6C
0x001E68:
    push 1s
0x001E6C:
    if !pop goto 0x001EA0
0x001E70:
    if !(== self.sellpos2 0s) goto 0x001E94
0x001E84:
    self.sellpos2 = 1s
    goto 0x001EA0
0x001E94:
    self.sellpos2 = 0s
0x001EA0:
    if !(bool (keyboard_check_pressed[]:int32 (var 13s))) goto 0x001ECC
0x001EB8:
    push (<= self.buffer 0s)
    goto 0x001ED0
0x001ECC:
    push 0s
0x001ED0:
    if !pop goto 0x001EF8
0x001ED4:
    if !(== self.sellpos2 1s) goto 0x001EF8
0x001EE8:
    self.sellmenu = 1s
    goto 0x001EF8
0x001EF8:
    push -5s
    if !(== 276s:flag 1s) goto 0x001F58
0x001F14:
    call (draw_sprite[]:int32 (+ 1s self.bodyy) (+ (+ 99s self.bodyx) 37s) (var 0s) (var 887s))
0x001F58:
    exit
