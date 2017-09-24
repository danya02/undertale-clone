0x000000:
    if !(> self.stringln (- self.at 1s)) goto 0x0000EC
0x000020:
    self.tchar = (string_char_at[]:int32 self.at self.string0)
    self.string1 = (+ self.string1 self.tchar)
    self.at = (+ self.at 1s)
    stog.alarm[1s] = self.typespeed
    if !(!= self.tchar " ") goto 0x0000EC
0x0000A4:
    call (caster_stop[]:int32 self.w_sfx)
    call (caster_play[]:int32 (var 1.15d) (var 0.9d) self.w_sfx)
0x0000EC:
    exit
