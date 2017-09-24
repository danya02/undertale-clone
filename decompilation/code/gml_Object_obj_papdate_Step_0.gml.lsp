0x000000:
    if !(bool (instance_exists[]:int32 (var 187s))) goto 0x00002C
0x000018:
    push (== self.textskip 1s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000040
0x000034:
    call (scr_textskip[]:int32 )
0x000040:
    if !(== self.cn -1s) goto 0x0000FC
0x000054:
    global.typer = 1s
    global.msc = 0s
    push -5s
    if !(== 66s:flag 1s) goto 0x0000A4
0x000088:
    stog.msg[0s] = "        DATING^1  START!^5 %%"
    goto 0x0000BC
0x0000A4:
    stog.msg[0s] = "        HANGOUT^1 START!^5 %%"
0x0000BC:
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    self.cn = 0s
0x0000FC:
    if !(== self.cn 0s) goto 0x00012C
0x000110:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000140
0x000134:
    self.face_index = 0s
0x000140:
    if !(== self.cn 0s) goto 0x000170
0x000154:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x000330
0x000178:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.datemusic)
    global.faceemotion = 0s
    global.facechoice = 0s
    global.msc = 0s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    stog.msg[0s] = "HERE WE ARE!^1!&"
    push -5s
    if !(== 66s:flag 1s) goto 0x000264
0x000238:
    push -5s
    stog.msg[(+ 0s:msg "ON OUR DATE!!/")] = 0s
    goto 0x00028C
0x000264:
    push -5s
    stog.msg[(+ 0s:msg "HANGING OUT!!/")] = 0s
0x00028C:
    stog.msg[1s] = "\\E3I'VE ACTUALLY&NEVER DONE THIS&BEFORE./"
    stog.msg[2s] = "\\E0BUT DON'T WORRY!!!/"
    stog.msg[3s] = "YOU CAN'T SPELL&'PREPARED' WITHOUT&SEVERAL LETTERS&FROM MY NAME!!!/%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 1s
0x000330:
    if !(== self.cn 1s) goto 0x000360
0x000344:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x0003D4
0x000368:
    pushenv (int32 self.blcon) 0x000384
0x000378:
    call (instance_destroy[]:int32 )
0x000384:
    popenv 0x000378
0x000388:
    global.facechoice = 5s
    self.image_index = 0s
    self.image_speed = 0.25d
    call (snd_play[]:int32 (var 47s))
    self.cn = 2s
0x0003D4:
    if !(== self.cn 2s) goto 0x0003FC
0x0003E8:
    push (>= self.image_index 2s)
    goto 0x000400
0x0003FC:
    push 0s
0x000400:
    if !pop goto 0x00043C
0x000404:
    self.image_speed = 0s
    self.image_index = 2s
    self.cn = 3s
    stog.alarm[2s] = 10s
0x00043C:
    if !(== self.cn 4s) goto 0x0006F0
0x000450:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    stog.msg[0s] = "I SNAGGED AN&OFFICIAL&"
    push -5s
    if !(== 66s:flag 1s) goto 0x0004F4
0x0004C8:
    push -5s
    stog.msg[(+ 0s:msg "DATING RULEBOOK")] = 0s
    goto 0x00051C
0x0004F4:
    push -5s
    stog.msg[(+ 0s:msg "HANGOUT GUIDEBOOK")] = 0s
0x00051C:
    push -5s
    stog.msg[(+ 0s:msg "&FROM THE LIBRARY!/")] = 0s
    stog.msg[1s] = "WE'RE READY TO&HAVE A GREAT&TIME!/"
    stog.msg[2s] = "\\F4 \\E8 %"
    stog.msg[3s] = "LET'S SEE.../"
    stog.msg[4s] = "\\XSTEP ONE..^1. PRESS&THE [ C ] KEY ON&YOUR KEYBOARD FOR&"
    push -5s
    if !(== 66s:flag 1s) goto 0x0005EC
0x0005C0:
    push -5s
    stog.msg[(+ 4s:msg "\"\\RDATING HUD\\X.\"/")] = 4s
    goto 0x000614
0x0005EC:
    push -5s
    stog.msg[(+ 4s:msg "\"\\RFRIENDSHIP HUD\\X.\"/")] = 4s
0x000614:
    if !(== self.joke 1s) goto 0x000664
0x000628:
    stog.msg[5s] = "\\E3I THINK YOU&ALREADY DID&THAT.../%%"
    self.cn = 6s
    stog.alarm[2s] = -1s
    goto 0x00068C
0x000664:
    push -5s
    stog.msg[(+ 4s:msg "%%")] = 4s
0x00068C:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 5.1d
0x0006F0:
    if !(== self.cn 5.1d) goto 0x0007DC
0x00070C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000788
0x000728:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000788
0x000740:
    pushenv (int32 self.blcon) 0x00075C
0x000750:
    call (instance_destroy[]:int32 )
0x00075C:
    popenv 0x000750
0x000760:
    if !(== self.joke 0s) goto 0x000788
0x000774:
    stog.alarm[2s] = 400s
0x000788:
    if !(== self.joke 1s) goto 0x0007DC
0x00079C:
    stog.msg[5s] = "\\E3I THINK YOU&ALREADY DID&THAT.../%%"
    self.cn = 4.3d
    stog.alarm[2s] = 90s
0x0007DC:
    if !(== self.cn 5.3d) goto 0x000810
0x0007F8:
    global.faceemotion = 0s
    self.cn = 6s
0x000810:
    if !(== self.cn 6.1d) goto 0x0008F0
0x00082C:
    stog.msg[0s] = "\\E3.../"
    stog.msg[1s] = "\\E3OKAY^1, FORGET IT./%%"
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 6s
0x0008F0:
    if !(< self.cn 5.2d) goto 0x000920
0x00090C:
    push (== self.joke 0s)
    goto 0x000924
0x000920:
    push 0s
0x000924:
    if !pop goto 0x000C24
0x000928:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 2s))) goto 0x000C24
0x000940:
    if !(== self.cn 5.1d) goto 0x0009C4
0x00095C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00098C
0x000974:
    pushenv 782s 0x000988
0x00097C:
    call (instance_destroy[]:int32 )
0x000988:
    popenv 0x00097C
0x00098C:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0009C4
0x0009A4:
    pushenv (int32 self.blcon) 0x0009C0
0x0009B4:
    call (instance_destroy[]:int32 )
0x0009C0:
    popenv 0x0009B4
0x0009C4:
    call (snd_play[]:int32 (var 110s))
    self.joke = 1s
    self.graph = (instance_create[]:int32 (var 165s) (var -20s) (var 256s))
    push 0.2d
    stog.friction* = (int32 self.graph)
    push 4s
    stog.vspeed* = (int32 self.graph)
    self.graph2 = (instance_create[]:int32 (var 164s) (var 64s) (var -440s))
    push 10s
    stog.hspeed* = (int32 self.graph2)
    push 0.1d
    stog.friction* = (int32 self.graph2)
    self.graph3 = (instance_create[]:int32 (var 168s) (var 160s) (var -460s))
    push 10s
    stog.hspeed* = (int32 self.graph3)
    push 0.1d
    stog.friction* = (int32 self.graph3)
    self.graph4 = (instance_create[]:int32 (var 163s) (var 256s) (var -420s))
    push 10s
    stog.hspeed* = (int32 self.graph4)
    push 0.1d
    stog.friction* = (int32 self.graph4)
    self.graph5 = (instance_create[]:int32 (var 167s) (var 80s) (var 980s))
    push -10s
    stog.hspeed* = (int32 self.graph5)
    push 0.1d
    stog.friction* = (int32 self.graph5)
    self.graph6 = (instance_create[]:int32 (var 166s) (var 244s) (var 1020s))
    push -10s
    stog.hspeed* = (int32 self.graph6)
    push 0.1d
    stog.friction* = (int32 self.graph6)
