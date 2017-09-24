0x000000:
    self.soundbuffer = (+ self.soundbuffer 1s)
    if !(== global.mnfight 3s) goto 0x000038
0x00002C:
    self.attacked = 0s
0x000038:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001E0
0x000054:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000D8
0x000070:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000D8
0x0000A8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000D8:
    push -5s
    if !(== 1s:monster 1s) goto 0x00015C
0x0000F4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00015C
0x00012C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00015C:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001E0
0x000178:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001E0
0x0001B0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001E0:
    if !(== global.mnfight 1s) goto 0x000248
0x0001F4:
    if !(== self.talked 0s) goto 0x000248
0x000208:
    stog.alarm[5s] = 130s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000248:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002D4
0x000260:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002B8
0x00027C:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002B8
0x00029C:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002BC
0x0002B8:
    push 0s
0x0002BC:
    if !pop goto 0x0002D4
0x0002C0:
    stog.alarm[5s] = 2s
0x0002D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000338
0x0002F8:
    self.shudder = 1s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000338:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00038C
0x00035C:
    if !(== self.hurtsies 0s) goto 0x00038C
0x000370:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0003B4
0x000394:
    stog.alarm[7s] = 30s
    self.hurtsies = 1s
0x0003B4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000484
0x0003D8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00044C
0x000438:
    stog.alarm[2s] = 30s
0x00044C:
    popenv 0x000438
0x000450:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000484:
    if !(== global.mnfight 2s) goto 0x004624
0x000498:
    if !(== self.attacked 0s) goto 0x004624
0x0004AC:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 25s
    if !(== self.pop 3s) goto 0x000508
0x0004E8:
    global.firingrate = (* global.firingrate 2.4d)
0x000508:
    if !(== self.pop 2s) goto 0x00053C
0x00051C:
    global.firingrate = (* global.firingrate 1.7d)
0x00053C:
    if !(> self.con2 0s) goto 0x000568
0x000550:
    self.hp = (- self.hp 5s)
0x000568:
    if !(== self.con2 0s) goto 0x000B14
0x00057C:
    global.turntimer = 360s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 40s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 45s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 50s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 130s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 135s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 140s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 220s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 225s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 230s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    [blt_parent_noborder].side = 2s
    if (<= 6s 0) goto 0x000B10
0x000930:
    push 6s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 310s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 360s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 410s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x000930
0x000B10:
    push (- pop 1)
    pop
0x000B14:
    if !(== self.con2 2s) goto 0x001388
0x000B28:
    global.turntimer = 260s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 40s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 50s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 60s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 70s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 80s) -5s (- (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s)))) 20s))
    [blt_parent_noborder].side = 2s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (- 0s:idealborder 150s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (- 0s:idealborder 160s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (- 0s:idealborder 170s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (- 0s:idealborder 180s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (- 0s:idealborder 190s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (+ 1s:idealborder 270s))
    push 1s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (+ 1s:idealborder 280s))
    push 1s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (+ 1s:idealborder 290s))
    push 1s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (+ 1s:idealborder 300s))
    push 1s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 80s))) -5s (+ 1s:idealborder 310s))
    push 1s
    stog.side* = (int32 self.gen)
    if (<= 6s 0) goto 0x001364
0x001184:
    push 6s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 400s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 470s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 540s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x001184
0x001364:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x001388:
    if !(== self.con2 3s) goto 0x0013B0
0x00139C:
    push (>= self.hp 255s)
    goto 0x0013B4
0x0013B0:
    push 0s
0x0013B4:
    if !pop goto 0x001950
0x0013B8:
    global.turntimer = 220s
    self.g = 0s
    if (<= 6s 0) goto 0x0014A0
0x0013E8:
    push 6s
    self.g = (+ self.g 1s)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 100s) (random[]:int32 (var 60s))) -5s (- (- 0s:idealborder 50s) (* self.g 5s)))
    push 0s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x0013E8
0x0014A0:
    push (- pop 1)
    pop
    self.g = 0s
    if (<= 6s 0) goto 0x001578
0x0014C8:
    push 6s
    self.g = (+ self.g 1s)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 60s))) -5s (+ (+ 1s:idealborder 150s) (* self.g 5s)))
    push 1s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x0014C8
0x001578:
    push (- pop 1)
    pop
    self.g = 0s
    if (<= 6s 0) goto 0x001650
0x0015A0:
    push 6s
    self.g = (+ self.g 1s)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder (random[]:int32 (var 60s))) -5s (- (- 0s:idealborder 150s) (* self.g 5s)))
    push 0s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x0015A0
0x001650:
    push (- pop 1)
    pop
    self.g = 0s
    if (<= 6s 0) goto 0x001730
0x001678:
    push 6s
    self.g = (+ self.g 1s)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 100s) (random[]:int32 (var 60s))) -5s (+ (+ 1s:idealborder 50s) (* self.g 5s)))
    push 1s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x001678
0x001730:
    push (- pop 1)
    pop
    if (<= 6s 0) goto 0x00192C
0x00174C:
    push 6s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 270s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 310s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 360s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x00174C
0x00192C:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x001950:
    if !(== self.con2 3s) goto 0x001978
0x001964:
    push (>= self.hp 999s)
    goto 0x00197C
0x001978:
    push 0s
0x00197C:
    if !pop goto 0x001C40
0x001980:
    global.turntimer = 160s
    if (<= 4s 0) goto 0x001C1C
0x0019A4:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 30s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 90s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 150s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 210s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x0019A4
0x001C1C:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x001C40:
    if !(== self.con2 3s) goto 0x001C68
0x001C54:
    push (< self.hp 255s)
    goto 0x001C6C
