0x000000:
    if !(!= self.argument0 3s) goto 0x000148
0x000014:
    self.check = 1s
    if !(== self.argument0 1s) goto 0x0000B4
0x000034:
    self.check = 0s
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x0000A0
0x000070:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x0000A4
0x0000A0:
    push 1s
0x0000A4:
    if !pop goto 0x0000B4
0x0000A8:
    self.check = 1s
0x0000B4:
    if !(== self.argument0 2s) goto 0x000148
0x0000C8:
    self.check = 0s
    if !(< (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x000134
0x000104:
    push (< (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000148
0x00013C:
    self.check = 1s
0x000148:
    self.puredmg = self.dmg
    if !(> global.hp 20s) goto 0x000184
0x00016C:
    self.dmg = (+ self.dmg 1s)
0x000184:
    if !(>= global.hp 30s) goto 0x0001B0
0x000198:
    self.dmg = (+ self.dmg 1s)
0x0001B0:
    if !(>= global.hp 40s) goto 0x0001DC
0x0001C4:
    self.dmg = (+ self.dmg 1s)
0x0001DC:
    if !(>= global.hp 50s) goto 0x000208
0x0001F0:
    self.dmg = (+ self.dmg 1s)
0x000208:
    if !(>= global.hp 60s) goto 0x000234
0x00021C:
    self.dmg = (+ self.dmg 1s)
0x000234:
    if !(>= global.hp 70s) goto 0x000260
0x000248:
    self.dmg = (+ self.dmg 1s)
0x000260:
    if !(>= global.hp 80s) goto 0x00028C
0x000274:
    self.dmg = (+ self.dmg 1s)
0x00028C:
    if !(>= global.hp 90s) goto 0x0002B8
0x0002A0:
    self.dmg = (+ self.dmg 1s)
0x0002B8:
    if !(< global.invc 1s) goto 0x0002E0
0x0002CC:
    push (== self.check 1s)
    goto 0x0002E4
0x0002E0:
    push 0s
0x0002E4:
    if !pop goto 0x0004EC
0x0002E8:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt self.argument1) goto 0x00034C
0x00033C:
    self.dmgamt = self.argument1
0x00034C:
    if !(> self.argument2 0s) goto 0x000378
0x000360:
    push (> self.dmgamt self.argument2)
    goto 0x00037C
0x000378:
    push 0s
0x00037C:
    if !pop goto 0x000390
0x000380:
    self.dmgamt = self.argument2
0x000390:
    if !(> self.argument3 0s) goto 0x0003B4
0x0003A4:
    self.dmgamt = self.argument3
0x0003B4:
    if !(< self.dmgamt 1s) goto 0x0003D4
0x0003C8:
    self.dmgamt = 1s
0x0003D4:
    global.hp = (- global.hp self.dmgamt)
    if !(< global.hp 0s) goto 0x000410
0x000404:
    global.hp = 0s
0x000410:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    global.invc = global.inv
    if !(> self.argument4 0s) goto 0x0004B8
0x000490:
    global.invc = (* (/ self.argument4 (double 20s)) global.inv)
0x0004B8:
    if !(== global.battlegroup 22s) goto 0x0004EC
0x0004CC:
    if !(< global.hp 1s) goto 0x0004EC
0x0004E0:
    [obj_torielboss].sprite_index = 726s
0x0004EC:
    self.dmg = self.puredmg
0x0004FC:
    exit
