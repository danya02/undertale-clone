0x000000:
    if !(== self.intangible 0s) goto 0x000118
0x000014:
    if !(< global.invc 1s) goto 0x000118
0x000028:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 1s) goto 0x000084
0x000078:
    self.dmgamt = 1s
0x000084:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
    global.invc = global.inv
0x000118:
    exit
