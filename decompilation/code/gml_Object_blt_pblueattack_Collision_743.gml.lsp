0x000000:
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x000060
0x000030:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x000064
0x000060:
    push 1s
0x000064:
    if !pop goto 0x000178
0x000068:
    if !(< global.invc 1s) goto 0x000178
0x00007C:
    global.turntimer = (- global.turntimer 40s)
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 1s) goto 0x0000F0
0x0000E4:
    self.dmgamt = 1s
0x0000F0:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = global.inv
0x000178:
    exit