0x001C68:
    push 0s
0x001C6C:
    if !pop goto 0x001F3C
0x001C70:
    self.con2 = 4s
    global.turntimer = 160s
    if (<= 4s 0) goto 0x001F18
0x001CA0:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 30s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 90s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 150s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 210s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x001CA0
0x001F18:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x001F3C:
    if !(== self.con2 5s) goto 0x002520
0x001F50:
    if !(== self.type2 3s) goto 0x002520
0x001F64:
    self.type2 = 4s
    global.turntimer = 240s
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 4s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x0020AC
0x001FC4:
    if !(!= self.i self.choice) goto 0x001FFC
0x001FDC:
    push (!= self.i (+ self.choice 1s))
    goto 0x002000
0x001FFC:
    push 0s
0x002000:
    if !pop goto 0x002090
0x002004:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (- 0s:idealborder 40s))
    push 0s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x002090:
    self.i = (+ self.i 1s)
    goto 0x001FB0
0x0020AC:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 4s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x0021DC
0x0020F4:
    if !(!= self.i self.choice) goto 0x00212C
0x00210C:
    push (!= self.i (+ self.choice 1s))
    goto 0x002130
0x00212C:
    push 0s
0x002130:
    if !pop goto 0x0021C0
0x002134:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (+ 1s:idealborder 20s))
    push 1s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x0021C0:
    self.i = (+ self.i 1s)
    goto 0x0020E0
0x0021DC:
    self.choice = (floor[]:int32 (random[]:int32 (var 7s)))
    self.i = 0s
    if !(< self.i 7s) goto 0x002304
0x00221C:
    if !(!= self.i self.choice) goto 0x002254
0x002234:
    push (!= self.i (+ self.choice 1s))
    goto 0x002258
0x002254:
    push 0s
0x002258:
    if !pop goto 0x0022E8
0x00225C:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 150s) -5s (+ (+ 0s:idealborder 10s) (* self.i 25s)))
    push 2s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x0022E8:
    self.i = (+ self.i 1s)
    goto 0x002208
0x002304:
    if (<= 4s 0) goto 0x0024FC
0x00231C:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 290s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 300s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 310s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x00231C
0x0024FC:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x002520:
    if !(== self.con2 5s) goto 0x002A94
0x002534:
    if !(== self.type2 2s) goto 0x002A94
0x002548:
    self.type2 = 3s
    global.turntimer = 220s
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.choice2 = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.choice3 = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x002878
0x0025F8:
    if !(!= self.i self.choice) goto 0x002630
0x002610:
    push (!= self.i (+ self.choice 1s))
    goto 0x002634
0x002630:
    push 0s
0x002634:
    if !pop goto 0x0026C4
0x002638:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 50s) -5s (+ (+ 0s:idealborder 10s) (* self.i 25s)))
    push 2s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x0026C4:
    if !(!= self.i self.choice2) goto 0x0026FC
0x0026DC:
    push (!= self.i (+ self.choice2 1s))
    goto 0x002700
0x0026FC:
    push 0s
0x002700:
    if !pop goto 0x002790
0x002704:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 110s) -5s (+ (+ 0s:idealborder 10s) (* self.i 25s)))
    push 2s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x002790:
    if !(!= self.i self.choice3) goto 0x0027C8
0x0027A8:
    push (!= self.i (+ self.choice3 1s))
    goto 0x0027CC
0x0027C8:
    push 0s
0x0027CC:
    if !pop goto 0x00285C
0x0027D0:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 170s) -5s (+ (+ 0s:idealborder 10s) (* self.i 25s)))
    push 2s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x00285C:
    self.i = (+ self.i 1s)
    goto 0x0025E4
0x002878:
    if (<= 4s 0) goto 0x002A70
0x002890:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 260s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 270s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 280s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x002890
0x002A70:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x002A94:
    if !(== self.con2 5s) goto 0x002F50
0x002AA8:
    if !(== self.type2 1s) goto 0x002F50
0x002ABC:
    self.type2 = 2s
    global.turntimer = 160s
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 4s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x002C04
0x002B1C:
    if !(!= self.i self.choice) goto 0x002B54
0x002B34:
    push (!= self.i (+ self.choice 1s))
    goto 0x002B58
0x002B54:
    push 0s
0x002B58:
    if !pop goto 0x002BE8
0x002B5C:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (- 0s:idealborder 40s))
    push 0s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x002BE8:
    self.i = (+ self.i 1s)
    goto 0x002B08
0x002C04:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 4s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x002D34
0x002C4C:
    if !(!= self.i self.choice) goto 0x002C84
0x002C64:
    push (!= self.i (+ self.choice 1s))
    goto 0x002C88
0x002C84:
    push 0s
0x002C88:
    if !pop goto 0x002D18
0x002C8C:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (+ 1s:idealborder 110s))
    push 1s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x002D18:
    self.i = (+ self.i 1s)
    goto 0x002C38
0x002D34:
    if (<= 4s 0) goto 0x002F2C
0x002D4C:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 160s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 170s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 180s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x002D4C
0x002F2C:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x002F50:
    if !(== self.con2 5s) goto 0x0032D4
0x002F64:
    if !(== self.type2 0s) goto 0x0032D4
0x002F78:
    self.type2 = 1s
    global.turntimer = 175s
    self.choice = (floor[]:int32 (random[]:int32 (var 7s)))
    self.i = 0s
    if !(< self.i 7s) goto 0x0030B8
0x002FD0:
    if !(!= self.i self.choice) goto 0x003008
0x002FE8:
    push (!= self.i (+ self.choice 1s))
    goto 0x00300C