0x000C24:
    if !(== self.cn 6s) goto 0x000C54
0x000C38:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C58
0x000C54:
    push 0s
0x000C58:
    if !pop goto 0x000EB4
0x000C5C:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000C94
0x000C74:
    pushenv (int32 self.blcon) 0x000C90
0x000C84:
    call (instance_destroy[]:int32 )
0x000C90:
    popenv 0x000C84
0x000C94:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    if !(== self.joke 1s) goto 0x000D08
0x000CEC:
    stog.msg[0s] = "\\E0WOWIE!!^1!&I FEEL SO&INFORMED!!!/"
    goto 0x000D20
0x000D08:
    stog.msg[0s] = " %"
0x000D20:
    stog.msg[1s] = "I THINK WE'RE&READY FOR STEP&TWO!!!/"
    stog.msg[2s] = "\\F4 \\E8 %"
    stog.msg[3s] = "\"STEP TWO..^1.&ASK THEM&"
    push -5s
    if !(== 66s:flag 1s) goto 0x000DB0
0x000D84:
    push -5s
    stog.msg[(+ 3s:msg "ON A DATE.\"/")] = 3s
    goto 0x000DD8
0x000DB0:
    push -5s
    stog.msg[(+ 3s:msg "TO HANG OUT.\"/")] = 3s
0x000DD8:
    stog.msg[4s] = "\\E0A\\F0HEM!/"
    stog.msg[5s] = "\\E1HUMAN^1!&I^1, THE GREAT&PAPYRUS.../"
    push -5s
    if !(== 66s:flag 1s) goto 0x000E40
0x000E24:
    stog.msg[6s] = "WILL GO ON&A DATE WITH&YOU!!!/*"
    goto 0x000E58
0x000E40:
    stog.msg[6s] = "WILL HANG OUT&WITH YOU!!!/*"
0x000E58:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 7s
0x000EB4:
    if !(== self.cn 7s) goto 0x000EE4
0x000EC8:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000EE8
0x000EE4:
    push 0s
0x000EE8:
    if !pop goto 0x000FBC
0x000EEC:
    if !(== 782.stringno 6s) goto 0x000F14
0x000F00:
    push (!= 782.halt 0s)
    goto 0x000F18
0x000F14:
    push 0s
0x000F18:
    if !pop goto 0x000FBC
0x000F1C:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Yes             No       &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000FAC
0x000FA0:
    self.halt = 0s
0x000FAC:
    popenv 0x000FA0
0x000FB0:
    self.cn = 8s
0x000FBC:
    if !(== self.cn 8s) goto 0x000FE4
0x000FD0:
    push (== self.choicer 2s)
    goto 0x000FE8
0x000FE4:
    push 0s
0x000FE8:
    if !pop goto 0x0010B8
0x000FEC:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x001024
0x001004:
    pushenv (int32 self.blconwd) 0x001020
0x001014:
    call (instance_destroy[]:int32 )
0x001020:
    popenv 0x001014
0x001024:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001054
0x00103C:
    pushenv 782s 0x001050
0x001044:
    call (instance_destroy[]:int32 )
0x001050:
    popenv 0x001044
0x001054:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x00108C
0x00106C:
    pushenv (int32 self.blcon) 0x001088
0x00107C:
    call (instance_destroy[]:int32 )
0x001088:
    popenv 0x00107C
0x00108C:
    self.cn = 9s
    self.choicer = 0s
    stog.alarm[2s] = 10s
0x0010B8:
    if !(== self.cn 10s) goto 0x001244
0x0010CC:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    if !(== self.choice 0s) goto 0x001158
0x001124:
    global.faceemotion = 9s
    global.facechoice = 3s
    stog.msg[0s] = "R-REALLY??^1?&WOWIE!!!/"
    goto 0x001188
0x001158:
    global.faceemotion = 0s
    global.facechoice = 4s
    stog.msg[0s] = "FORTUNATELY^1, IT&ONLY SAYS TO&ASK!!!/"
0x001188:
    stog.msg[1s] = "\\E0I GUESS THAT&MEANS IT'S&TIME FOR PART&THREE!!!/"
    stog.msg[2s] = "\\F4 \\E8 %"
    stog.msg[3s] = "\"STEP THREE..^1.&PUT ON NICE&CLOTHES TO&SHOW YOU CARE!\"/"
    stog.msg[4s] = "\\E3.../%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 11s
0x001244:
    if !(== self.cn 11s) goto 0x001274
0x001258:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001278
0x001274:
    push 0s
0x001278:
    if !pop goto 0x001344
0x00127C:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0012B4
0x001294:
    pushenv (int32 self.blcon) 0x0012B0
0x0012A4:
    call (instance_destroy[]:int32 )
0x0012B0:
    popenv 0x0012A4
0x0012B4:
    self.datevolume = (- self.datevolume 0.02d)
    if !(< self.datevolume 0.05d) goto 0x00131C
0x0012F0:
    self.datevolume = 0s
    self.cn = 12s
    call (caster_stop[]:int32 self.datemusic)
0x00131C:
    call (caster_set_volume[]:int32 self.datevolume self.datemusic)
    self.joke = 0s
0x001344:
    if !(== self.cn 12s) goto 0x00141C
0x001358:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    global.facechoice = 0s
    stog.msg[0s] = "\\E3WAIT A SECOND./%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 13s
0x00141C:
    if !(== self.cn 13s) goto 0x00144C
0x001430:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001450
0x00144C:
    push 0s
0x001450:
    if !pop goto 0x001744
0x001454:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.datetense)
    self.cn = 14s
    stog.msg[0s] = "\"WEAR CLOTHING...\"/"
    stog.msg[1s] = "THAT THING ON&YOUR BODY.../"
    if !(== global.armor 4s) goto 0x0014E0
0x0014C8:
    stog.msg[1s] = "THAT BANDAGE&HANGING OFF&OF YOU.../"
0x0014E0:
    if !(== global.armor 12s) goto 0x00150C
0x0014F4:
    stog.msg[1s] = "THAT RIBBON IN&YOUR HAIR.../"
0x00150C:
    if !(== global.armor 15s) goto 0x001538
0x001520:
    stog.msg[1s] = "THAT BANDANNA&AROUND YOUR&HEAD.../"
0x001538:
    if !(== global.armor 24s) goto 0x001564
0x00154C:
    stog.msg[1s] = "THAT TUTU AROUND&YOUR WAIST.../"
0x001564:
    if !(== global.armor 44s) goto 0x001590
0x001578:
    stog.msg[1s] = "THOSE GLASSES ON&YOUR FACE.../"
0x001590:
    if !(== global.armor 46s) goto 0x0015BC
0x0015A4:
    stog.msg[1s] = "THAT APRON YOU&PUT ON.../"
0x0015BC:
    if !(== global.armor 48s) goto 0x0015E8
0x0015D0:
    stog.msg[1s] = "THAT COWBOY HAT&ON YOUR HEAD.../"
0x0015E8:
    if !(== global.armor 50s) goto 0x001614
