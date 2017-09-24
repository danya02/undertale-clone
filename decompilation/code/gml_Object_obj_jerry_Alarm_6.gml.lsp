0x000000:
    if !(== self.ditch 0s) goto 0x000668
0x000014:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.ystart 100s) (- self.x 8s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(>= self.mycommand 0s) goto 0x0000CC
0x0000B8:
    push (< self.mycommand 20s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "Guys, it's COLD.&Does ANYONE care?"
0x0000EC:
    if !(>= self.mycommand 20s) goto 0x000114
0x000100:
    push (< self.mycommand 40s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000134
0x00011C:
    stog.msg[0s] = "Why are we doing&this? What a fail."
0x000134:
    if !(>= self.mycommand 40s) goto 0x00015C
0x000148:
    push (< self.mycommand 60s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x00017C
0x000164:
    stog.msg[0s] = "Wow, you guys&SUCK at this."
0x00017C:
    if !(>= self.mycommand 60s) goto 0x0001A4
0x000190:
    push (<= self.mycommand 80s)
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "SHHHH! I'm&THINKING, guys!!"
0x0001C4:
    if !(>= self.mycommand 80s) goto 0x0001EC
0x0001D8:
    push (<= self.mycommand 100s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x00020C
0x0001F4:
    stog.msg[0s] = "Ka-SIGH."
0x00020C:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0002FC
0x000220:
    if !(> self.mycommand 0s) goto 0x00024C
0x000234:
    stog.msg[0s] = "Well... can YOU&give me a ride&home?"
0x00024C:
    if !(> self.mycommand 20s) goto 0x000278
0x000260:
    stog.msg[0s] = "Huh? Did they&ditch me...? SOME&friends!"
0x000278:
    if !(> self.mycommand 40s) goto 0x0002A4
0x00028C:
    stog.msg[0s] = "Awkwarrrd."
0x0002A4:
    if !(> self.mycommand 60s) goto 0x0002D0
0x0002B8:
    stog.msg[0s] = "So, like, what&are you even&doing?"
0x0002D0:
    if !(> self.mycommand 80s) goto 0x0002FC
0x0002E4:
    stog.msg[0s] = "The wi-fi here&sucks."
0x0002FC:
    if !(== self.whatiheard 1s) goto 0x000394
0x000310:
    if !(== self.gg 0s) goto 0x00033C
0x000324:
    stog.msg[0s] = "Better&a hatter&than a&HATER."
0x00033C:
    if !(== self.gg 1s) goto 0x000368
0x000350:
    stog.msg[0s] = "Insults&won't&fix your&outfit!"
0x000368:
    if !(== self.gg 2s) goto 0x000394
0x00037C:
    stog.msg[0s] = "What?&My hat's&too loud&sorry."
0x000394:
    if !(== self.whatiheard 3s) goto 0x00042C
0x0003A8:
    if !(== self.gg 0s) goto 0x0003D4
0x0003BC:
    stog.msg[0s] = "DUH!&Who&DOESN'T&know?"
0x0003D4:
    if !(== self.gg 1s) goto 0x000400
0x0003E8:
    stog.msg[0s] = "Envious?&TOO BAD!"
0x000400:
    if !(== self.gg 2s) goto 0x00042C
0x000414:
    stog.msg[0s] = "Get your&own,&twerp."
0x00042C:
    if !(== self.whatiheard 4s) goto 0x0004B4
0x000440:
    if !(== self.gg 0s) goto 0x00046C
0x000454:
    stog.msg[0s] = "I KNEW&IT!!!&THIEF!!"
0x00046C:
    if (== self.gg 1s) goto 0x000494
0x000480:
    push (== self.gg 2s)
    goto 0x000498
0x000494:
    push 1s
0x000498:
    if !pop goto 0x0004B4
0x00049C:
    stog.msg[0s] = "HELP!!!&FASHION&POLICE!!"
0x0004B4:
    if !(== self.whatiheard 20s) goto 0x000558
0x0004C8:
    if !(== self.gg 0s) goto 0x0004F4
0x0004DC:
    stog.msg[0s] = "Hahaha!&Say something&else funny!"
0x0004F4:
    if !(== self.gg 1s) goto 0x000520
0x000508:
    stog.msg[0s] = "Haha! Wow!&Drake, you suck!"
0x000520:
    if !(== self.gg 2s) goto 0x00054C
0x000534:
    stog.msg[0s] = "Hahaha!&Where do you get&your ideas!?!"
0x00054C:
    self.mercymod = 200s
0x000558:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 3s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000668:
    exit
