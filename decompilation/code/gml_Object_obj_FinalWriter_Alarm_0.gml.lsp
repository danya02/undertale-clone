0x000000:
    self.stringln = (string_length[]:int32 self.string0)
    self.string1 = ""
    self.tchar = (string_char_at[]:int32 self.at self.string0)
    self.string1 = (+ self.string1 self.tchar)
    self.at = (+ self.at 1s)
    stog.alarm[1s] = self.typespeed
    self.active = 1s
    if !(!= self.tchar " ") goto 0x0000E0
0x0000B8:
    call (snd_stop[]:int32 (var 85s))
    call (snd_play[]:int32 (var 85s))
0x0000E0:
    exit
