0x000000:
    self.num = (+ self.num 1s)
    if !(> self.phraselength self.num) goto 0x000074
0x000030:
    self.this_phrase = (+ self.this_phrase (string_char_at[]:int32 self.num self.phrase))
    stog.alarm[2s] = 2s
    goto 0x000080
0x000074:
    self.done = 1s
0x000080:
    exit