0x003008:
    push 0s
0x00300C:
    if !pop goto 0x00309C
0x003010:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 50s) -5s (+ (+ 0s:idealborder 10s) (* self.i 25s)))
    push 2s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x00309C:
    self.i = (+ self.i 1s)
    goto 0x002FBC
0x0030B8:
    if (<= 4s 0) goto 0x0032B0
0x0030D0:
    push 4s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 170s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 180s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 190s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x0030D0
0x0032B0:
    push (- pop 1)
    pop
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x0032D4:
    if !(== self.type2 4s) goto 0x0032F4
0x0032E8:
    self.type2 = 0s
0x0032F4:
    if !(== self.con2 17.5d) goto 0x003DB0
0x003310:
    global.turntimer = 460s
    self.con2 = 17s
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x003458
0x003370:
    if !(!= self.i self.choice) goto 0x0033A8
0x003388:
    push (!= self.i (+ self.choice 1s))
    goto 0x0033AC
0x0033A8:
    push 0s
0x0033AC:
    if !pop goto 0x00343C
0x0033B0:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (- 0s:idealborder 60s))
    push 0s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x00343C:
    self.i = (+ self.i 1s)
    goto 0x00335C
0x003458:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x003588
0x0034A0:
    if !(!= self.i self.choice) goto 0x0034D8
0x0034B8:
    push (!= self.i (+ self.choice 1s))
    goto 0x0034DC
0x0034D8:
    push 0s
0x0034DC:
    if !pop goto 0x00356C
0x0034E0:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (+ 1s:idealborder 100s))
    push 1s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x00356C:
    self.i = (+ self.i 1s)
    goto 0x00348C
0x003588:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x0036B8
0x0035D0:
    if !(!= self.i self.choice) goto 0x003608
0x0035E8:
    push (!= self.i (+ self.choice 1s))
    goto 0x00360C
0x003608:
    push 0s
0x00360C:
    if !pop goto 0x00369C
0x003610:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (- 0s:idealborder 240s))
    push 0s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x00369C:
    self.i = (+ self.i 1s)
    goto 0x0035BC
0x0036B8:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x0037E8
0x003700:
    if !(!= self.i self.choice) goto 0x003738
0x003718:
    push (!= self.i (+ self.choice 1s))
    goto 0x00373C
0x003738:
    push 0s
0x00373C:
    if !pop goto 0x0037CC
0x003740:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (+ 1s:idealborder 280s))
    push 1s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x0037CC:
    self.i = (+ self.i 1s)
    goto 0x0036EC
0x0037E8:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 2s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x003918
0x003830:
    if !(!= self.i self.choice) goto 0x003868
0x003848:
    push (!= self.i (+ self.choice 1s))
    goto 0x00386C
0x003868:
    push 0s
0x00386C:
    if !pop goto 0x0038FC
0x003870:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (- 0s:idealborder 440s))
    push 0s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x0038FC:
    self.i = (+ self.i 1s)
    goto 0x00381C
0x003918:
    self.choice = (+ (floor[]:int32 (random[]:int32 (var 3s))) 2s)
    self.i = 0s
    if !(< self.i 7s) goto 0x003A48
0x003960:
    if !(!= self.i self.choice) goto 0x003998
0x003978:
    push (!= self.i (+ self.choice 1s))
    goto 0x00399C
0x003998:
    push 0s
0x00399C:
    if !pop goto 0x003A2C
0x0039A0:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (* self.i 25s)) -5s (+ 1s:idealborder 360s))
    push 1s
    stog.side* = (int32 self.gen)
    push 1s
    stog.type* = (int32 self.gen)
0x003A2C:
    self.i = (+ self.i 1s)
    goto 0x00394C
0x003A48:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 60s) -5s (+ 0s:idealborder 170s))
    push 3s
    stog.side* = (int32 self.gen)
    push 4s
    stog.type* = (int32 self.gen)
    push 113s
    stog.sprite_index* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- 2s:idealborder 360s) -5s (+ 0s:idealborder 100s))
    push 2s
    stog.side* = (int32 self.gen)
    push 4s
    stog.type* = (int32 self.gen)
    push 113s
    stog.sprite_index* = (int32 self.gen)
    self.i = 0s
    if !(< self.i 6s) goto 0x003D90
0x003B88:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 690s) -5s (+ (+ 0s:idealborder 20s) (* self.i 30s)))
    push 3s
    stog.side* = (int32 self.gen)
    push 113s
    stog.sprite_index* = (int32 self.gen)
    push 4s
    stog.type* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 30s) (* self.i 30s)) -5s (- 0s:idealborder 700s))
    push 4s
    stog.type* = (int32 self.gen)
    push 0s
    stog.side* = (int32 self.gen)
    push 113s
    stog.sprite_index* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 30s) (* self.i 30s)) -5s (+ 1s:idealborder 690s))
    push 4s
    stog.type* = (int32 self.gen)
    push 113s
    stog.sprite_index* = (int32 self.gen)
    push 1s
    stog.side* = (int32 self.gen)
    self.i = (+ self.i 1s)
    goto 0x003B74
0x003D90:
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
0x003DB0:
    if !(== self.con2 16s) goto 0x004078
0x003DC4:
    global.turntimer = 280s
    self.i = 0s
    if !(< self.i 5s) goto 0x00402C
