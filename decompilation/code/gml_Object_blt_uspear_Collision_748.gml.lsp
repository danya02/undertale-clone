0x000000:
    if !(< global.invc 1s) goto 0x00019C
0x000014:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    self.dmgamt = 4s
    if !(> global.plot 110s) goto 0x000090
0x000070:
    if !(<= global.hp 10s) goto 0x000090
0x000084:
    self.dmgamt = 3s
0x000090:
    if !(< self.dmgamt (/ global.maxhp (double 7s))) goto 0x0000D8
0x0000B4:
    self.dmgamt = (floor[]:int32 (/ global.maxhp (double 7s)))
0x0000D8:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = (* global.inv 2s)
    if !(== global.battlegroup 22s) goto 0x00019C
0x00017C:
    if !(< global.hp 1s) goto 0x00019C
0x000190:
    [obj_torielboss].sprite_index = 726s
0x00019C:
    exit
