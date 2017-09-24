0x000000:
    self.myx = self.writingx
    self.myy = self.writingy
    self.n = 1s
    if !(< self.n (+ self.stringpos 1s)) goto 0x001730
0x00004C:
    self.nskip = 0s
    if !(== (string_char_at[]:int32 self.n self.originalstring) "&") goto 0x0000AC
0x000080:
    call (script_execute[]:int32 (var 148s))
    self.n = (+ self.n 1s)
0x0000AC:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "^") goto 0x00012C
0x0000D4:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "0") goto 0x000114
0x000104:
    self.nskip = 1s
    goto 0x00012C
0x000114:
    self.n = (+ self.n 2s)
0x00012C:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "\\") goto 0x0009C8
0x000154:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "R") goto 0x000190
0x000184:
    self.mycolor = 255s
0x000190:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "G") goto 0x0001D0
0x0001C0:
    self.mycolor = 65280
0x0001D0:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "W") goto 0x000210
0x000200:
    self.mycolor = 16777215
0x000210:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "Y") goto 0x000250
0x000240:
    self.mycolor = 65535
0x000250:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "X") goto 0x00028C
0x000280:
    self.mycolor = 0s
0x00028C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "B") goto 0x0002CC
0x0002BC:
    self.mycolor = 16711680
0x0002CC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "O") goto 0x00030C
0x0002FC:
    self.mycolor = 4235519
0x00030C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "L") goto 0x00034C
0x00033C:
    self.mycolor = 16754964
0x00034C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "P") goto 0x00038C
0x00037C:
    self.mycolor = 16711935
0x00038C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "p") goto 0x0003CC
0x0003BC:
    self.mycolor = 13941759
0x0003CC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "C") goto 0x00047C
0x0003FC:
    if !(== global.inbattle 0s) goto 0x00047C
0x000410:
    if !(== (instance_exists[]:int32 (var 783s)) 0s) goto 0x000454
0x00042C:
    self.choicer = (instance_create[]:int32 (var 783s) (var 0s) (var 0s))
0x000454:
    push self.id
    stog.creator* = (int32 self.choicer)
    self.halt = 5s
0x00047C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "M") goto 0x0004FC
0x0004AC:
    stog.flag[20s] = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    self.n = (+ self.n 1s)
0x0004FC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "E") goto 0x000574
0x00052C:
    global.faceemotion = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    self.n = (+ self.n 1s)
0x000574:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "F") goto 0x0005F8
0x0005A4:
    global.facechoice = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    global.facechange = 1s
    self.n = (+ self.n 1s)
0x0005F8:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "T") goto 0x000840
0x000628:
    self.newtyper = (string_char_at[]:int32 (+ self.n 2s) self.originalstring)
    if !(== self.newtyper "T") goto 0x000674
0x000668:
    global.typer = 4s
0x000674:
    if !(== self.newtyper "t") goto 0x000698
0x00068C:
    global.typer = 48s
0x000698:
    if !(== self.newtyper "0") goto 0x0006BC
0x0006B0:
    global.typer = 5s
0x0006BC:
    if !(== self.newtyper "S") goto 0x0006E0
0x0006D4:
    global.typer = 10s
0x0006E0:
    if !(== self.newtyper "F") goto 0x000704
0x0006F8:
    global.typer = 16s
0x000704:
    if !(== self.newtyper "s") goto 0x000728
0x00071C:
    global.typer = 17s
0x000728:
    if !(== self.newtyper "P") goto 0x00074C
0x000740:
    global.typer = 18s
0x00074C:
    if !(== self.newtyper "M") goto 0x000770
0x000764:
    global.typer = 27s
0x000770:
    if !(== self.newtyper "U") goto 0x000794
0x000788:
    global.typer = 37s
0x000794:
    if !(== self.newtyper "A") goto 0x0007B8
0x0007AC:
    global.typer = 47s
0x0007B8:
    if !(== self.newtyper "a") goto 0x0007DC
0x0007D0:
    global.typer = 60s
0x0007DC:
    if !(== self.newtyper "R") goto 0x000800
0x0007F4:
    global.typer = 76s
0x000800:
    call (script_execute[]:int32 global.typer (var 150s))
    global.facechange = 1s
    self.n = (+ self.n 1s)