0x003DF0:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 20s) (* self.i 10s)) -5s (- (+ 0s:idealborder 180s) (* self.i 40s)))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (+ 2s:idealborder 150s) (* self.i 30s)) -5s (- (- 0s:idealborder 110s) (* self.i 10s)))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 2s:idealborder 200s) (* self.i 10s)) -5s (+ (+ 0s:idealborder 20s) (* self.i 40s)))
    push 2s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 30s) (* self.i 30s)) -5s (+ (+ 1s:idealborder 280s) (* self.i 10s)))
    push 1s
    stog.side* = (int32 self.gen)
    self.i = (+ self.i 1s)
    goto 0x003DDC
0x00402C:
    [blt_parent_noborder].type = 4s
    [blt_dummybullet].sprite_index = 113s
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
    self.con2 = 17.5d
0x004078:
    if !(== self.con2 15s) goto 0x004274
0x00408C:
    global.turntimer = 180s
    self.i = 0s
    if !(< self.i 3s) goto 0x004230
0x0040B8:
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ (+ 0s:idealborder 20s) (* self.i 60s)))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 30s) (* self.i 60s)) -5s (- 0s:idealborder 40s))
    push 0s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 30s) (* self.i 60s)) -5s (+ 1s:idealborder 20s))
    push 1s
    stog.side* = (int32 self.gen)
    self.i = (+ self.i 1s)
    goto 0x0040A4
0x004230:
    [blt_parent_noborder].type = 4s
    [blt_dummybullet].sprite_index = 113s
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
    self.con2 = 16s
0x004274:
    if !(== self.con2 14s) goto 0x0044B8
0x004288:
    global.turntimer = 180s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ 0s:idealborder 20s))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ 0s:idealborder 50s))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ 0s:idealborder 80s))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ 0s:idealborder 110s))
    push 3s
    stog.side* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 3s:idealborder 20s) -5s (+ 0s:idealborder 140s))
    push 3s
    stog.side* = (int32 self.gen)
    [blt_parent_noborder].type = 4s
    [blt_dummybullet].sprite_index = 113s
    push -5s
    [blt_parent_noborder].dmg = (int32 self.myself):monsteratk
    self.con2 = 15s
0x0044B8:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x004500
0x0044E8:
    stog.msg[0s] = "* Mad Dummy is doing an armless&  ska dance."
0x004500:
    if !(>= self.mycommand 25s) goto 0x00452C
0x004514:
    stog.msg[0s] = "* Mad Dummy is bossing around&  its bullets."
0x00452C:
    if !(>= self.mycommand 50s) goto 0x004558
0x004540:
    stog.msg[0s] = "* Mad Dummy glares into a&  mirror^1, then turns to you&  with the same expression."
0x004558:
    if !(>= self.mycommand 75s) goto 0x004584
0x00456C:
    stog.msg[0s] = "* Mad Dummy is hopping mad."
0x004584:
    if !(>= self.mycommand 90s) goto 0x0045B0
0x004598:
    stog.msg[0s] = "* Smells like a clothing&  store."
0x0045B0:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x0045EC
0x0045D4:
    stog.msg[0s] = "* This message will NEVER&  happen."
0x0045EC:
    if !(== self.con2 5s) goto 0x004618
0x004600:
    stog.msg[0s] = "* Mad Dummy is getting cotton&  all over the dialogue box."
0x004618:
    self.attacked = 1s
0x004624:
    if !(== global.myfight 2s) goto 0x00489C
0x004638:
    if !(!= self.whatiheard -1s) goto 0x00489C
0x00464C:
    if !(== global.heard 0s) goto 0x00489C
0x004660:
    if !(== self.whatiheard 0s) goto 0x004708
0x004674:
    global.msc = 0s
    stog.msg[0s] = "* MAD DUMMY - ATK 30 DEF YES&* Because they're a ghost^1,&  physical attacks will fail./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0046F8
0x0046EC:
    self.halt = 0s
0x0046F8:
    popenv 0x0046EC
0x0046FC:
    self.whatiheard = 9s
0x004708:
    if !(== self.whatiheard 1s) goto 0x0047B0
0x00471C:
    global.msc = 0s
    stog.msg[0s] = "* You tell Aaron to go away./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0047A0
0x004794:
    self.halt = 0s
0x0047A0:
    popenv 0x004794
0x0047A4:
    self.mercymod = -10s
0x0047B0:
    if !(== self.whatiheard 3s) goto 0x004890