0x0015FC:
    stog.msg[1s] = "THAT LOCKET&AROUND YOUR NECK./"
0x001614:
    stog.msg[2s] = "\\E1YOU'RE WEARING&CLOTHING RIGHT&NOW!!!/"
    stog.msg[3s] = "\\E3NOT ONLY THAT.../"
    stog.msg[4s] = "\\E1EARLIER TODAY^1,&YOU WERE ALSO&WEARING CLOTHING!/"
    stog.msg[5s] = "\\F3 \\E2 %"
    stog.msg[6s] = "NO..^1.&COULD IT BE???/"
    stog.msg[7s] = "\\F0 \\E1 %"
    push -5s
    if !(== 66s:flag 1s) goto 0x0016DC
0x0016C0:
    stog.msg[8s] = "YOU'VE WANTED TO&DATE ME FROM&THE VERY&BEGINNING!??/*"
    goto 0x0016F4
0x0016DC:
    stog.msg[8s] = "YOU'VE WANTED TO&HANG OUT WITH&ME FROM THE&VERY BEGINNING!??/*"
0x0016F4:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x001744:
    if !(== self.cn 14s) goto 0x001774
0x001758:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x001778
0x001774:
    push 0s
0x001778:
    if !pop goto 0x00184C
0x00177C:
    if !(== 782.stringno 8s) goto 0x0017A4
0x001790:
    push (!= 782.halt 0s)
    goto 0x0017A8
0x0017A4:
    push 0s
0x0017A8:
    if !pop goto 0x00184C
0x0017AC:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Yes             No       &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00183C
0x001830:
    self.halt = 0s
0x00183C:
    popenv 0x001830
0x001840:
    self.cn = 15s
0x00184C:
    if !(== self.cn 15s) goto 0x001874
0x001860:
    push (== self.choicer 2s)
    goto 0x001878
0x001874:
    push 0s
0x001878:
    if !pop goto 0x001964
0x00187C:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x0018B4
0x001894:
    pushenv (int32 self.blconwd) 0x0018B0
0x0018A4:
    call (instance_destroy[]:int32 )
0x0018B0:
    popenv 0x0018A4
0x0018B4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0018E4
0x0018CC:
    pushenv 782s 0x0018E0
0x0018D4:
    call (instance_destroy[]:int32 )
0x0018E0:
    popenv 0x0018D4
0x0018E4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001914
0x0018FC:
    pushenv 782s 0x001910
0x001904:
    call (instance_destroy[]:int32 )
0x001910:
    popenv 0x001904
0x001914:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x00194C
0x00192C:
    pushenv (int32 self.blcon) 0x001948
0x00193C:
    call (instance_destroy[]:int32 )
0x001948:
    popenv 0x00193C
0x00194C:
    self.cn = 16s
    self.choicer = 0s
0x001964:
    if !(== self.cn 16s) goto 0x001A9C
0x001978:
    call (caster_stop[]:int32 self.datetense)
    call (snd_play[]:int32 (var 51s))
    self.shudder = 10s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
    self.cn = 17s
    self.joke = 2s
    if !(bool (instance_exists[]:int32 (var 162s))) goto 0x001A9C
0x001A90:
    [obj_graphparent].die = 1s
0x001A9C:
    if !(== self.cn 18s) goto 0x001AD0
0x001AB0:
    self.cn = 19s
    stog.alarm[2s] = 20s
0x001AD0:
    if !(== self.cn 20s) goto 0x001D04
0x001AE4:
    self.cn = 20.1d
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    if !(== self.choice 0s) goto 0x001C04
0x001B50:
    stog.msg[0s] = "NO!!/"
    stog.msg[1s] = "YOU PLANNED IT&ALL!!!/"
    push -5s
    if !(== 66s:flag 1s) goto 0x001BD0
0x001B9C:
    stog.msg[2s] = "YOU'RE WAY BETTER&AT DATING THAN&I AM!!!/"
    stog.msg[3s] = "\\XN\\E6-NOOOO!!!&YOUR \\BDATING POWER\\X &...!!!/%%"
    goto 0x001C00
0x001BD0:
    stog.msg[2s] = "YOU'RE WAY BETTER&AT HANGING OUT&THAN I AM!!!/"
    stog.msg[3s] = "\\XN\\E6-NOOOO!!!&YOUR \\BFRIENDSHIP&POWER\\X!!!/%%"
0x001C00:
    goto 0x001CB4
0x001C04:
    stog.msg[0s] = "\\E3DESPITE THAT^1, YOU&CHOSE TO WEAR&CLOTHING TODAY^1, OF&ALL DAYS...?/"
    push -5s
    if !(== 66s:flag 1s) goto 0x001C6C
0x001C38:
    stog.msg[1s] = "\\E2WAS YOUR INTEREST&IN ME.../"
    stog.msg[3s] = "\\XN\\E6-NOOOO!!!&YOUR \\BDATING POWER\\X &...!!!/%%"
    goto 0x001C9C
0x001C6C:
    stog.msg[1s] = "\\E2WAS YOUR&FRIENDSHIP.../"
    stog.msg[3s] = "\\XN\\E6-NOOOO!!!&YOUR \\BFRIENDSHIP&POWER\\X!!!/%%"
0x001C9C:
    stog.msg[2s] = "\\F3PREDESTINED!?!?/"
0x001CB4:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x001D04:
    if !(== self.cn 20.1d) goto 0x001D3C
0x001D20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001D40
0x001D3C:
    push 0s
0x001D40:
    if !pop goto 0x001E98
0x001D44:
    push 64s
    stog.y* = (int32 self.friendgraph)
    push 50s
    stog.ideallength* = (int32 self.friendgraph)
    if !(== (instance_exists[]:int32 self.blcon) 1s) goto 0x001DB0
0x001D90:
    pushenv (int32 self.blcon) 0x001DAC
0x001DA0:
    call (instance_destroy[]:int32 )
0x001DAC:
    popenv 0x001DA0
0x001DB0:
    call (snd_play[]:int32 (var 51s))
    self.shudder = 10s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
    self.cn = 19.2d
0x001E98:
    if !(== self.cn 20.2d) goto 0x001EDC
0x001EB4:
    self.cn = 20.3d
    stog.alarm[2s] = 20s
0x001EDC:
    if !(== self.cn 21.3d) goto 0x001F14
0x001EF8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F18
0x001F14:
    push 0s
0x001F18:
    if !pop goto 0x001F8C
0x001F1C:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x001F54
0x001F34:
    pushenv (int32 self.blcon) 0x001F50
0x001F44:
    call (instance_destroy[]:int32 )
0x001F50:
    popenv 0x001F44
0x001F54:
    self.cn = 22s
    stog.alarm[2s] = 10s
    push -8s
    stog.vspeed* = (int32 self.friendgraph)
0x001F8C:
    if !(== self.cn 23s) goto 0x00207C
0x001FA0:
    self.cn = 24s
    global.typer = 22s
    global.faceemotion = 7s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    stog.msg[0s] = "NYEH!/"
    stog.msg[1s] = "NYEH HEH HEH!!!/%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x00207C:
    if !(== self.cn 24s) goto 0x0020AC
0x002090:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0020B0
0x0020AC:
    push 0s
0x0020B0:
    if !pop goto 0x0022DC
