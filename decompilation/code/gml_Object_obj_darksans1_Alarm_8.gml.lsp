0x000000:
    self.lafftrax = (+ self.lafftrax 1s)
    if !(== self.lafftrax 1s) goto 0x000038
0x00002C:
    self.conversation = 21s
0x000038:
    if !(== self.lafftrax 2s) goto 0x000058
0x00004C:
    self.conversation = 23s
0x000058:
    exit