0x000840:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "z") goto 0x0009B0
0x000870:
    self.sym = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    self.sym_s = 837s
    if !(== self.sym 4s) goto 0x0008CC
0x0008C0:
    self.sym_s = 837s
0x0008CC:
    if !(== self.sym 4s) goto 0x000998
0x0008E0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.myy 10s) (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (+ self.myx (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (var 0s) self.sym_s)
0x000998:
    self.n = (+ self.n 1s)
0x0009B0:
    self.n = (+ self.n 2s)
0x0009C8:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "/") goto 0x000AEC
0x0009F0:
    self.halt = 1s
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x000A38
0x000A2C:
    self.halt = 2s
0x000A38:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "^") goto 0x000A98
0x000A68:
    push (!= (string_char_at[]:int32 (+ self.n 2s) self.originalstring) "0")
    goto 0x000A9C
0x000A98:
    push 0s
0x000A9C:
    if !pop goto 0x000AAC
0x000AA0:
    self.halt = 4s
0x000AAC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "*") goto 0x000AE8
0x000ADC:
    self.halt = 6s
0x000AE8:
    goto 0x001730
0x000AEC:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "%") goto 0x000BF0
0x000B14:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x000B54
0x000B44:
    call (instance_destroy[]:int32 )
    goto 0x001730
0x000B54:
    self.stringpos = 1s
    self.stringno = (+ self.stringno 1s)
    push -1s
    self.originalstring = (int32 self.stringno):mystring
    self.myx = self.writingx
    self.myy = self.writingy
    self.lineno = 0s
    stog.alarm[0s] = self.textspeed
    self.myletter = " "
    goto 0x001730
0x000BF0:
    if !(> self.myx self.writingxend) goto 0x000C1C
0x000C08:
    call (script_execute[]:int32 (var 148s))
0x000C1C:
    self.myletter = (string_char_at[]:int32 self.n self.originalstring)
    if !(== global.typer 18s) goto 0x000E20
0x000C50:
    if (== self.myletter "l") goto 0x000C80
0x000C68:
    push (== self.myletter "i")
    goto 0x000C84
0x000C80:
    push 1s
0x000C84:
    if !pop goto 0x000CA0
0x000C88:
    self.myx = (+ self.myx 2s)
0x000CA0:
    if !(== self.myletter "I") goto 0x000CD0
0x000CB8:
    self.myx = (+ self.myx 2s)
0x000CD0:
    if !(== self.myletter "!") goto 0x000D00
0x000CE8:
    self.myx = (+ self.myx 2s)
0x000D00:
    if !(== self.myletter ".") goto 0x000D30
0x000D18:
    self.myx = (+ self.myx 2s)
0x000D30:
    if !(== self.myletter "S") goto 0x000D60
0x000D48:
    self.myx = (+ self.myx 1s)
0x000D60:
    if !(== self.myletter "?") goto 0x000D90
0x000D78:
    self.myx = (+ self.myx 2s)
0x000D90:
    if !(== self.myletter "D") goto 0x000DC0
0x000DA8:
    self.myx = (+ self.myx 1s)
0x000DC0:
    if !(== self.myletter "A") goto 0x000DF0
0x000DD8:
    self.myx = (+ self.myx 1s)
0x000DF0:
    if !(== self.myletter "'") goto 0x000E20
0x000E08:
    self.myx = (+ self.myx 1s)
0x000E20:
    call (draw_set_font[]:int32 self.myfont)
    call (draw_set_color[]:int32 self.mycolor)
    if !(> self.shake 38s) goto 0x001108
0x000E5C:
    if !(== self.shake 39s) goto 0x000EC4
0x000E70:
    self.direction = (+ self.direction 10s)
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x000EC4:
    if !(== self.shake 40s) goto 0x000F14
0x000ED8:
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x000F14:
    if !(== self.shake 41s) goto 0x000FAC
0x000F28:
    self.direction = (+ self.direction (* 10s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 10s self.n))
0x000FAC:
    if !(== self.shake 42s) goto 0x001044
0x000FC0:
    self.direction = (+ self.direction (* 20s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 20s self.n))
0x001044:
    if !(== self.shake 43s) goto 0x001104
0x001058:
    self.direction = (+ self.direction (* 30s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy (* self.vspeed 0.7d)) (+ (+ self.myx (* self.hspeed 0.7d)) 10s))
    self.direction = (- self.direction (* 30s self.n))
