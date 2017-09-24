0x000000:
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x000060
0x000030:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x000064
0x000060:
    push 1s
0x000064:
    if !pop goto 0x0001E8
0x000068:
    if !(< global.invc 1s) goto 0x0001E8
0x00007C:
    self.hurted = 1s
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
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
    global.invc = global.inv
    if !(bool (instance_exists[]:int32 (var 219s))) goto 0x0001E8
0x000184:
    [obj_dogeparent].excited = 1s
    [obj_dogeparent].mercymod = -50s
    if !(bool (instance_exists[]:int32 (var 248s))) goto 0x0001E8
0x0001B4:
    [obj_movedogehead].excited = 1s
    push 90s
    push 248s
    stog.alarm[] = 0s
    push 2s
    push 248s
    stog.alarm[] = 1s
0x0001E8:
    exit
