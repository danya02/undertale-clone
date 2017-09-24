0x000000:
    if !(== self.rando 0s) goto 0x00032C
0x000014:
    self.garfield = (/ self.garfield 1.02d)
    self.randofactor = (/ self.randofactor 1.1d)
    if !(< self.randofactor 3s) goto 0x00008C
0x000068:
    self.randofactor = 3s
    self.finalrando = (+ self.finalrando 1s)
0x00008C:
    if !(> self.finalrando 12s) goto 0x0000AC
0x0000A0:
    self.randofactor = 2s
0x0000AC:
    if !(> self.finalrando 30s) goto 0x0000CC
0x0000C0:
    self.randofactor = 1s
0x0000CC:
    self.garfield = (- self.garfield 1s)
    if !(> self.finalrando 120s) goto 0x000104
0x0000F8:
    self.randofactor = -1s
0x000104:
    if !(== self.kingrando 1s) goto 0x00015C
0x000118:
    call (caster_set_pitch[]:int32 (/ (double 3s) (+ (/ self.garfield (double 20s)) 2.5d)) 1000.computersound)
0x00015C:
    stog.alarm[0s] = self.randofactor
    self.gg = (floor[]:int32 (random[]:int32 (var 7s)))
    if !(== self.gg 0s) goto 0x0001B8
0x0001A8:
    self.mygrey = 16711680
0x0001B8:
    if !(== self.gg 1s) goto 0x0001DC
0x0001CC:
    self.mygrey = 65535
0x0001DC:
    if !(== self.gg 2s) goto 0x000200
0x0001F0:
    self.mygrey = 65280
0x000200:
    if !(== self.gg 3s) goto 0x000224
0x000214:
    self.mygrey = 8388736
0x000224:
    if !(== self.gg 4s) goto 0x000248
0x000238:
    self.mygrey = 4235519
0x000248:
    if !(== self.gg 5s) goto 0x000268
0x00025C:
    self.mygrey = 255s
0x000268:
    if !(== self.gg 6s) goto 0x0002A4
0x00027C:
    self.mygrey = (make_color_rgb[]:int32 (var 100s) (var 100s) (var 255s))
0x0002A4:
    if !(== self.randofactor -1s) goto 0x00032C
0x0002B8:
    self.kingrando = 0s
    if (< self.y 120s) goto 0x0002EC
0x0002D8:
    push (>= self.y 160s)
    goto 0x0002F0
0x0002EC:
    push 1s
0x0002F0:
    if !pop goto 0x000304
0x0002F4:
    self.mygrey = 255s
    goto 0x00032C
0x000304:
    self.mygrey = (make_color_rgb[]:int32 (var 100s) (var 100s) (var 255s))
0x00032C:
    exit
