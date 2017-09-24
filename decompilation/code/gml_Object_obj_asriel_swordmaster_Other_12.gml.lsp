0x000000:
    if !(> self.x (- self.thisx 80s)) goto 0x000080
0x000020:
    self.x = (- self.x 1s)
    if !(> self.x (- self.thisx 35s)) goto 0x000080
0x000058:
    stog.torsorot* = (+ (int32 self.king):torsorot 1s)
0x000080:
    push (int32 self.king)
    if !(> self.x (- self.thisx 70s)) goto 0x000100
0x0000A0:
    self.x = (- self.x 2s)
    if !(> self.x (- self.thisx 35s)) goto 0x000100
0x0000D8:
    stog.torsorot* = (+ (int32 self.king):torsorot 2s)
0x000100:
    push (int32 self.king)
    if !(> self.x (- self.thisx 60s)) goto 0x000180
0x000120:
    self.x = (- self.x 2s)
    if !(> self.x (- self.thisx 35s)) goto 0x000180
0x000158:
    stog.torsorot* = (+ (int32 self.king):torsorot 3s)
0x000180:
    push (int32 self.king)
    if !(> self.x (- self.thisx 40s)) goto 0x000200
0x0001A0:
    self.x = (- self.x 3s)
    if !(> self.x (- self.thisx 35s)) goto 0x000200
0x0001D8:
    stog.torsorot* = (+ (int32 self.king):torsorot 4s)
0x000200:
    push (int32 self.king)
    if !(> self.x (- self.thisx 20s)) goto 0x000238
0x000220:
    self.x = (- self.x 3s)
0x000238:
    if !(> self.x self.thisx) goto 0x000268
0x000250:
    self.x = (- self.x 4s)
0x000268:
    if !(> self.x (+ self.thisx 10s)) goto 0x0002A0
0x000288:
    self.x = (- self.x 4s)
0x0002A0:
    exit
