0x000000:
    self.myx = self.writingx
    self.myy = self.writingy
    self.n = 1s
    if !(< self.n (+ self.stringpos 1s)) goto 0x0010DC
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
    if !(== (string_char_at[]:int32 self.n self.originalstring) "\\") goto 0x0007B4
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
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "P") goto 0x00034C
0x00033C:
    self.mycolor = 16711935
0x00034C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "C") goto 0x0003FC
0x00037C:
    if !(== global.inbattle 0s) goto 0x0003FC
0x000390:
    if !(== (instance_exists[]:int32 (var 783s)) 0s) goto 0x0003D4
0x0003AC:
    self.choicer = (instance_create[]:int32 (var 783s) (var 0s) (var 0s))
0x0003D4:
    push self.id
    stog.creator* = (int32 self.choicer)
    self.halt = 5s
0x0003FC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "M") goto 0x00047C
0x00042C:
    stog.flag[20s] = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    self.n = (+ self.n 1s)
0x00047C:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "E") goto 0x0004F4
0x0004AC:
    global.faceemotion = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    self.n = (+ self.n 1s)
0x0004F4:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "F") goto 0x000578
0x000524:
    global.facechoice = (real[]:int32 (string_char_at[]:int32 (+ self.n 2s) self.originalstring))
    global.facechange = 1s
    self.n = (+ self.n 1s)
0x000578:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "T") goto 0x00079C
0x0005A8:
    self.newtyper = (string_char_at[]:int32 (+ self.n 2s) self.originalstring)
    if !(== self.newtyper "T") goto 0x0005F4
0x0005E8:
    global.typer = 4s
0x0005F4:
    if !(== self.newtyper "t") goto 0x000618
0x00060C:
    global.typer = 48s
0x000618:
    if !(== self.newtyper "0") goto 0x00063C
0x000630:
    global.typer = 5s
0x00063C:
    if !(== self.newtyper "S") goto 0x000660
0x000654:
    global.typer = 10s
0x000660:
    if !(== self.newtyper "f") goto 0x000684
0x000678:
    global.typer = 9s
0x000684:
    if !(== self.newtyper "F") goto 0x0006A8
0x00069C:
    global.typer = 16s
0x0006A8:
    if !(== self.newtyper "s") goto 0x0006CC
0x0006C0:
    global.typer = 17s
0x0006CC:
    if !(== self.newtyper "P") goto 0x0006F0
0x0006E4:
    global.typer = 18s
0x0006F0:
    if !(== self.newtyper "M") goto 0x000714
0x000708:
    global.typer = 27s
0x000714:
    if !(== self.newtyper "U") goto 0x000738
0x00072C:
    global.typer = 37s
0x000738:
    if !(== self.newtyper "A") goto 0x00075C
0x000750:
    global.typer = 47s
0x00075C:
    call (script_execute[]:int32 global.typer (var 150s))
    global.facechange = 1s
    self.n = (+ self.n 1s)
0x00079C:
    self.n = (+ self.n 2s)
0x0007B4:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "/") goto 0x0008D8
0x0007DC:
    self.halt = 1s
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x000824
0x000818:
    self.halt = 2s
0x000824:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "^") goto 0x000884
0x000854:
    push (!= (string_char_at[]:int32 (+ self.n 2s) self.originalstring) "0")
    goto 0x000888
0x000884:
    push 0s
0x000888:
    if !pop goto 0x000898
0x00088C:
    self.halt = 4s
0x000898:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "*") goto 0x0008D4
0x0008C8:
    self.halt = 6s
0x0008D4:
    goto 0x0010DC
0x0008D8:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "%") goto 0x0009DC
0x000900:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x000940
0x000930:
    call (instance_destroy[]:int32 )
    goto 0x0010DC
0x000940:
    self.stringpos = 1s
    self.stringno = (+ self.stringno 1s)
    push -1s
    self.originalstring = (int32 self.stringno):mystring
    self.myx = self.writingx
    self.myy = self.writingy
    self.lineno = 0s
    stog.alarm[0s] = self.textspeed
    self.myletter = " "
    goto 0x0010DC