0x0047C4:
    stog.flag[147s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* You talk to the DUMMY^1.&* .../"
    stog.msg[1s] = "* It doesn't seem much for&  conversation./"
    stog.msg[2s] = "* No one is happy with this./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00488C
0x004880:
    self.halt = 0s
0x00488C:
    popenv 0x004880
0x004890:
    global.heard = 1s
0x00489C:
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x0048FC
0x0048B4:
    push (+ self.x 50s)
    stog.x* = (int32 self.mypart1)
    push (+ self.y 10s)
    stog.y* = (int32 self.mypart1)
0x0048FC:
    if !(== global.myfight 4s) goto 0x004958
0x004910:
    if !(== global.mercyuse 0s) goto 0x004958
0x004924:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x004958
0x00494C:
    call (instance_destroy[]:int32 )
0x004958:
    if !(== self.mercymod 222s) goto 0x004988
0x00496C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00498C
0x004988:
    push 0s
0x00498C:
    if !pop goto 0x0049C4
0x004990:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0049C4
0x0049B8:
    call (instance_destroy[]:int32 )
0x0049C4:
    if !(== self.con 4s) goto 0x0049F4
0x0049D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0049F8
0x0049F4:
    push 0s
0x0049F8:
    if !pop goto 0x004A64
0x0049FC:
    pushenv (int32 self.blcon) 0x004A18
0x004A0C:
    call (instance_destroy[]:int32 )
0x004A18:
    popenv 0x004A0C
0x004A1C:
    global.mnfight = 1s
    global.myfight = 0s
    self.talked = 0s
    self.con = 5s
    self.mycommand = (random[]:int32 (var 100s))
0x004A64:
    if !(== self.con 2s) goto 0x004A94
0x004A78:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004A98
0x004A94:
    push 0s
0x004A98:
    if !pop goto 0x004B18
0x004A9C:
    pushenv (int32 self.blcon) 0x004AB8
0x004AAC:
    call (instance_destroy[]:int32 )
0x004AB8:
    popenv 0x004AAC
0x004ABC:
    self.con = 3s
    pushenv (int32 self.mypart1) 0x004AEC
0x004AD8:
    call (event_user[]:int32 (var 1s))
0x004AEC:
    popenv 0x004AD8
0x004AF0:
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 30s
0x004B18:
    if !(== self.talko 3s) goto 0x004B48
0x004B2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004B4C
0x004B48:
    push 0s
0x004B4C:
    if !pop goto 0x004BCC
0x004B50:
    pushenv (int32 self.blcon) 0x004B6C
0x004B60:
    call (instance_destroy[]:int32 )
0x004B6C:
    popenv 0x004B60
0x004B70:
    self.talko = 0s
    self.next = 1s
    if !(== self.con2 1s) goto 0x004BCC
0x004B9C:
    self.con2 = 2s
    global.faceemotion = 0s
    stog.msg[0s] = "* Mad Dummy is looking&  nervous."
0x004BCC:
    if !(== self.talko 2s) goto 0x004BFC
0x004BE0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004C00
0x004BFC:
    push 0s
0x004C00:
    if !pop goto 0x004C30
0x004C04:
    pushenv (int32 self.blcon) 0x004C20
0x004C14:
    call (instance_destroy[]:int32 )
0x004C20:
    popenv 0x004C14
0x004C24:
    self.talko = 1s
0x004C30:
    if !(== self.talko 1s) goto 0x004C60
0x004C44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004C64
0x004C60:
    push 0s
0x004C64:
    if !pop goto 0x004C94
0x004C68:
    self.hurtsies = 2s
    stog.alarm[7s] = 2s
    self.talko = 0s
0x004C94:
    if !(== self.next 1s) goto 0x004CD0
0x004CA8:
    if !(< global.turntimer 2s) goto 0x004CD0
0x004CBC:
    push (== global.mnfight 2s)
    goto 0x004CD4
0x004CD0:
    push 0s
0x004CD4:
    if !pop goto 0x004CF0
0x004CD8:
    global.turntimer = -1s
    global.mnfight = 3s
0x004CF0:
    if !(== self.con2 3s) goto 0x004D8C
0x004D04:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.siner (double 20s))) 90s))
    self.y = (- self.y (* (sin[]:int32 (/ self.siner (double 5s))) 2s))
0x004D8C:
    if !(== self.con2 4s) goto 0x004E14
0x004DA0:
    pushenv (int32 self.mypart1) 0x004DD8
0x004DB0:
    self.rotmod = 1.4d
    self.speedmod = 2.4d
0x004DD8:
    popenv 0x004DB0
0x004DDC:
    self.siner = 0s
    self.x = self.xstart
    self.y = self.ystart
    self.con2 = 5s
0x004E14:
    if !(== self.con2 5s) goto 0x004F7C
0x004E28:
    if !(< global.mnfight 2s) goto 0x004E5C
0x004E3C:
    self.siner = (+ self.siner 0.25d)
0x004E5C:
    if !(== global.mnfight 2s) goto 0x004EE0
0x004E70:
    self.sinadd = (- (/ global.turntimer (double 500s)) 0.16d)
    if !(< self.sinadd 0.02d) goto 0x004EC4
0x004EB8:
    self.sinadd = 0s
0x004EC4:
    self.siner = (+ self.siner self.sinadd)
0x004EE0:
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.siner (double 4s))) 200s))
    self.y = (+ self.ystart (* (sin[]:int32 (/ self.siner (double 2s))) 50s))
    if !(== global.mnfight 3s) goto 0x004F7C
0x004F64:
    stog.msg[0s] = "* Mad Dummy is getting cotton&  all over the dialogue box."
0x004F7C:
    if !(== self.con2 6s) goto 0x0050D8
0x004F90:
    if !(< (distance_to_point[]:int32 self.ystart self.xstart) 20s) goto 0x004FC8
0x004FB4:
    push (> self.speed 0s)
    goto 0x004FCC
0x004FC8:
    push 0s
0x004FCC:
    if !pop goto 0x005014
0x004FD0:
    self.speed = (- self.speed 0.5d)
    call (move_towards_point[]:int32 self.speed self.ystart self.xstart)
0x005014:
    if !(== self.speed 0s) goto 0x0050D8
0x005028:
    self.con2 = 7s
    global.typer = 33s
    stog.msg[0s] = "\\E1HEY GUYS!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0050D8:
    if !(== self.con2 7s) goto 0x0054C4
0x0050EC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0054C4
0x005108:
    pushenv (int32 self.mypart1) 0x005140
0x005118:
    self.rotmod = 0.3d
    self.speedmod = 0.1d
0x005140:
    popenv 0x005118
0x005144:
    global.turntimer = 333s
    pushenv (int32 self.blcon) 0x00516C
0x005160:
    call (instance_destroy[]:int32 )
0x00516C:
    popenv 0x005160
0x005170:
    if (<= 8s 0) goto 0x0054A0
