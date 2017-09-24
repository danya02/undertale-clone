0x000000:
    if !(== self.type 0s) goto 0x0001D8
0x000014:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 20s) (var 1s) (var 1s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 20s) (var 1s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 1s) (var 8s) (var 0s))
    global.firingrate = 10s
    global.turntimer = (- global.turntimer 30s)
0x0001D8:
    if !(== self.type 1s) goto 0x000468
0x0001EC:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 0s) (var 1s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 0s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 3s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 2s) (var 8s) (var 0s))
    global.firingrate = 8s
0x000468:
    if !(== self.type 2s) goto 0x000628
0x00047C:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 1s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 3s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 0s) (var 2s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 0s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 2s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 2s) (var 9s) (var 3s))
    global.firingrate = 12s
0x000628:
    if !(== self.type 3s) goto 0x000834
0x00063C:
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 1s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 3s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 16s) (var 1s) (var 2s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 13s) (var 0s) (var 1s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 13s) (var 0s) (var 3s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 1s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 3s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 1s) (var 8s) (var 1s))
    global.turntimer = (+ global.turntimer 10s)
    global.firingrate = 14s
0x000834:
    if !(== self.type 4s) goto 0x000C1C
0x000848:
    call (scr_sp[]:int32 (var 18s) (var 1s) (var 2s) (var 8s) (var 3s))
    call (scr_sp[]:int32 (var 18s) (var 1s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 15s) (var 1s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 15s) (var 1s) (var 2s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 14s) (var 1s) (var 2s) (var 9.5d) (var 3s))
    call (scr_sp[]:int32 (var 14s) (var 1s) (var 2s) (var 9.5d) (var 0s))
    call (scr_sp[]:int32 (var 13s) (var 1s) (var 2s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 13s) (var 1s) (var 2s) (var 10s) (var 0s))
    call (scr_sp[]:int32 (var 12s) (var 1s) (var 2s) (var 10.5d) (var 3s))
    call (scr_sp[]:int32 (var 12s) (var 1s) (var 2s) (var 10.5d) (var 0s))
    call (scr_sp[]:int32 (var 11s) (var 1s) (var 2s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 11s) (var 1s) (var 2s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 10s) (var 1s) (var 2s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 1s) (var 2s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 3s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 0s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 3s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 0s))
    global.firingrate = 14s
0x000C1C:
    if !(== self.type 5s) goto 0x000E5C
0x000C30:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 1s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 1s) (var 2s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 2s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 1s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 1s) (var 2s) (var 5s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 10s) (var 3s))
    global.firingrate = 15s
    global.turntimer = (- global.turntimer 10s)
0x000E5C:
    if !(== self.type 6s) goto 0x001104
0x000E70:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 11s) (var 0s))
    global.firingrate = 10s
    global.turntimer = (- global.turntimer 10s)
0x001104:
    if !(== self.type 7s) goto 0x001378
0x001118:
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 1s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 3s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 3s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 8s) (var 0s) (var 1s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 8s) (var 0s) (var 3s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 20s) (var 0s) (var 2s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 13s) (var 2s))
    global.firingrate = 14s
    global.turntimer = (+ global.turntimer 40s)
0x001378:
    if !(== self.type 8s) goto 0x0014E8
0x00138C:
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 30s) (var 0s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 30s) (var 1s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 30s) (var 1s) (var 2s) (var 13s) (var 2s))
    global.turntimer = (+ global.turntimer 10s)
    global.firingrate = 20s
0x0014E8:
    if !(== self.type 9s) goto 0x001858
0x0014FC:
    call (scr_sp[]:int32 (var 10s) (var 1s) (var 3s) (var 9s) (var 0s))
    call (scr_sp[]:int32 (var 15s) (var 1s) (var 1s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 1s) (var 1s) (var 9.5d) (var 0s))
    call (scr_sp[]:int32 (var 14s) (var 1s) (var 3s) (var 9.5d) (var 3s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 3s) (var 10s) (var 0s))
    call (scr_sp[]:int32 (var 13s) (var 1s) (var 1s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 1s) (var 11s) (var 0s))
    call (scr_sp[]:int32 (var 12s) (var 1s) (var 3s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 3s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 11s) (var 1s) (var 1s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 1s) (var 13s) (var 0s))
    call (scr_sp[]:int32 (var 18s) (var 1s) (var 3s) (var 13s) (var 3s))
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 2s) (var 13s) (var 0s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 3s))
    call (scr_sp[]:int32 (var 8s) (var 1s) (var 2s) (var 13s) (var 0s))
    call (scr_sp[]:int32 (var 9s) (var 1s) (var 2s) (var 13s) (var 3s))
    global.firingrate = 14s
0x001858:
    if !(== self.type 10s) goto 0x001B50
0x00186C:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 18s) (var 0s) (var 0s) (var 12s) (var 0s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 2s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 12s) (var 3s))
    global.firingrate = 9s
0x001B50:
    if !(== self.type 11s) goto 0x001DE0
0x001B64:
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 1s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 3s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 3s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 30s) (var 1s) (var 2s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 3s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 3s) (var 8s) (var 1s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 8s) (var 1s))
    global.firingrate = 20s
0x001DE0:
    if !(== self.type 12s) goto 0x001FEC
0x001DF4:
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 0s) (var 0s) (var 2s) (var 13s) (var 2s))
    global.firingrate = 18s
    global.turntimer = (+ global.turntimer 90s)
0x001FEC:
    if !(== self.type 13s) goto 0x00222C
0x002000:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 5s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 5s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 5s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 5s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 0s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 5s) (var 3s))
    call (scr_sp[]:int32 (var 10s) (var 0s) (var 2s) (var 8s) (var 0s))
    global.firingrate = 14s
    global.turntimer = (+ global.turntimer 30s)
0x00222C:
    if !(== self.type 14s) goto 0x002508
0x002240:
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 1s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 0s) (var 2s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 3s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 38s) (var 1s) (var 2s) (var 6s) (var 1s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 8s) (var 0s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 40s) (var 1s) (var 2s) (var 9s) (var 3s))
    call (scr_sp[]:int32 (var 4s) (var 0s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 4s) (var 1s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 4s) (var 0s) (var 3s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 25s) (var 1s) (var 1s) (var 13s) (var 2s))
    call (scr_sp[]:int32 (var 1s) (var 1s) (var 2s) (var 8s) (var 0s))
    call (scr_sp[]:int32 (var 15s) (var 0s) (var 2s) (var 8s) (var 0s))
    global.firingrate = 14s
    global.turntimer = (+ global.turntimer 50s)
0x002508:
    if !(== self.type 15s) goto 0x002934
0x00251C:
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 10s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 10.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 10.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 10.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 10.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 11.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 11.5d) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 1s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 2s) (var 12s) (var 3s))
    call (scr_sp[]:int32 (var 0s) (var 1s) (var 3s) (var 12s) (var 3s))
    global.firingrate = 9s
0x002934:
    exit
