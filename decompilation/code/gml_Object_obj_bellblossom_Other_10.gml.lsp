0x000000:
    self.blockon = 1s
    stog.block[(int32 self.blockno)] = self.block2
    self.blockno = (+ self.blockno 1s)
    if !(> self.blockno 3s) goto 0x000064
0x000058:
    self.blockno = 0s
0x000064:
    exit
