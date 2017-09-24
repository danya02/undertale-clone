0x000000:
    if !(< global.invc 1s) goto 0x000100
0x000014:
    self.hurted = 1s
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 1s) goto 0x00007C
0x000070:
    self.dmgamt = 1s
0x00007C:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = 45s
0x000100:
    exit
