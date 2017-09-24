0x000000:
    if !(< self.stringpos (string_length[]:int32 self.originalstring)) goto 0x000320
0x000020:
    self.stringpos = (+ self.stringpos 1s)
    stog.alarm[0s] = self.textspeed
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x0000A8
0x000078:
    push (!= (string_char_at[]:int32 (+ self.stringpos 1s) self.originalstring) "0")
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x000100
0x0000B0:
    self.n = (real[]:int32 (string_char_at[]:int32 (+ self.stringpos 1s) self.originalstring))
    stog.alarm[0s] = (* self.n 10s)
0x000100:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "") goto 0x0002A0
0x000128:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) " ") goto 0x0002A0
0x000150:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "&") goto 0x0002A0
0x000178:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x0002A0
0x0001A0:
    if !(!= (string_char_at[]:int32 (- self.stringpos 1s) self.originalstring) "^") goto 0x0002A0
0x0001D0:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "\\") goto 0x0002A0
0x0001F8:
    if !(!= (string_char_at[]:int32 (- self.stringpos 1s) self.originalstring) "\\") goto 0x0002A0
0x000228:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "/") goto 0x0002A0
0x000250:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "%") goto 0x0002A0
0x000278:
    call (snd_stop[]:int32 self.txtsound)
    call (snd_play[]:int32 self.txtsound)
0x0002A0:
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "&") goto 0x0002E0
0x0002C8:
    self.stringpos = (+ self.stringpos 1s)
0x0002E0:
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "\\") goto 0x000320
0x000308:
    self.stringpos = (+ self.stringpos 2s)
0x000320:
    exit