0x0009DC:
    if !(> self.myx self.writingxend) goto 0x000A08
0x0009F4:
    call (script_execute[]:int32 (var 148s))
0x000A08:
    self.myletter = (string_char_at[]:int32 self.n self.originalstring)
    if !(== global.typer 18s) goto 0x000C0C
0x000A3C:
    if (== self.myletter "l") goto 0x000A6C
0x000A54:
    push (== self.myletter "i")
    goto 0x000A70
0x000A6C:
    push 1s
0x000A70:
    if !pop goto 0x000A8C
0x000A74:
    self.myx = (+ self.myx 2s)
0x000A8C:
    if !(== self.myletter "I") goto 0x000ABC
0x000AA4:
    self.myx = (+ self.myx 2s)
0x000ABC:
    if !(== self.myletter "!") goto 0x000AEC
0x000AD4:
    self.myx = (+ self.myx 2s)
0x000AEC:
    if !(== self.myletter ".") goto 0x000B1C
0x000B04:
    self.myx = (+ self.myx 2s)
0x000B1C:
    if !(== self.myletter "S") goto 0x000B4C
0x000B34:
    self.myx = (+ self.myx 1s)
0x000B4C:
    if !(== self.myletter "?") goto 0x000B7C
0x000B64:
    self.myx = (+ self.myx 2s)
0x000B7C:
    if !(== self.myletter "D") goto 0x000BAC
0x000B94:
    self.myx = (+ self.myx 1s)
0x000BAC:
    if !(== self.myletter "A") goto 0x000BDC
0x000BC4:
    self.myx = (+ self.myx 1s)
0x000BDC:
    if !(== self.myletter "'") goto 0x000C0C
0x000BF4:
    self.myx = (+ self.myx 1s)
0x000C0C:
    call (draw_set_font[]:int32 self.myfont)
    call (draw_set_color[]:int32 self.mycolor)
    if !(> self.shake 38s) goto 0x000EF4
0x000C48:
    if !(== self.shake 39s) goto 0x000CB0
0x000C5C:
    self.direction = (+ self.direction 10s)
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x000CB0:
    if !(== self.shake 40s) goto 0x000D00
0x000CC4:
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x000D00:
    if !(== self.shake 41s) goto 0x000D98
0x000D14:
    self.direction = (+ self.direction (* 10s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 10s self.n))
0x000D98:
    if !(== self.shake 42s) goto 0x000E30
0x000DAC:
    self.direction = (+ self.direction (* 20s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 20s self.n))
0x000E30:
    if !(== self.shake 43s) goto 0x000EF0
0x000E44:
    self.direction = (+ self.direction (* 30s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy (* self.vspeed 0.7d)) (+ (+ self.myx (* self.hspeed 0.7d)) 10s))
    self.direction = (- self.direction (* 30s self.n))
0x000EF0:
    goto 0x001088
0x000EF4:
    if (== global.typer 70s) goto 0x000F6C
0x000F08:
    if (== global.typer 71s) goto 0x000F6C
0x000F1C:
    if (== global.typer 74s) goto 0x000F6C
0x000F30:
    if (== global.typer 75s) goto 0x000F6C
0x000F44:
    if (== global.typer 76s) goto 0x000F6C
0x000F58:
    push (== global.typer 77s)
    goto 0x000F70
0x000F6C:
    push 1s
0x000F70:
    if !pop goto 0x00100C
0x000F74:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) self.myletter (+ self.myy (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (+ self.myx (- (random[]:int32 self.shake) (/ self.shake (double 2s)))))
    goto 0x001088
0x00100C:
    call (draw_text[]:int32 self.myletter (+ self.myy (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (+ self.myx (- (random[]:int32 self.shake) (/ self.shake (double 2s)))))
0x001088:
    self.myx = (+ self.myx self.spacing)
    self.n = (+ self.n self.nskip)
    self.n = (+ self.n 1s)
    goto 0x00002C
0x0010DC:
    exit