0x0020B4:
    self.cn = 25s
    call (caster_loop[]:int32 (var 1s) (var 0.85d) self.datefight)
    self.graph3 = (instance_create[]:int32 (var 168s) (var 160s) (var -100s))
    push 6s
    stog.hspeed* = (int32 self.graph3)
    push 0.1d
    stog.friction* = (int32 self.graph3)
    push 1s
    stog.tough* = (int32 self.graph3)
    stog.msg[0s] = "\\F0DON'T THINK YOU'VE&BESTED ME YET!/"
    stog.msg[1s] = "I^1, THE GREAT&PAPYRUS.../"
    push -5s
    if !(== 66s:flag 1s) goto 0x0021E4
0x0021B0:
    stog.msg[2s] = "HAVE NEVER BEEN&BEATEN AT DATING^1,&AND I NEVER WILL!/"
    stog.msg[7s] = "JUST IN CASE&SOMEBODY HAPPENS&TO ASK ME ON&A DATE!!!/"
    goto 0x002214
0x0021E4:
    stog.msg[2s] = "HAVE NEVER BEEN&BEATEN AT HANGING&OUT^1, AND I NEVER&WILL!/"
    stog.msg[7s] = "JUST IN CASE&SOMEONE WANTS&TO HANG OUT!/"
0x002214:
    stog.msg[3s] = "\\E0I CAN EASILY&KEEP UP WITH&YOU!!!/"
    stog.msg[4s] = "\\E1YOU SEE^1,&I^1, TOO^1, CAN WEAR&CLOTHING!!!/"
    stog.msg[5s] = "\\E3IN FACT.../"
    stog.msg[6s] = "\\E1I ALWAYS WEAR MY&\"SPECIAL\" CLOTHES&UNDERNEATH MY&REGULAR CLOTHES!!/"
    stog.msg[8s] = "\\E0BEHOLD!!!/%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0022DC:
    if !(== self.cn 25s) goto 0x00230C
0x0022F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002310
0x00230C:
    push 0s
0x002310:
    if !pop goto 0x00237C
0x002314:
    if !(== (instance_exists[]:int32 self.blcon) 1s) goto 0x002350
0x002330:
    pushenv (int32 self.blcon) 0x00234C
0x002340:
    call (instance_destroy[]:int32 )
0x00234C:
    popenv 0x002340
0x002350:
    self.hspeed = 20s
    stog.alarm[2s] = 30s
    self.cn = 26s
0x00237C:
    if !(== self.cn 27s) goto 0x0023C8
0x002390:
    global.facechoice = 1s
    self.hspeed = -20s
    self.cn = 28s
    stog.alarm[2s] = 30s
0x0023C8:
    if !(== self.cn 29s) goto 0x0023F8
0x0023DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0023FC
0x0023F8:
    push 0s
0x0023FC:
    if !pop goto 0x0024B8
0x002400:
    self.hspeed = 0s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.cn = 30s
    stog.msg[0s] = "\\E1NYEH!&WHAT DO YOU&THINK OF MY&SECRET STYLE!?!/*"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0024B8:
    if !(== self.cn 30s) goto 0x0024E8
0x0024CC:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0024EC
0x0024E8:
    push 0s
0x0024EC:
    if !pop goto 0x0025A4
0x0024F0:
    if !(!= 782.halt 0s) goto 0x0025A4
0x002504:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   I love it       I hate it&                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x002594
0x002588:
    self.halt = 0s
0x002594:
    popenv 0x002588
0x002598:
    self.cn = 31s
0x0025A4:
    if !(== self.cn 31s) goto 0x0025CC
0x0025B8:
    push (== self.choicer 2s)
    goto 0x0025D0
0x0025CC:
    push 0s
0x0025D0:
    if !pop goto 0x0026D0
0x0025D4:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x00260C
0x0025EC:
    pushenv (int32 self.blconwd) 0x002608
0x0025FC:
    call (instance_destroy[]:int32 )
0x002608:
    popenv 0x0025FC
0x00260C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00263C
0x002624:
    pushenv 782s 0x002638
0x00262C:
    call (instance_destroy[]:int32 )
0x002638:
    popenv 0x00262C
0x00263C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00266C
0x002654:
    pushenv 782s 0x002668
0x00265C:
    call (instance_destroy[]:int32 )
0x002668:
    popenv 0x00265C
0x00266C:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0026A4
0x002684:
    pushenv (int32 self.blcon) 0x0026A0
0x002694:
    call (instance_destroy[]:int32 )
0x0026A0:
    popenv 0x002694
0x0026A4:
    self.cn = 33s
    self.choicer = 0s
    stog.alarm[2s] = 10s
0x0026D0:
    if !(== self.cn 34s) goto 0x0027E4
0x0026E4:
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.cn = 35s
    stog.msg[0s] = "\\E6NO!!!/"
    if !(== self.choice 0s) goto 0x00277C
0x002760:
    stog.msg[1s] = "A GENUINE&COMPLIMENT...!!!/%%"
    goto 0x002794
0x00277C:
    stog.msg[1s] = "YOUR HONESTY...^1!&IT SHOWS HOW&MUCH YOU REALLY&CARE!!!/%%"
0x002794:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0027E4:
    if !(== self.cn 35s) goto 0x002814
0x0027F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002818
0x002814:
    push 0s
0x002818:
    if !pop goto 0x002980
0x00281C:
    push 64s
    stog.y* = (int32 self.friendgraph)
    push 0s
    stog.vspeed* = (int32 self.friendgraph)
    push 100s
    stog.ideallength* = (int32 self.friendgraph)
    if !(== (instance_exists[]:int32 self.blcon) 1s) goto 0x0028A0
0x002880:
    pushenv (int32 self.blcon) 0x00289C
0x002890:
    call (instance_destroy[]:int32 )
0x00289C:
    popenv 0x002890
0x0028A0:
    call (snd_play[]:int32 (var 51s))
    self.shudder = 10s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
    self.cn = 36s
0x002980:
    if !(== self.cn 37s) goto 0x0029F0
0x002994:
    self.cn = 38s
    self.datevolume = 1s
    stog.alarm[2s] = 20s
    if !(bool (instance_exists[]:int32 (var 168s))) goto 0x0029F0
0x0029D8:
    [obj_populationgraph].hspeed = -6s
    [obj_populationgraph].friction = 0s
0x0029F0:
    if !(== self.cn 39s) goto 0x002A88
0x002A04:
    self.datevolume = (- self.datevolume 0.02d)
    if !(< self.datevolume 0.05d) goto 0x002A6C
0x002A40:
    self.datevolume = 0s
    self.cn = 40s
    call (caster_stop[]:int32 self.datefight)
0x002A6C:
    call (caster_set_volume[]:int32 self.datevolume self.datefight)
0x002A88:
    if !(== self.cn 40s) goto 0x002BB4
0x002A9C:
    if !(bool (instance_exists[]:int32 (var 168s))) goto 0x002ACC
0x002AB4:
    pushenv 168s 0x002AC8
0x002ABC:
    call (instance_destroy[]:int32 )
0x002AC8:
    popenv 0x002ABC
0x002ACC:
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.cn = 41s
    stog.msg[0s] = "\\E3HOWEVER.../"
    stog.msg[1s] = "\\XY\\E0OU DON'T TRULY&UNDERSTAND THE\\R &HIDDEN POWER\\X OF&THIS OUTFIT!!!/"
    stog.msg[2s] = "\\E3THEREFORE.../%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x002BB4:
    if !(== self.cn 41s) goto 0x002BE4
0x002BC8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002BE8
0x002BE4:
    push 0s
