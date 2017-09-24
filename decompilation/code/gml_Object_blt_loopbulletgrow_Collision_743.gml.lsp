0x000000:
    self.hit = 1s
    if !(== self.blue 1s) goto 0x000040
0x000020:
    if !(== (scr_blueat[]:int32 ) 0s) goto 0x000040
0x000034:
    self.hit = 0s
0x000040:
    if !(< global.invc 1s) goto 0x000068
0x000054:
    push (== self.hit 1s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x000178
0x000070:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    self.dmgamt = (- self.dmgamt 1s)
    if !(< self.dmgamt 1s) goto 0x0000E4
0x0000D8:
    self.dmgamt = 1s
0x0000E4:
    global.hp = (- global.hp self.dmgamt)
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
    global.invc = global.inv
0x000178:
    exit
