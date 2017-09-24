0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* It's a note from Papyrus.../"
    stog.msg[1s] = "\\TP %"
    stog.msg[2s] = "HUMAN!^1!&PLEASE ENJOY THIS&SPAGHETTI./"
    stog.msg[3s] = "(LITTLE DO YOU KNOW^1,&THIS SPAGHETTI IS&A TRAP...)/"
    stog.msg[4s] = "(DESIGNED TO ENTICE&YOU!!!)/"
    stog.msg[5s] = "(YOU'LL BE SO BUSY&EATING IT...)/"
    stog.msg[6s] = "(THAT YOU WON'T&REALIZE THAT YOU&AREN'T PROGRESSING!!)/"
    stog.msg[7s] = "(THOROUGHLY JAPED&AGAIN BY THE GREAT&PAPYRUS!!!)/"
    stog.msg[8s] = " &      NYEH-HEH-HEH^1,&         PAPYRUS/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0001C0
0x000130:
    stog.msg[0s] = "* It's a note from Papyrus.../"
    stog.msg[1s] = "\\TP %"
    stog.msg[2s] = "SEEING AS THIS&SPAGHETTI IS STILL&HERE SOMEHOW.../"
    stog.msg[3s] = "I HEREBY DONATE IT&TO THE PUBLIC./"
    stog.msg[4s] = "IT'S LIKE A&PLAYGROUND FOR&YOUR MOUTH!/"
    stog.msg[5s] = " &      NYEH-HEH-HEH^1,&         PAPYRUS/%%"
0x0001C0:
    if !(== self.room 60s) goto 0x0001EC
0x0001D4:
    stog.msg[0s] = "* It's illegible chicken-&  scratch./%%"
0x0001EC:
    if !(== self.room 75s) goto 0x000378
0x000200:
    push -5s
    if !(== 67s:flag 0s) goto 0x000234
0x00021C:
    stog.msg[0s] = "WHAT!^1?&THAT'S IMPOSSIBLE./%%"
0x000234:
    push -5s
    if !(== 67s:flag -1s) goto 0x0002B0
0x000250:
    stog.msg[2s] = "SORRY^1, I HAVE TO LOCK&YOU IN THE GUEST ROOM&UNTIL UNDYNE ARRIVES./"
    stog.msg[3s] = "FEEL FREE TO MAKE&YOURSELF AT HOME!!!/"
    stog.msg[4s] = "REFRESHMENTS AND&ACCOMODATIONS HAVE&BEEN PROVIDED./"
    stog.msg[5s] = " & - NYEHFULLY YOURS^1,&        PAPYRUS/%%"
0x0002B0:
    push -5s
    if !(== 67s:flag -2s) goto 0x000314
0x0002CC:
    stog.msg[2s] = "PLEASE ASK BEFORE&YOU ESCAPE!!!/"
    stog.msg[3s] = "WHEN YOU WENT&MISSING I GOT&WORRIED SICK!!!/"
    stog.msg[4s] = "  - SLIGHTLY&  BONETROUSLED^1,&  PAPYRUS/%%"
0x000314:
    push -5s
    if !(== 67s:flag -3s) goto 0x000378
0x000330:
    stog.msg[2s] = "IF YOU'RE JUST&LOOKING FOR A&PLACE TO STAY.../"
    stog.msg[3s] = "JUST ASK!!^1!&YOU DON'T NEED&TO FIGHT ME!!!/"
    stog.msg[4s] = " & - YOUR HOST^1,&   PAPYRUS/%%"
0x000378:
    if !(== self.room 49s) goto 0x0003BC
0x00038C:
    stog.msg[0s] = "* (This note is written&  very oddly^1, as if the paper was&  moving while it was written.)/"
    stog.msg[1s] = "* (It says...^1)&* (Out to lunch...?)/%%"
0x0003BC:
    if (== self.room 152s) goto 0x0003E4
0x0003D0:
    push (== self.room 150s)
    goto 0x0003E8
0x0003E4:
    push 1s
0x0003E8:
    if !pop goto 0x000404
0x0003EC:
    stog.msg[0s] = "* (Shoot the opposing ship!^1)&* (Move the boxes to complete&  your mission.)/%%"
0x000404:
    if (== self.room 173s) goto 0x00042C
0x000418:
    push (== self.room 175s)
    goto 0x000430
0x00042C:
    push 1s
0x000430:
    if !pop goto 0x00044C
0x000434:
    stog.msg[0s] = "* (Shoot the opposing ship!^1)&* (You have just one shot.)/%%"
0x00044C:
    if !(== self.room 182s) goto 0x000490
0x000460:
    stog.msg[0s] = "* (Hey^1!)/"
    stog.msg[1s] = "* (Go up the creepy alleyway&  on the right for some&  great deals!)/%%"
0x000490:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0004B8:
    exit