0x002BE8:
    if !pop goto 0x002D34
0x002BEC:
    self.cn = 42s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.datetense)
    stog.msg[0s] = "\\E1WHAT YOU JUST&SAID IS INVALID!!!/"
    push -5s
    if !(== 66s:flag 1s) goto 0x002C68
0x002C50:
    stog.msg[1s] = "THIS DATE WON'T&ESCALATE ANY&FURTHER!!!/"
0x002C68:
    push -5s
    if !(== 66s:flag 0s) goto 0x002C9C
0x002C84:
    stog.msg[1s] = "THIS HANG-OUT&WON'T ESCALATE&ANY FURTHER!/"
0x002C9C:
    stog.msg[2s] = "\\X.\\E7.. UNLESS&YOU FIND \\RMY&SECRET\\X!!/"
    stog.msg[3s] = "BUT THAT WON'T&HAPPEN!!/%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push 80s
    stog.ideallength* = (int32 self.friendgraph)
0x002D34:
    if !(== self.cn 42s) goto 0x002D64
0x002D48:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002D68
0x002D64:
    push 0s
0x002D68:
    if !pop goto 0x002DBC
0x002D6C:
    self.textskip = 0s
    push -5s
    stog.idealborder[(+ 2s:idealborder 35s)] = 2s
    self.cn = 43s
    stog.alarm[2s] = 15s
0x002DBC:
    if !(== self.cn 44s) goto 0x002DEC
0x002DD0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002DF0
0x002DEC:
    push 0s
0x002DF0:
    if !pop goto 0x002F00
0x002DF4:
    push -8s
    stog.vspeed* = (int32 self.friendgraph)
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x002E44
0x002E24:
    pushenv (int32 self.blcon) 0x002E40
0x002E34:
    call (instance_destroy[]:int32 )
0x002E40:
    popenv 0x002E34
0x002E44:
    global.typer = 1s
    stog.msg[0s] = "* (Move and inspect with [Z].)"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x002EBC
0x002EB0:
    self.halt = 999s
0x002EBC:
    popenv 0x002EB0
0x002EC0:
    push (var 749s)
    call (instance_create[]:int32 -5s (- 2s:idealborder 30s) (var 320s))
    self.cn = 45s
0x002F00:
    if !(== self.cn 47s) goto 0x00307C
0x002F14:
    self.textskip = 1s
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x002F58
0x002F38:
    pushenv (int32 self.iii) 0x002F54
0x002F48:
    call (instance_destroy[]:int32 )
0x002F54:
    popenv 0x002F48
0x002F58:
    push -5s
    stog.idealborder[(- 2s:idealborder 35s)] = 2s
    self.cn = 48s
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    stog.msg[0s] = "\\E3MY HAT...?/"
    stog.msg[1s] = "\\E8MY HAT./"
    stog.msg[2s] = "\\E0MY HAT!/"
    stog.msg[3s] = "NYEH HEH HEH!/%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x00307C:
    if !(== self.cn 48s) goto 0x0030AC
0x003090:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0030B0
0x0030AC:
    push 0s
0x0030B0:
    if !pop goto 0x00310C
0x0030B4:
    pushenv (int32 self.blcon) 0x0030D0
0x0030C4:
    call (instance_destroy[]:int32 )
0x0030D0:
    popenv 0x0030C4
0x0030D4:
    self.haty = (- self.haty 1s)
    if !(< self.haty -23s) goto 0x00310C
0x003100:
    self.cn = 49s
0x00310C:
    if !(== self.cn 49s) goto 0x00322C
0x003120:
    self.cn = 50s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    stog.msg[0s] = "W-WELL THEN..^1.&YOU FOUND MY&SECRET!/"
    stog.msg[1s] = "I SUPPOSE I HAVE&NO CHOICE!/"
    stog.msg[2s] = "IT'S A PRESENT.../"
    stog.msg[3s] = "A PRESENT J-JUST&FOR YOU!!!/"
    stog.msg[4s] = "GO AHEAD^1!&OPEN IT!/*"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x00322C:
    if !(== self.cn 50s) goto 0x00325C
0x003240:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x003260
0x00325C:
    push 0s
0x003260:
    if !pop goto 0x003334
0x003264:
    if !(!= 782.halt 0s) goto 0x00328C
0x003278:
    push (== 782.stringno 3s)
    goto 0x003290
0x00328C:
    push 0s
0x003290:
    if !pop goto 0x003334
0x003294:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Open it         Don't    &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x003324
0x003318:
    self.halt = 0s
0x003324:
    popenv 0x003318
0x003328:
    self.cn = 51s
0x003334:
    if !(== self.cn 51s) goto 0x00335C
0x003348:
    push (== self.choicer 2s)
    goto 0x003360
0x00335C:
    push 0s
0x003360:
    if !pop goto 0x003460
0x003364:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x00339C
0x00337C:
    pushenv (int32 self.blconwd) 0x003398
0x00338C:
    call (instance_destroy[]:int32 )
0x003398:
    popenv 0x00338C
0x00339C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0033CC
0x0033B4:
    pushenv 782s 0x0033C8
0x0033BC:
    call (instance_destroy[]:int32 )
0x0033C8:
    popenv 0x0033BC
0x0033CC:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0033FC
0x0033E4:
    pushenv 782s 0x0033F8
0x0033EC:
    call (instance_destroy[]:int32 )
0x0033F8:
    popenv 0x0033EC
0x0033FC:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x003434
0x003414:
    pushenv (int32 self.blcon) 0x003430
0x003424:
    call (instance_destroy[]:int32 )
0x003430:
    popenv 0x003424
0x003434:
    self.cn = 52s
    self.choicer = 0s
    stog.alarm[2s] = 10s
0x003460:
    if !(== self.cn 53s) goto 0x003588
0x003474:
    global.typer = 22s
    self.cn = 54s
    if !(== self.choice 1s) goto 0x003588
0x0034A0:
    stog.msg[0s] = "\\E2YOU CAN'T EVEN&BRING YOURSELF TO&HARM MY DELICATE&WRAPPING??/"
    stog.msg[1s] = "\\E7N-NO..^1.&THAT TECHNIQUE!/"
    stog.msg[2s] = "\\E6IT'S TOO STRONG!/"
    stog.msg[3s] = "\\E7COUNTERATTACK^1!&I'LL OPEN THE&PRESENT MYSELF!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x003588:
    if !(== self.cn 54s) goto 0x0035B8
0x00359C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0035BC
0x0035B8:
    push 0s
0x0035BC:
    if !pop goto 0x003638
0x0035C0:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0035F8
0x0035D8:
    pushenv (int32 self.blcon) 0x0035F4
0x0035E8:
    call (instance_destroy[]:int32 )
0x0035F4:
    popenv 0x0035E8
0x0035F8:
    call (snd_play[]:int32 (var 108s))
    self.present = 1s
    self.cn = 55s
    stog.alarm[2s] = 30s
0x003638:
    if !(== self.cn 56s) goto 0x0036F8
0x00364C:
    self.cn = 57s
    stog.msg[0s] = "\\E0DO YOU KNOW WHAT&THIS IS?/*"
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0036F8:
    if !(== self.cn 57s) goto 0x003728
0x00370C:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x00372C
0x003728:
    push 0s
0x00372C:
    if !pop goto 0x0037E4
0x003730:
    if !(!= 782.halt 0s) goto 0x0037E4
0x003744:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Of course       No idea  &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0037D4
0x0037C8:
    self.halt = 0s
