0x000000:
    stog.scrollspeed[0s] = 0.1d
    stog.scrollspeed[1s] = 0.3d
    stog.scrollspeed[2s] = 0.5d
    stog.scrollspeed[3s] = 0.6d
    stog.scrollspeed[4s] = 0.7d
    stog.scrollspeed[5s] = 0.8d
    stog.scrollspeed[6s] = 0.9d
    self.i = 0s
    if !(< self.i 7s) goto 0x000244
0x0000E4:
    push -1s
    self.xxx = 0s:view_xview
    if !(> self.xxx (- self.room_width 320s)) goto 0x000134
0x00011C:
    self.xxx = (- self.room_width 320s)
0x000134:
    if !(>= self.xxx 0s) goto 0x000198
0x000148:
    push self.xxx
    stog.background_x[(int32 self.i)] = (floor[]:int32 (- self.xxx (* -1s (int32 self.i):scrollspeed)))
0x000198:
    self.gg = (- self.room_width 320s)
    if !(>= self.xxx (- self.room_width 320s)) goto 0x000228
0x0001D0:
    push 0s
    stog.background_x[(int32 self.i)] = (+ self.gg (floor[]:int32 (- self.gg (* -1s (int32 self.i):scrollspeed))))
0x000228:
    self.i = (+ self.i 1s)
    goto 0x0000D0
0x000244:
    exit
