0x000000:
    self.scoord = (+ self.scoord 1s)
    if !(<= self.scoord self.stringlength) goto 0x000060
0x000030:
    self.newstring = (+ self.newstring (string_char_at[]:int32 self.scoord self.sting))
    goto 0x00006C
0x000060:
    self.off = 1s
0x00006C:
    stog.alarm[2s] = 3s
    if !(== self.gggg 1s) goto 0x0000A8
0x000094:
    stog.alarm[2s] = 2s
0x0000A8:
    exit
