0x000000:
    if !(< self.x (- self.thisx 35s)) goto 0x000038
0x000020:
    self.x = (- self.thisx 35s)
0x000038:
    if !(> self.x (+ self.thisx 25s)) goto 0x000070
0x000058:
    self.x = (+ self.thisx 25s)
0x000070:
    [obj_asriel_body].x = self.x
    [obj_asriel_body].y = self.y
    pushenv (int32 self.king) 0x0000E8
0x0000A0:
    self.torsorot = (* self.torsorot 0.7d)
    if !(<= (abs[]:int32 self.torsorot) 1s) goto 0x0000E8
0x0000DC:
    self.torsorot = 0s
0x0000E8:
    popenv 0x0000A0
0x0000EC:
    if !(> self.freakcon 0s) goto 0x0002E4
0x000100:
    if !(== self.freakcon 1s) goto 0x000158
0x000114:
    self.ftimer = 0s
    self.hy = 20s
    self.fhy = 90s
    self.freakcon = 2s
    call (event_user[]:int32 (var 7s))
0x000158:
    if !(== self.freakcon 2s) goto 0x000220
0x00016C:
    self.fhy = (* self.fhy 0.8d)
    push (- (/ self.fhy (double 5s)) 18s)
    stog.heady* = (int32 self.king)
    stog.headrot* = (- (int32 self.king):headrot self.fhy)
    self.ftimer = (+ self.ftimer 1s)
    if !(> self.ftimer 34s) goto 0x000220
0x000214:
    push (int32 self.king)
    self.freakcon = 3s
0x000220:
    if !(== self.freakcon 3s) goto 0x0002E4
0x000234:
    stog.alarm[6s] = 20s
    self.y = (+ self.y 2s)
    stog.heady* = (+ (int32 self.king):heady 8s)
    stog.image_alpha* = (- (int32 self.king):image_alpha 0.1d)
    if !(== (int32 self.king):image_alpha 0s) goto 0x0002E4
0x0002D8:
    push (int32 self.king)
    push (int32 self.king)
    self.freakcon = 4s
0x0002E4:
    exit
