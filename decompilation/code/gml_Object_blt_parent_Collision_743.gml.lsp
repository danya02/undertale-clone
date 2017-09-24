0x000000:
    if !(< global.invc 1s) goto 0x000158
0x000014:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 1s) goto 0x000070
0x000064:
    self.dmgamt = 1s
0x000070:
    global.hp = (- global.hp self.dmgamt)
    if !(< global.hp 0s) goto 0x0000AC
0x0000A0:
    global.hp = 0s
0x0000AC:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
    global.invc = global.inv
    if !(== global.battlegroup 22s) goto 0x000158
0x000138:
    if !(< global.hp 1s) goto 0x000158
0x00014C:
    [obj_torielboss].sprite_index = 726s
0x000158:
    exit