0x0037D4:
    popenv 0x0037C8
0x0037D8:
    self.cn = 58s
0x0037E4:
    if !(== self.cn 58s) goto 0x00380C
0x0037F8:
    push (== self.choicer 2s)
    goto 0x003810
0x00380C:
    push 0s
0x003810:
    if !pop goto 0x003910
0x003814:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x00384C
0x00382C:
    pushenv (int32 self.blconwd) 0x003848
0x00383C:
    call (instance_destroy[]:int32 )
0x003848:
    popenv 0x00383C
0x00384C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00387C
0x003864:
    pushenv 782s 0x003878
0x00386C:
    call (instance_destroy[]:int32 )
0x003878:
    popenv 0x00386C
0x00387C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0038AC
0x003894:
    pushenv 782s 0x0038A8
0x00389C:
    call (instance_destroy[]:int32 )
0x0038A8:
    popenv 0x00389C
0x0038AC:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x0038E4
0x0038C4:
    pushenv (int32 self.blcon) 0x0038E0
0x0038D4:
    call (instance_destroy[]:int32 )
0x0038E0:
    popenv 0x0038D4
0x0038E4:
    self.cn = 59s
    self.choicer = 0s
    stog.alarm[2s] = 10s
0x003910:
    if !(== self.cn 60s) goto 0x003AE0
0x003924:
    push -180s
    stog.x* = (int32 self.friendgraph)
    push 144s
    stog.y* = (int32 self.friendgraph)
    push 0s
    stog.vspeed* = (int32 self.friendgraph)
    call (caster_stop[]:int32 self.datetense)
    global.typer = 22s
    if !(== self.choice 0s) goto 0x003A04
0x0039A0:
    stog.msg[0s] = "\\E0\"SPAGHETTI.\"/"
    stog.msg[1s] = "\\E3THAT'S WHAT&YOU'RE THINKING^1,&ISN'T IT?/"
    stog.msg[2s] = "\\E0RIGHT!/"
    stog.msg[3s] = "\\E1BUT OH-SO WRONG!/%%"
    goto 0x003A4C
0x003A04:
    stog.msg[0s] = "\\E0NYEH HEH HEH^1!&THAT'S RIGHT./"
    stog.msg[1s] = "YOU HAVE NO IDEA!/"
    stog.msg[2s] = "\\E3THOUGH THIS&APPEARS TO BE&SPAGHETTI.../%%"
0x003A4C:
    self.cn = 61s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x003AE0:
    if !(== self.cn 61s) goto 0x003B10
0x003AF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003B14
0x003B10:
    push 0s
0x003B14:
    if !pop goto 0x003C98
0x003B18:
    push 10s
    stog.hspeed* = (int32 self.friendgraph)
    if !(> (int32 self.friendgraph):x 90s) goto 0x003B68
0x003B50:
    push 0s
    stog.hspeed* = (int32 self.friendgraph)
0x003B68:
    self.cn = 62s
    call (caster_loop[]:int32 (var 1s) (var 0.85d) self.datefight)
    stog.msg[0s] = "\\E1THIS AIN'T ANY&PLAIN OL' PASTA!/"
    stog.msg[1s] = "\\E0THIS IS AN&ARTISAN'S WORK!/"
    stog.msg[2s] = "\\E3SILKEN SPAGHETTI^1,&FINELY AGED IN&AN OAKEN CASK.../"
    stog.msg[3s] = "\\E0THEN COOKED BY&ME^1, MASTER CHEF&PAPYRUS!/"
    stog.msg[4s] = "\\E1HUMAN!!^1!&IT'S TIME TO&END THIS!!/"
    stog.msg[5s] = "THERE'S NO WAY&THIS CAN GO&ANY FURTHER!/"
    stog.msg[6s] = "EAT THIS^1!&MY ULTIMATE&TECHNIQUE!!!/*"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x003C98:
    if !(>= self.cn 61s) goto 0x003CE4
0x003CAC:
    if !(> (int32 self.friendgraph):x 70s) goto 0x003CE4
0x003CCC:
    push 0s
    stog.hspeed* = (int32 self.friendgraph)
0x003CE4:
    if !(== self.cn 62s) goto 0x003D14
0x003CF8:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x003D18
0x003D14:
    push 0s
0x003D18:
    if !pop goto 0x003E24
0x003D1C:
    if !(!= 782.halt 0s) goto 0x003D44
0x003D30:
    push (== 782.stringno 5s)
    goto 0x003D48
0x003D44:
    push 0s
0x003D48:
    if !pop goto 0x003E24
0x003D4C:
    if !(> (int32 self.friendgraph):x 90s) goto 0x003D84
0x003D6C:
    push 0s
    stog.hspeed* = (int32 self.friendgraph)
0x003D84:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Eat it          Refuse   &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x003E14
0x003E08:
    self.halt = 0s
0x003E14:
    popenv 0x003E08
0x003E18:
    self.cn = 63s
0x003E24:
    if !(== self.cn 63s) goto 0x003E4C
0x003E38:
    push (== self.choicer 2s)
    goto 0x003E50
0x003E4C:
    push 0s
0x003E50:
    if !pop goto 0x003FB0
0x003E54:
    if !(> (int32 self.friendgraph):x 90s) goto 0x003E8C
0x003E74:
    push 0s
    stog.hspeed* = (int32 self.friendgraph)
0x003E8C:
    if !(bool (instance_exists[]:int32 self.blconwd)) goto 0x003EC4
0x003EA4:
    pushenv (int32 self.blconwd) 0x003EC0
0x003EB4:
    call (instance_destroy[]:int32 )
0x003EC0:
    popenv 0x003EB4
0x003EC4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x003EF4
0x003EDC:
    pushenv 782s 0x003EF0
0x003EE4:
    call (instance_destroy[]:int32 )
0x003EF0:
    popenv 0x003EE4
0x003EF4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x003F24
0x003F0C:
    pushenv 782s 0x003F20
0x003F14:
    call (instance_destroy[]:int32 )
0x003F20:
    popenv 0x003F14
0x003F24:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x003F5C
0x003F3C:
    pushenv (int32 self.blcon) 0x003F58
0x003F4C:
    call (instance_destroy[]:int32 )
0x003F58:
    popenv 0x003F4C
0x003F5C:
    self.cn = 64s
    if !(== self.choice 1s) goto 0x003F90
0x003F7C:
    self.cn = 65.5d
0x003F90:
    self.choicer = 0s
    stog.alarm[2s] = 10s
0x003FB0:
    if !(== self.cn 65s) goto 0x004084
0x003FC4:
    self.cn = 66.5d
    global.typer = 1s
    stog.msg[0s] = "* (You take a small bite.)/"
    stog.msg[1s] = "* (Your face reflexively&  scrunches up.)/"
    stog.msg[2s] = "* (The taste is indescribable...)/%%"
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x004080
0x004074:
    self.halt = 0s
0x004080:
    popenv 0x004074
0x004084:
    if !(== self.cn 66.5d) goto 0x0040B8
0x0040A0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0040BC
0x0040B8:
    push 0s
0x0040BC:
    if !pop goto 0x004104
0x0040C0:
    self.face_index = 0s
    if !(> (int32 self.friendgraph):x 90s) goto 0x004104
0x0040EC:
    push 0s
    stog.hspeed* = (int32 self.friendgraph)
0x004104:
    if !(== self.cn 66.5d) goto 0x00413C
0x004120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004140
0x00413C:
    push 0s
