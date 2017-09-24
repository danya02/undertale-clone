0x000000:
    if !(== global.debug 1s) goto 0x000054
0x000014:
    self.m_override = (+ self.m_override 1s)
    if !(>= self.m_override 5s) goto 0x000054
0x000040:
    stog.flag[26s] = 50s
0x000054:
    exit
