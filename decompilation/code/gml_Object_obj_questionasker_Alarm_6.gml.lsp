0x000000:
    stog.msg[0s] = "ERROR? %%"
    if !(!= self.correct self.answer) goto 0x000204
0x000030:
    [obj_mettatonb_quiz].right = 1s
    call (instance_create[]:int32 (var 296s) (- 301.y 60s) (+ 301.x 94s))
    call (snd_play[]:int32 (var 24s))
    [obj_heart].movement = 99s
    stog.alarm[5s] = 40s
    if !(== self.q 1s) goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "HAHAHA, YOU WISH!&WRONG!"
0x0000D0:
    if !(== self.q 2s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "WRONG! IF ONLY ALPHYS&COULD HELP!"
0x0000FC:
    if !(== self.q 3s) goto 0x000128
0x000110:
    stog.msg[0s] = "NOPE! TOO BAD ALPHYS&CAN'T HELP!"
0x000128:
    if !(== self.q 4s) goto 0x000154
0x00013C:
    stog.msg[0s] = "WRONG!!! WRONG!!!&WROOOOOOOONG!!"
0x000154:
    if !(== self.q 5s) goto 0x000180
0x000168:
    stog.msg[0s] = "COMPLETELY UTTERLY&WRONG!!!!!!"
0x000180:
    if !(== self.q 6s) goto 0x0001AC
0x000194:
    stog.msg[0s] = "BOY, THAT'S&EMBARRASSING, HUH?"
0x0001AC:
    if !(== self.q 7s) goto 0x0001D8
0x0001C0:
    stog.msg[0s] = "TIME'S UP!&GUESS THAT'S A NO?? "
0x0001D8:
    if !(== self.q 8s) goto 0x000204
0x0001EC:
    stog.msg[0s] = "NO NO NO!&CAN'T YOU READ!?"
0x000204:
    if !(== self.correct self.answer) goto 0x00037C
0x00021C:
    if !(== self.q 1s) goto 0x000248
0x000230:
    stog.msg[0s] = "RIGHT! SOUNDS LIKE&YOU GET IT!"
0x000248:
    if !(== self.q 2s) goto 0x000274
0x00025C:
    stog.msg[0s] = "CORRECT! WHAT A&TERRIFIC ANSWER!"
0x000274:
    if !(== self.q 3s) goto 0x0002A0
0x000288:
    stog.msg[0s] = "TOO EASY FOR&YOU, HUH??????????"
0x0002A0:
    if !(== self.q 4s) goto 0x0002CC
0x0002B4:
    stog.msg[0s] = "WONDERFUL! I'M&ASTOUNDED, FOLKS!"
0x0002CC:
    if !(== self.q 5s) goto 0x0002F8
0x0002E0:
    stog.msg[0s] = "CORRECT! YOU'RE SO&LUCKY TODAY!!!"
0x0002F8:
    if !(== self.q 6s) goto 0x000324
0x00030C:
    stog.msg[0s] = "I'M SO FLATTERED YOU&REMEMBERED!"
0x000324:
    if !(== self.q 7s) goto 0x000350
0x000338:
    stog.msg[0s] = "GREAT ANSWER!&I LOVE IT!!!!!!!"
0x000350:
    if !(== self.q 8s) goto 0x00037C
0x000364:
    stog.msg[0s] = "OF COURSE THAT&WAS EASY FOR YOU!"
0x00037C:
    if !(!= self.q 6s) goto 0x0003C0
0x000390:
    call (scr_blcon_x[]:int32 (- 301.y 100s) (+ 301.x 95s))
    goto 0x0003EC
0x0003C0:
    call (scr_blcon_x[]:int32 (- 301.y 170s) (+ 301.x 95s))
0x0003EC:
    stog.msg[0s] = "* The quiz show continues."
0x000404:
    exit