0x004140:
    if !pop goto 0x004304
0x004144:
    global.typer = 22s
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x004188
0x004168:
    pushenv (int32 self.iii) 0x004184
0x004178:
    call (instance_destroy[]:int32 )
0x004184:
    popenv 0x004178
0x004188:
    self.cn = 67s
    if !(== self.choice 0s) goto 0x004208
0x0041A8:
    stog.msg[0s] = "\\E0WHAT A PASSIONATE&EXPRESSION!!!/"
    stog.msg[1s] = "\\E3YOU MUST REALLY&LOVE MY COOKING!/"
    stog.msg[2s] = "\\E2AND BY EXTENSION^1,&ME!!!/"
    stog.msg[3s] = "\\E6MAYBE EVEN MORE&THAN I DO!!!/%%"
0x004208:
    if !(== self.choice 1s) goto 0x00427C
0x00421C:
    stog.msg[0s] = "\\E3YOU MEAN.../"
    stog.msg[1s] = "\\E2YOU'RE LETTING ME&HAVE IT INSTEAD?/"
    stog.msg[2s] = "\\E2BECAUSE YOU KNOW&HOW MUCH I LOVE&PASTA.../"
    stog.msg[3s] = "\\E6IMPOSSIBLE!^1!&TAKING MY PRESENT&AND TURNING IT&AROUND ON ME!/%%"
0x00427C:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x004304:
    if !(== self.cn 67s) goto 0x004334
0x004318:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004338
0x004334:
    push 0s
0x004338:
    if !pop goto 0x00449C
0x00433C:
    self.cn = 68s
    push 100s
    stog.ideallength* = (int32 self.friendgraph)
    stog.msg[0s] = "AUGH!!^5!%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    call (snd_play[]:int32 (var 51s))
    self.shudder = 10s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
0x00449C:
    if !(== self.cn 69s) goto 0x004640
0x0044B0:
    self.cn = 70s
    push 120s
    stog.ideallength* = (int32 self.friendgraph)
    stog.msg[0s] = "URRRGH!!^5!%%"
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00451C
0x004504:
    pushenv 782s 0x004518
0x00450C:
    call (instance_destroy[]:int32 )
0x004518:
    popenv 0x00450C
0x00451C:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    call (snd_play[]:int32 (var 51s))
    self.shudder = 14s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
0x004640:
    if !(== self.cn 71s) goto 0x0047F8
0x004654:
    call (caster_stop[]:int32 self.datefight)
    self.cn = 72s
    push 999s
    stog.ideallength* = (int32 self.friendgraph)
    stog.msg[0s] = "NOOOOOOOO!!^4!%%"
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0046D4
0x0046BC:
    pushenv 782s 0x0046D0
0x0046C4:
    call (instance_destroy[]:int32 )
0x0046D0:
    popenv 0x0046C4
0x0046D4:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    call (snd_play[]:int32 (var 51s))
    self.shudder = 18s
    global.faceemotion = 6s
    stog.alarm[3s] = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    push 4s
    stog.vshake* = (int32 self.g)
    push 4s
    stog.hshake* = (int32 self.g)
    push 2s
    stog.shakespeed* = (int32 self.g)
0x0047F8:
    if !(== self.cn 73s) goto 0x004894
0x00480C:
    pushenv (int32 self.blcon) 0x004828
0x00481C:
    call (instance_destroy[]:int32 )
0x004828:
    popenv 0x00481C
