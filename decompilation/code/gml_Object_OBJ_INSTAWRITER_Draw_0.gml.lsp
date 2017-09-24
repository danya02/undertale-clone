0x000000:
    self.myx = self.writingx
    self.myy = self.writingy
    self.n = 1s
    if !(< self.n (+ self.stringpos 1s)) goto 0x000990
0x00004C:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "&") goto 0x0000A0
0x000074:
    call (script_execute[]:int32 (var 148s))
    self.n = (+ self.n 1s)
0x0000A0:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "^") goto 0x0000E0
0x0000C8:
    self.n = (+ self.n 2s)
0x0000E0:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "\\") goto 0x000430
0x000108:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "R") goto 0x000144
0x000138:
    self.mycolor = 255s
0x000144:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "W") goto 0x000184
0x000174:
    self.mycolor = 16777215
0x000184:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "X") goto 0x0001C0
0x0001B4:
    self.mycolor = 0s
0x0001C0:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "Y") goto 0x000200
0x0001F0:
    self.mycolor = 65535
0x000200:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "G") goto 0x000240
0x000230:
    self.mycolor = 65280
0x000240:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "B") goto 0x000280
0x000270:
    self.mycolor = 16711680
0x000280:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "p") goto 0x0002C0
0x0002B0:
    self.mycolor = 13941759
0x0002C0:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "P") goto 0x000354
0x0002F0:
    call (script_execute[]:int32 (var 10s) (var 94s) (var 4s) (var 43s) (+ self.x 150s) self.y self.x (var 255s) (var 4s) (var 149s))
0x000354:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "C") goto 0x000418
0x000384:
    if !(== global.inbattle 0s) goto 0x0003F8
0x000398:
    if !(== (instance_exists[]:int32 (var 783s)) 0s) goto 0x0003DC
0x0003B4:
    self.choicer = (instance_create[]:int32 (var 783s) (var 0s) (var 0s))
0x0003DC:
    push self.id
    stog.creator* = (int32 self.choicer)
0x0003F8:
    if !(== global.inbattle 1s) goto 0x000418
0x00040C:
    self.halt = 5s
0x000418:
    self.n = (+ self.n 2s)
0x000430:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "/") goto 0x0004A4
0x000458:
    self.halt = 1s
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x0004A0
0x000494:
    self.halt = 2s
0x0004A0:
    goto 0x000990
0x0004A4:
    if !(== (string_char_at[]:int32 self.n self.originalstring) "%") goto 0x0005A8
0x0004CC:
    if !(== (string_char_at[]:int32 (+ self.n 1s) self.originalstring) "%") goto 0x00050C
0x0004FC:
    call (instance_destroy[]:int32 )
    goto 0x000990
0x00050C:
    self.stringpos = 1s
    self.stringno = (+ self.stringno 1s)
    push -1s
    self.originalstring = (int32 self.stringno):mystring
    self.myx = self.writingx
    self.myy = self.writingy
    self.lineno = 0s
    stog.alarm[0s] = self.textspeed
    self.myletter = " "
    goto 0x000990
0x0005A8:
    if !(> self.myx self.writingxend) goto 0x0005D4
0x0005C0:
    call (script_execute[]:int32 (var 148s))
0x0005D4:
    self.myletter = (string_char_at[]:int32 self.n self.originalstring)
    call (draw_set_font[]:int32 self.myfont)
    call (draw_set_color[]:int32 self.mycolor)
    if !(> self.shake 38s) goto 0x0008DC
0x000630:
    if !(== self.shake 39s) goto 0x000698
0x000644:
    self.direction = (+ self.direction 10s)
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x000698:
    if !(== self.shake 40s) goto 0x0006E8
0x0006AC:
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
0x0006E8:
    if !(== self.shake 41s) goto 0x000780
0x0006FC:
    self.direction = (+ self.direction (* 10s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 10s self.n))
0x000780:
    if !(== self.shake 42s) goto 0x000818
0x000794:
    self.direction = (+ self.direction (* 20s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy self.vspeed) (+ self.myx self.hspeed))
    self.direction = (- self.direction (* 20s self.n))
0x000818:
    if !(== self.shake 43s) goto 0x0008D8
0x00082C:
    self.direction = (+ self.direction (* 30s self.n))
    call (draw_text[]:int32 self.myletter (+ self.myy (* self.vspeed 0.7d)) (+ (+ self.myx (* self.hspeed 0.7d)) 10s))
    self.direction = (- self.direction (* 30s self.n))
0x0008D8:
    goto 0x000958
0x0008DC:
    call (draw_text[]:int32 self.myletter (+ self.myy (- (random[]:int32 self.shake) (/ self.shake (double 2s)))) (+ self.myx (- (random[]:int32 self.shake) (/ self.shake (double 2s)))))
0x000958:
    self.myx = (+ self.myx self.spacing)
    self.n = (+ self.n 1s)
    goto 0x00002C
0x000990:
    exit