0x005188:
    push 8s
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 3s:idealborder 10s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 3s
    stog.side* = (int32 self.gen)
    push 2s
    stog.type* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (- 2s:idealborder 40s) (random[]:int32 (var 10s))) -5s (+ (+ 0s:idealborder 30s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    push 2s
    stog.side* = (int32 self.gen)
    push 2s
    stog.type* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (random[]:int32 (var 200s))) -5s (- (- 0s:idealborder 26s) (random[]:int32 (var 10s))))
    push 0s
    stog.side* = (int32 self.gen)
    push 2s
    stog.type* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    push (var 659s)
    push -5s
    self.gen = (instance_create[]:int32 (- (- 3s:idealborder 25s) (random[]:int32 (var 200s))) -5s (+ (+ 1s:idealborder 26s) (random[]:int32 (var 10s))))
    push 1s
    stog.side* = (int32 self.gen)
    push 2s
    stog.type* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    if (bool (- pop 1)) goto 0x005188
0x0054A0:
    push (- pop 1)
    pop
    self.con2 = 8s
    stog.alarm[4s] = 30s
0x0054C4:
    if !(== self.con2 9s) goto 0x0055D0
0x0054D8:
    self.con2 = 10s
    global.typer = 33s
    stog.msg[0s] = "\\E0Dummies^1.&Dummies^1!&DUMMIES!/"
    stog.msg[1s] = "\\E1Remember how I&said NOT to&shoot at me?/"
    stog.msg[2s] = "\\E0Well.../"
    stog.msg[3s] = "\\E3FAILURES^1!&YOU'RE FIRED^1!&YOU'RE ALL BEING&REPLACED!!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x0055D0:
    if !(== self.con2 10s) goto 0x00570C
0x0055E4:
    global.turntimer = 999s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x005658
0x005608:
    if !(== 782.stringno 3s) goto 0x005654
0x00561C:
    pushenv (int32 self.mypart1) 0x005644
0x00562C:
    self.rotmod = 2s
    self.speedmod = 7s
0x005644:
    popenv 0x00562C
0x005648:
    [blt_dummybullet].sprite_index = 116s
0x005654:
    goto 0x00570C
0x005658:
    pushenv (int32 self.mypart1) 0x005690
0x005668:
    self.rotmod = 0.1d
    self.speedmod = 0.1d
0x005690:
    popenv 0x005668
0x005694:
    pushenv 659s 0x0056C8
0x00569C:
    call (event_user[]:int32 (var 2s))
    self.speed = 1s
    self.sprite_index = 115s
0x0056C8:
    popenv 0x00569C
0x0056CC:
    pushenv (int32 self.blcon) 0x0056E8
0x0056DC:
    call (instance_destroy[]:int32 )
0x0056E8:
    popenv 0x0056DC
0x0056EC:
    self.con2 = 11s
    stog.alarm[4s] = 40s
0x00570C:
    if !(== self.con2 12s) goto 0x00583C
0x005720:
    global.turntimer = 10s
    self.con2 = 13s
    global.typer = 33s
    global.msc = 0s
    stog.msg[0s] = "\\E0Hahaha^1.&Hahaha^1!&HAHAHA!/"
    stog.msg[1s] = "Now you'll see&my true power:/"
    stog.msg[2s] = "Relying on people&that aren't garbage!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.talko = 3s
    stog.msg[0s] = "* Mechanical whirrs fill&  the room."
0x00583C:
    if !(== self.con2 13s) goto 0x005914
0x005850:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0058FC
0x005868:
    if !(== 782.stringno 0s) goto 0x0058B0
0x00587C:
    pushenv (int32 self.mypart1) 0x0058AC
0x00588C:
    self.rotmod = 0.8d
    self.speedmod = 10s
0x0058AC:
    popenv 0x00588C
0x0058B0:
    if !(== 782.stringno 1s) goto 0x0058F8
0x0058C4:
    pushenv (int32 self.mypart1) 0x0058F4
0x0058D4:
    self.rotmod = 1.4d
    self.speedmod = 2s
0x0058F4:
    popenv 0x0058D4
0x0058F8:
    goto 0x005908
0x0058FC:
    self.con2 = 14s
0x005908:
    self.siner = 0s
0x005914:
    if (== self.con2 14s) goto 0x005980
0x005928:
    if (== self.con2 15s) goto 0x005980
0x00593C:
    if (== self.con2 16s) goto 0x005980
0x005950:
    if (== self.con2 17s) goto 0x005980
0x005964:
    push (== self.con2 17.5d)
    goto 0x005984
0x005980:
    push 1s
0x005984:
    if !pop goto 0x005A80
0x005988:
    self.siner = (+ self.siner 0.2d)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.siner (double 2s))) 60s))
    self.y = (- self.y (* (sin[]:int32 (* self.siner 2s)) 8s))
    if !(== self.con2 17s) goto 0x005A3C
0x005A28:
    push (< global.turntimer 30s)
    goto 0x005A40
0x005A3C:
    push 0s
0x005A40:
    if !pop goto 0x005A80
0x005A44:
    call (move_towards_point[]:int32 (var 10s) self.ystart self.xstart)
    self.next = 0s
    self.con2 = 18s
0x005A80:
    if !(== self.con2 18s) goto 0x005BD4
0x005A94:
    self.con2 = 19s
    global.typer = 33s
    pushenv (int32 self.mypart1) 0x005AC8
0x005ABC:
    global.msc = 0s
0x005AC8:
    popenv 0x005ABC
0x005ACC:
    self.rotmod = 0.1d
    self.speedmod = 0.2d
    stog.msg[0s] = "\\E2(N..^1. no way!)/"
    stog.msg[1s] = "\\E2(These guys are&even WORSE than&the other guys!)/"
    stog.msg[2s] = "\\E3Who cares^1.&Who cares^1!&WHO CARES!!/"
    stog.msg[3s] = "I DON'T NEED&FRIENDS!!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x005BD4:
    if !(== self.con2 19s) goto 0x005D50