0x00482C:
    self.cn = 74s
    self.g = (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    push 0.01d
    stog.tspeed* = (int32 self.g)
    stog.alarm[2s] = 110s
0x004894:
    if !(== self.cn 75s) goto 0x004B00
0x0048A8:
    push 999s
    stog.x* = (int32 self.friendgraph)
    self.papyrus = (caster_load[]:int32 (var "music/papyrus.ogg"))
    self.cn = 76s
    stog.view_wview[0s] = 320s
    stog.view_hview[0s] = 240s
    global.typer = 22s
    push -5s
    if !(== 66s:flag 1s) goto 0x0049FC
0x004938:
    stog.msg[0s] = "HUMAN^1.&IT'S CLEAR NOW./"
    stog.msg[1s] = "YOU'RE MADLY IN&LOVE WITH ME./"
    stog.msg[2s] = "EVERYTHING YOU DO^1.&EVERYTHING&YOU SAY./"
    stog.msg[3s] = "IT'S ALL BEEN&FOR MY SAKE./"
    stog.msg[4s] = "HUMAN^1. I WANT&YOU TO BE&HAPPY^1, TOO./"
    stog.msg[5s] = "IT'S TIME FOR ME&TO EXPRESS MY&FEELINGS./"
    stog.msg[6s] = "IT'S TIME THAT&I TOLD YOU./"
    stog.msg[7s] = "I^1, PAPYRUS.../%%"
    goto 0x004ABC
0x0049FC:
    stog.msg[0s] = "HUMAN^1.&IT'S CLEAR NOW./"
    stog.msg[1s] = "YOU'RE COMPLETELY&OBSESSED WITH ME./"
    stog.msg[2s] = "EVERYTHING YOU DO^1.&EVERYTHING&YOU SAY./"
    stog.msg[3s] = "IT'S ALL BEEN&FOR MY SAKE./"
    stog.msg[4s] = "HUMAN^1. I WANT&YOU TO BE&HAPPY^1,TOO./"
    stog.msg[5s] = "IT'S TIME FOR ME&TO EXPRESS MY&FEELINGS./"
    stog.msg[6s] = "IT'S TIME THAT&I TOLD YOU./"
    stog.msg[7s] = "\\E8I^1, PAPYRUS.../%%"
0x004ABC:
    self.myw = (instance_create[]:int32 (var 782s) (var 100s) (var 60s))
    push -100000
    stog.depth* = (int32 self.myw)
0x004B00:
    if !(== self.cn 76s) goto 0x004B30
0x004B14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004B34
0x004B30:
    push 0s
0x004B34:
    if !pop goto 0x004BB8
0x004B38:
    push 1s
    stog.image_alpha* = (int32 self.g)
    push -0.05d
    stog.tspeed* = (int32 self.g)
    self.cn = 77s
    stog.alarm[2s] = 20s
    stog.view_hview[0s] = 480s
    stog.view_wview[0s] = 640s
0x004BB8:
    if !(== self.cn 78s) goto 0x005184
0x004BCC:
    self.cn = 79s
    global.faceemotion = 8s
    push -5s
    if !(== 66s:flag 1s) goto 0x004F7C
0x004C00:
    stog.msg[0s] = "I.../"
    stog.msg[1s] = "UM.../"
    stog.msg[2s] = "\\E4BOY^1, IS IT HOT&IN HERE^1, OR IS&IT JUST ME??/"
    stog.msg[3s] = "\\E4.../"
    stog.msg[4s] = "\\E5OH^1, SHOOT./"
    stog.msg[5s] = "HUMAN^1, I.../"
    stog.msg[6s] = "I'M SORRY./"
    stog.msg[7s] = "I DON'T LIKE YOU&THE WAY YOU&LIKE ME./"
    stog.msg[8s] = "\\E4ROMANTICALLY^1,&I MEAN./"
    stog.msg[9s] = "\\E6I MEAN^1, I TRIED&VERY HARD TO!/"
    stog.msg[10s] = "\\E8I THOUGHT THAT&BECAUSE YOU&FLIRTED WITH ME.../"
    stog.msg[11s] = "THAT I WAS&SUPPOSED&TO GO ON A&DATE WITH YOU./"
    stog.msg[12s] = "\\E0THEN^1, ON THE DATE^1,&FEELINGS WOULD&BLOSSOM FORTH!!!/"
    stog.msg[13s] = "\\E2I WOULD BE ABLE&TO MATCH YOUR&PASSION FOR ME!/"
    stog.msg[14s] = "\\E4BUT ALAS..^1.&I^1, THE GREAT&PAPYRUS.../"
    stog.msg[15s] = "\\E5HAVE FAILED./"
    stog.msg[16s] = "I FEEL JUST THE&SAME AS BEFORE./"
    stog.msg[17s] = "AND INSTEAD^1, BY&DATING YOU.../"
    stog.msg[18s] = "I HAVE ONLY DRAWN&YOU DEEPER.../"
    stog.msg[19s] = "\\E6INTO YOUR INTENSE&LOVE FOR ME!/"
    stog.msg[20s] = "\\E5A DARK PRISON OF&PASSION^1, WITH NO&ESCAPE./"
    stog.msg[21s] = "HOW COULD I HAVE&DONE THIS TO MY&DEAR FRIEND...?/"
    stog.msg[22s] = ".../"
    stog.msg[23s] = "\\E6NO^1! WAIT^1!&THAT'S WRONG!/"
    stog.msg[24s] = "I CAN'T FAIL AT&ANYTHING!!!/"
    stog.msg[25s] = "\\E1HUMAN!!^1!&I'LL HELP YOU&THROUGH THESE&TRYING TIMES!!!/"
    stog.msg[26s] = "\\E0I'LL KEEP BEING&YOUR COOL&FRIEND.../"
    stog.msg[27s] = "\\E8AND ACT LIKE THIS&ALL NEVER&HAPPENED./"
    stog.msg[28s] = "\\E0AFTER ALL^1, YOU&ARE VERY GREAT./"
    stog.msg[29s] = "\\E5IT WOULD BE&TRAGIC TO LOSE&YOUR FRIENDSHIP./"
    stog.msg[30s] = "\\E0SO PLEASE..../"
    stog.msg[31s] = "\\E5DON'T CRY BECAUSE&I WON'T KISS YOU./"
    stog.msg[32s] = "\\E4BECAUSE^1, I DON'T&EVEN HAVE LIPS./"
    stog.msg[33s] = "\\E0AND HEY^1, SOMEDAY^1,&YOU'LL FIND&SOMEONE AS&GREAT AS ME./"
    stog.msg[34s] = "\\E8WELL, NO^1.&THAT'S NOT TRUE./"
    stog.msg[35s] = "\\E0BUT I'LL HELP YOU&SETTLE FOR&SECOND BEST!!!/"
    stog.msg[36s] = "NYEH HEH HEH&HEH HEH!!!/%%"
    goto 0x0050FC
0x004F7C:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.papyrus)
    global.faceemotion = 8s
    stog.msg[0s] = "\\E8HMM.../"
    stog.msg[1s] = "\\E0WELL^1, I'M FLATTERED&YOU CARE SO MUCH./"
    stog.msg[2s] = "\\E4BUT MAYBE COOL&IT A LITTLE BIT...?/"
    stog.msg[3s] = "\\E0YOU ARE A VERY&NICE PERSON./"
    stog.msg[4s] = "I'M GLAD WE'RE&FRIENDS./"
    stog.msg[5s] = "\\E8BUT^1, I THINK YOU&CAN REACH YOUR&MAX POTENTIAL,,,/"
    stog.msg[6s] = "\\E0IF YOU LIVE MORE&FOR YOUR OWN SAKE^1,&RATHER THAN JUST&FOR MINE./"
    stog.msg[7s] = "\\E8HMMM.../"
    stog.msg[8s] = "\\E0HEY^1, I KNOW THE&SOLUTION!!!/"
    stog.msg[9s] = "YOU SHOULD HANG&OUT WITH MY BOSS^1,&UNDYNE!!!/"
    stog.msg[10s] = "I THINK IF YOU&SPREAD YOUR FRIEND-&ENERGY OUT MORE.../"
    stog.msg[11s] = "YOU'LL HAVE A MORE&HEALTHY LIFESTYLE./"
    stog.msg[12s] = "YEAH!!^1!&LET'S BE FRIENDS&WITH UNDYNE!!!/"
    stog.msg[13s] = "NYEH HEH HEH&HEH HEH!!!/%%"
0x0050FC:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x005184:
    if !(== self.cn 79s) goto 0x0051B4
0x005198:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0051B8
0x0051B4:
    push 0s
0x0051B8:
    if !pop goto 0x005208
0x0051BC:
    pushenv (int32 self.blcon) 0x0051D8
0x0051CC:
    call (instance_destroy[]:int32 )
0x0051D8:
    popenv 0x0051CC
0x0051DC:
    self.cn = 80s
    self.hspeed = 15s
    stog.alarm[2s] = 60s
0x005208:
    if !(== self.cn 81s) goto 0x005248
0x00521C:
    self.hspeed = -30s
    self.cn = 82s
    stog.alarm[2s] = 30s
0x005248:
    if !(== self.cn 83s) goto 0x005388
0x00525C:
    self.hspeed = 0s
    stog.msg[0s] = "OH^1, AND IF YOU&EVER NEED TO&REACH ME.../"
    stog.msg[1s] = "\\XHERE'S MY \\RPHONE&NUMBER\\X./"
    stog.msg[2s] = "YOU CAN CALL&ME ANY TIME!/"
    stog.msg[3s] = "\\E4PLATONICALLY./"
    stog.msg[4s] = "\\E0WELL^1, GOTTA GO^1!&NYEH HEH HEH!/%%"
    call (scr_phoneget[]:int32 (var 210s))
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 84s
0x005388:
    if !(== self.cn 84s) goto 0x0053B8
0x00539C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0053BC
0x0053B8:
    push 0s
0x0053BC:
    if !pop goto 0x005418
0x0053C0:
    self.hspeed = 30s
    pushenv (int32 self.blcon) 0x0053E8
0x0053DC:
    call (instance_destroy[]:int32 )
0x0053E8:
    popenv 0x0053DC
0x0053EC:
    self.cn = 85s
    stog.alarm[2s] = 30s
    self.datevolume = 1s
0x005418:
    if !(== self.cn 86s) goto 0x0054AC
0x00542C:
    self.cn = 87s
    self.d = (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    push 0.03d
    stog.tspeed* = (int32 self.d)
    push 996s
    stog.sprite_index* = (int32 self.d)
    stog.alarm[2s] = 50s
0x0054AC:
    if !(== self.cn 87s) goto 0x005530
0x0054C0:
    self.datevolume = (- self.datevolume 0.03d)
    if !(< self.datevolume 0.04d) goto 0x005514
0x0054FC:
    self.datevolume = 0s
    self.cn = 88s
0x005514:
    call (caster_set_volume[]:int32 self.datevolume self.papyrus)
0x005530:
    if !(== self.cn 88s) goto 0x005650
0x005544:
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    stog.flag[88s] = 4s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.pd = (ini_read_real[]:int32 (var 0s) (var "PD") (var "Papyrus"))
    call (ini_write_real[]:int32 (+ self.pd 1s) (var "PD") (var "Papyrus"))
    call (ini_close[]:int32 )
    global.interact = 0s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 77s))
0x005650:
    exit
