0x000000:
    self.bb = 1s
    if !(== self.blue 1s) goto 0x000080
0x000020:
    if (!= 743.xprevious 743.x) goto 0x000050
0x000038:
    push (!= 743.yprevious 743.y)
    goto 0x000054
0x000050:
    push 1s
0x000054:
    if !pop goto 0x000068
0x000058:
    self.bb = 1s
    goto 0x000080
0x000068:
    self.bb = 0s
    self.blut = 2s
0x000080:
    if !(< global.invc 1s) goto 0x0000A8
0x000094:
    push (== self.bb 1s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x000194
0x0000B0:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 1s) goto 0x00010C
0x000100:
    self.dmgamt = 1s
0x00010C:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = global.inv
0x000194:
    exit