0x005BE8:
    if !(< (distance_to_point[]:int32 self.ystart self.xstart) 30s) goto 0x005C20
0x005C0C:
    push (> self.speed 0s)
    goto 0x005C24
0x005C20:
    push 0s
0x005C24:
    if !pop goto 0x005C64
0x005C28:
    self.speed = (- self.speed 1s)
    call (move_towards_point[]:int32 self.speed self.ystart self.xstart)
0x005C64:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x005CC8
0x005C7C:
    if !(== 782.stringno 3s) goto 0x005CC4
0x005C90:
    pushenv (int32 self.mypart1) 0x005CC0
0x005CA0:
    self.rotmod = 2.2d
    self.speedmod = 5s
0x005CC0:
    popenv 0x005CA0
0x005CC4:
    goto 0x005D50
0x005CC8:
    self.con2 = 20s
    stog.alarm[4s] = 40s
    global.turntimer = 999s
    self.knife = (instance_create[]:int32 (var 658s) self.y (- self.x 50s))
    global.faceemotion = 0s
    pushenv (int32 self.blcon) 0x005D4C
0x005D40:
    call (instance_destroy[]:int32 )
0x005D4C:
    popenv 0x005D40
0x005D50:
    if !(== self.con2 21s) goto 0x005E08
0x005D64:
    stog.msg[0s] = "\\E3I'VE GOT&KNIVES!!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con2 = 22s
0x005E08:
    if !(== self.con2 22s) goto 0x005EE0
0x005E1C:
    global.turntimer = 999s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x005EE0
0x005E44:
    pushenv (int32 self.blcon) 0x005E60
0x005E54:
    call (instance_destroy[]:int32 )
0x005E60:
    popenv 0x005E54
0x005E64:
    pushenv (int32 self.knife) 0x005EA8
0x005E74:
    call (move_towards_point[]:int32 (var 9s) (+ 743.y 10s) (+ 743.x 10s))
0x005EA8:
    popenv 0x005E74
0x005EAC:
    call (snd_play[]:int32 (var 20s))
    self.con2 = 23s
    stog.alarm[4s] = 90s
0x005EE0:
    if !(== self.con2 24s) goto 0x005F14
0x005EF4:
    stog.alarm[4s] = 30s
    self.con2 = 25s
0x005F14:
    if !(== self.con2 25s) goto 0x005FA4
0x005F28:
    pushenv (int32 self.mypart1) 0x005FA0
0x005F38:
    if !(> self.rotmod 0s) goto 0x005F6C
0x005F4C:
    self.rotmod = (- self.rotmod 0.2d)
0x005F6C:
    if !(> self.speedmod 0s) goto 0x005FA0
0x005F80:
    self.speedmod = (- self.speedmod 0.2d)
0x005FA0:
    popenv 0x005F38
0x005FA4:
    if !(== self.con2 26s) goto 0x00619C
0x005FB8:
    self.sprite_index = 273s
    stog.msg[0s] = "\\E0I'm..^1./"
    stog.msg[1s] = "\\E2Out of knives./"
    stog.msg[2s] = "\\E3BUT IT DOESN'T&MATTER!!!/"
    stog.msg[3s] = "YOU CAN'T HURT&ME AND I CAN'T&HURT YOU!/"
    stog.msg[4s] = "YOU'LL BE STUCK&FIGHTING ME.../"
    stog.msg[5s] = "Forever./"
    stog.msg[6s] = "Forever!/"
    stog.msg[7s] = "FOREVER!!!!/"
    stog.msg[8s] = "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%"
    stog.msg[9s] = "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%"
    stog.msg[10s] = "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%"
    stog.msg[11s] = "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%"
    pushenv (int32 self.mypart1) 0x00610C
0x0060F4:
    self.rotmod = 0s
    self.speedmod = 0s
0x00610C:
    popenv 0x0060F4
0x006110:
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con2 = 27s
0x00619C:
    if !(== self.con2 27s) goto 0x006548
0x0061B0:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x006548
0x0061C8:
    if !(== 782.stringno 2s) goto 0x006210
0x0061DC:
    pushenv (int32 self.mypart1) 0x00620C
0x0061EC:
    self.rotmod = 2.5d
    self.speedmod = 5s
0x00620C:
    popenv 0x0061EC
0x006210:
    if !(== 782.stringno 3s) goto 0x006250
0x006224:
    pushenv (int32 self.mypart1) 0x00624C
0x006234:
    self.rotmod = 3s
    self.speedmod = 6s
0x00624C:
    popenv 0x006234
0x006250:
    if !(== 782.stringno 4s) goto 0x006290
0x006264:
    pushenv (int32 self.mypart1) 0x00628C
0x006274:
    self.rotmod = 5s
    self.speedmod = 6s
0x00628C:
    popenv 0x006274
0x006290:
    if !(== 782.stringno 5s) goto 0x0062D0
0x0062A4:
    pushenv (int32 self.mypart1) 0x0062CC
0x0062B4:
    self.rotmod = 0s
    self.speedmod = 0s
0x0062CC:
    popenv 0x0062B4
0x0062D0:
    if !(== 782.stringno 6s) goto 0x006310
0x0062E4:
    pushenv (int32 self.mypart1) 0x00630C
0x0062F4:
    self.rotmod = 2s
    self.speedmod = 2s
0x00630C:
    popenv 0x0062F4