0x001104:
    goto 0x001184
0x001108:
    call (draw_text[]:int32 self.myletter (+ self.myy (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (+ self.myx (- (random[]:int32 self.shake) (/ self.shake (double 2s)))))
0x001184:
    self.myx = (+ self.myx self.spacing)
    if !(== self.myfont 8s) goto 0x0012D4
0x0011B4:
    if !(== self.myletter "w") goto 0x0011E4
0x0011CC:
    self.myx = (+ self.myx 2s)
0x0011E4:
    if !(== self.myletter "m") goto 0x001214
0x0011FC:
    self.myx = (+ self.myx 2s)
0x001214:
    if !(== self.myletter "i") goto 0x001244
0x00122C:
    self.myx = (- self.myx 2s)
0x001244:
    if !(== self.myletter "l") goto 0x001274
0x00125C:
    self.myx = (- self.myx 2s)
0x001274:
    if !(== self.myletter "s") goto 0x0012A4
0x00128C:
    self.myx = (- self.myx 1s)
0x0012A4:
    if !(== self.myletter "j") goto 0x0012D4
0x0012BC:
    self.myx = (- self.myx 1s)
0x0012D4:
    if !(== self.myfont 9s) goto 0x0016F8
0x0012E8:
    if !(== self.myletter "D") goto 0x001318
0x001300:
    self.myx = (+ self.myx 1s)
0x001318:
    if !(== self.myletter "Q") goto 0x001348
0x001330:
    self.myx = (+ self.myx 3s)
0x001348:
    if !(== self.myletter "M") goto 0x001378
0x001360:
    self.myx = (+ self.myx 1s)
0x001378:
    if !(== self.myletter "L") goto 0x0013A8
0x001390:
    self.myx = (- self.myx 1s)
0x0013A8:
    if !(== self.myletter "K") goto 0x0013D8
0x0013C0:
    self.myx = (- self.myx 1s)
0x0013D8:
    if !(== self.myletter "C") goto 0x001408
0x0013F0:
    self.myx = (+ self.myx 1s)
0x001408:
    if !(== self.myletter ".") goto 0x001438
0x001420:
    self.myx = (- self.myx 3s)
0x001438:
    if !(== self.myletter "!") goto 0x001468
0x001450:
    self.myx = (- self.myx 3s)
0x001468:
    if (== self.myletter "O") goto 0x001498
0x001480:
    push (== self.myletter "W")
    goto 0x00149C
0x001498:
    push 1s
0x00149C:
    if !pop goto 0x0014B8
0x0014A0:
    self.myx = (+ self.myx 2s)
0x0014B8:
    if !(== self.myletter "I") goto 0x0014E8
0x0014D0:
    self.myx = (- self.myx 6s)
0x0014E8:
    if !(== self.myletter "T") goto 0x001518
0x001500:
    self.myx = (- self.myx 1s)
0x001518:
    if !(== self.myletter "P") goto 0x001548
0x001530:
    self.myx = (- self.myx 2s)
0x001548:
    if !(== self.myletter "R") goto 0x001578
0x001560:
    self.myx = (- self.myx 2s)
0x001578:
    if !(== self.myletter "A") goto 0x0015A8
0x001590:
    self.myx = (+ self.myx 1s)
0x0015A8:
    if !(== self.myletter "H") goto 0x0015D8
0x0015C0:
    self.myx = (+ self.myx 1s)
0x0015D8:
    if !(== self.myletter "B") goto 0x001608
0x0015F0:
    self.myx = (+ self.myx 1s)
0x001608:
    if !(== self.myletter "G") goto 0x001638
0x001620:
    self.myx = (+ self.myx 1s)
0x001638:
    if !(== self.myletter "F") goto 0x001668
0x001650:
    self.myx = (- self.myx 1s)
0x001668:
    if !(== self.myletter "?") goto 0x001698
0x001680:
    self.myx = (- self.myx 3s)
0x001698:
    if !(== self.myletter "'") goto 0x0016C8
0x0016B0:
    self.myx = (- self.myx 6s)
0x0016C8:
    if !(== self.myletter "J") goto 0x0016F8
0x0016E0:
    self.myx = (- self.myx 1s)
0x0016F8:
    self.n = (+ self.n self.nskip)
    self.n = (+ self.n 1s)
    goto 0x00002C
0x001730:
    exit
