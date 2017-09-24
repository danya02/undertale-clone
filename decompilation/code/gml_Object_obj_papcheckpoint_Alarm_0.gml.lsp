0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* There's some narration on this&  cardboard box./"
    stog.msg[1s] = "\\TP %"
    stog.msg[2s] = "YOU OBSERVE THE&WELL-CRAFTED&SENTRY STATION./"
    stog.msg[3s] = "WHO COULD HAVE&BUILT THIS^1, YOU&PONDER.../"
    stog.msg[4s] = "I BET IT WAS&THAT VERY FAMOUS&ROYAL GUARDSMAN!/"
    stog.msg[5s] = "(NOTE: NOT YET A&VERY FAMOUS&ROYAL GUARDSMAN^1.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000118
0x0000E8:
    stog.msg[5s] = "(NOTE: NOT YET A&VERY FAMOUS&ROYAL GUARDSMAN^1.)/"
    stog.msg[6s] = "(UPDATE: AM I A&ROYAL GUARDSMAN&YET???)/%%"
0x000118:
    if !(== self.room 60s) goto 0x000144
0x00012C:
    stog.msg[0s] = "* These instructions&  are written in&  chicken scratch./%%"
0x000144:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00016C:
    exit