0x006310:
    if !(== 782.stringno 7s) goto 0x006350
0x006324:
    pushenv (int32 self.mypart1) 0x00634C
0x006334:
    self.rotmod = 8s
    self.speedmod = 3s
0x00634C:
    popenv 0x006334
0x006350:
    if !(== 782.stringno 8s) goto 0x006390
0x006364:
    pushenv (int32 self.mypart1) 0x00638C
0x006374:
    self.rotmod = 12s
    self.speedmod = 3s
0x00638C:
    popenv 0x006374
0x006390:
    if !(== 782.stringno 9s) goto 0x006548
0x0063A4:
    if (<= 23s 0) goto 0x006538
0x0063BC:
    push 23s
    self.blt = (instance_create[]:int32 (var 633s) (- -10s (random[]:int32 (var 1100s))) (+ (+ self.x 10s) (random[]:int32 (var 20s))))
    push 0s
    stog.dmg* = (int32 self.blt)
    push 0s
    stog.gravity* = (int32 self.blt)
    push 0s
    stog.friction* = (int32 self.blt)
    self.size = (+ 1s (random[]:int32 (var 1s)))
    push self.size
    stog.image_xscale* = (int32 self.blt)
    push self.size
    stog.image_yscale* = (int32 self.blt)
    push 6s
    stog.vspeed* = (int32 self.blt)
    push (/ (int32 self.blt):hspeed (double 4s))
    stog.hspeed* = (int32 self.blt)
    push 270s
    stog.gravity_direction* = (int32 self.blt)
    global.turntimer = 9999s
    if (bool (- pop 1)) goto 0x0063BC
0x006538:
    push (- pop 1)
    pop
    self.con2 = 28s
0x006548:
    if !(== self.con2 30s) goto 0x006630
0x00655C:
    stog.msg[0s] = "\\E2Wh..^1.&What the heck is&this!?/"
    stog.msg[1s] = "\\E3Ergh^1!&Acid rain!?!/"
    stog.msg[2s] = "Oh^1, FORGET IT^1!&I'm outta here!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con2 = 31s
0x006630:
    if !(== self.con2 31s) goto 0x0066D8
0x006644:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0066D8
0x006660:
    pushenv (int32 self.blcon) 0x00667C
0x006670:
    call (instance_destroy[]:int32 )
0x00667C:
    popenv 0x006670
0x006680:
    pushenv 633s 0x006694
0x006688:
    call (instance_destroy[]:int32 )
0x006694:
    popenv 0x006688
0x006698:
    call (snd_play[]:int32 (var 48s))
    self.hspeed = 4s
    self.con2 = 32s
    stog.alarm[4s] = 120s
0x0066D8:
    if !(== self.con2 33s) goto 0x0067D8
0x0066EC:
    self.blook = (instance_create[]:int32 (var 1363s) (var -200s) (- self.xstart 20s))
    push 0s
    stog.image_alpha* = (int32 self.blook)
    push 1s
    stog.visible* = (int32 self.blook)
    push 2s
    stog.image_xscale* = (int32 self.blook)
    push 2s
    stog.image_yscale* = (int32 self.blook)
    push 185s
    stog.sprite_index* = (int32 self.blook)
    push 0.25d
    stog.image_speed* = (int32 self.blook)
    push 4s
    stog.vspeed* = (int32 self.blook)
    self.con2 = 34s
0x0067D8:
    if !(== self.con2 34s) goto 0x006874
0x0067EC:
    stog.image_alpha* = (+ (int32 self.blook):image_alpha 0.025d)
    if !(> (int32 self.blook):y 14s) goto 0x006874
0x00683C:
    push (int32 self.blook)
    self.con2 = 35s
    push 0s
    stog.vspeed* = (int32 self.blook)
    stog.alarm[4s] = 30s
0x006874:
    if !(== self.con2 36s) goto 0x0069FC
0x006888:
    global.typer = 33s
    stog.msg[0s] = "... sorry^1, i&interrupted you^1,&didn't i?/"
    stog.msg[1s] = "as soon as i came&over^1, your friend&immediately left.../"
    stog.msg[2s] = "oh no..^1.&you guys looked&like you were having&fun.../"
    stog.msg[3s] = "oh no..^1.&i just wanted to&say hi.../"
    stog.msg[4s] = "oh no.................................................%%"
    push -5s
    if !(== 36s:flag 0s) goto 0x006970
0x006928:
    stog.msg[3s] = "oh wait..^1. didn't you&attack me before.../"
    stog.msg[4s] = "uhhh..^1.&that's awkward./"
    stog.msg[5s] = "sorry^1.&have a nice day./%%"
0x006970:
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.con2 = 37s
0x0069FC:
    if !(== self.con2 37s) goto 0x006ACC
0x006A10:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x006A8C
0x006A28:
    if (== 782.stringno 4s) goto 0x006A50
0x006A3C:
    push (== 782.stringno 5s)
    goto 0x006A54
0x006A50:
    push 1s
0x006A54:
    if !pop goto 0x006A88
0x006A58:
    stog.image_alpha* = (- (int32 self.blook):image_alpha 0.03d)
0x006A88:
    push (int32 self.blook)
    goto 0x006ACC
0x006A8C:
    self.con2 = 38s
    pushenv (int32 self.blcon) 0x006AB4
0x006AA8:
    call (instance_destroy[]:int32 )
0x006AB4:
    popenv 0x006AA8
0x006AB8:
    stog.alarm[4s] = 60s
0x006ACC:
    if !(== self.con2 39s) goto 0x006B24
0x006AE0:
    stog.alarm[11s] = 10s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con2 = 40s
0x006B24:
    exit
