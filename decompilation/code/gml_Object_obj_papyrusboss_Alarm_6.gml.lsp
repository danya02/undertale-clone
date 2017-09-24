0x000000:
    global.msc = 0s
    if !(== self.stalk 0s) goto 0x00005C
0x000020:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    goto 0x00006C
0x00005C:
    self.blcon = self.sblcon
0x00006C:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "  ..."
    if !(== self.conversation 0s) goto 0x0000EC
0x0000D8:
    push (== global.talked 91s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x00010C
0x0000F4:
    stog.msg[0s] = " OH^1, I SHOULD& HAVE BROUGHT ONE&  OF THOSE."
0x00010C:
    if !(== self.conversation 0s) goto 0x00015C
0x000120:
    if !(== self.whatiheard -1s) goto 0x00015C
0x000134:
    if !(!= global.talked 91s) goto 0x00015C
0x000148:
    push (== self.murder 0s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000228
0x000164:
    self.talkify = 1s
    stog.alarm[5s] = -1s
    push -5s
    if !(< (int32 self.myself):monsterhp self.prevhp) goto 0x0001C8
0x0001AC:
    stog.msg[0s] = " SO YOU'RE& SERIOUS.../"
    goto 0x0001E0
0x0001C8:
    stog.msg[0s] = " SO YOU WON'T& FIGHT.../"
0x0001E0:
    stog.msg[1s] = " THEN^1, LET'S SEE& IF YOU CAN HANDLE& MY FABLED& 'BLUE ATTACK!'/%%"
    stog.msg[2s] = "%%%"
    self.conversation = 1s
    self.mycommand = -1s
0x000228:
    push -5s
    if !(<= (int32 self.myself):monsterhp 140s) goto 0x000274
0x00024C:
    if !(<= self.fighto 14s) goto 0x000274
0x000260:
    push (< self.xfight 4s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x000294
0x00027C:
    self.fighto = 14s
    self.xfight = 4s
0x000294:
    push -5s
    if !(<= (int32 self.myself):monsterhp 80s) goto 0x0002CC
0x0002B8:
    push (< self.fighto 15s)
    goto 0x0002D0
0x0002CC:
    push 0s
0x0002D0:
    if !pop goto 0x0002EC
0x0002D4:
    self.fighto = 15s
    self.xfight = 0s
0x0002EC:
    if !(== self.truefight 1s) goto 0x000964
0x000300:
    self.talkify = 0s
    if !(== self.fighto -1s) goto 0x000338
0x000320:
    stog.msg[0s] = " BEHOLD!"
0x000338:
    if !(== self.fighto -1s) goto 0x000368
0x00034C:
    push -5s
    push (== 66s:flag 1s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x000388
0x000370:
    stog.msg[0s] = " HMMM... I WONDER& WHAT I SHOULD& WEAR..."
0x000388:
    if !(== self.fighto 0s) goto 0x0003B4
0x00039C:
    stog.msg[0s] = " HOW HIGH CAN YOU& JUMP?"
0x0003B4:
    if !(== self.fighto 0s) goto 0x0003E4
0x0003C8:
    push -5s
    push (== 66s:flag 1s)
    goto 0x0003E8
0x0003E4:
    push 0s
0x0003E8:
    if !pop goto 0x000404
0x0003EC:
    stog.msg[0s] = " WHAT!? I'M NOT& THINKING ABOUT& THAT DATE THING!!"
0x000404:
    if !(== self.fighto 0s) goto 0x000444
0x000418:
    if !(< self.hearthp2 self.hearthp) goto 0x000444
0x000430:
    push (== self.xxtalk 0s)
    goto 0x000448
0x000444:
    push 0s
0x000448:
    if !pop goto 0x00047C
0x00044C:
    stog.msg[0s] = " TRY HOLDING THE& 'UP' BUTTON TO& JUMP!!!"
    self.fighto = -1s
    self.xxtalk = 1s
0x00047C:
    if !(== self.fighto 1s) goto 0x0004A8
0x000490:
    stog.msg[0s] = "\\X YEAH!& DON'T MAKE ME& USE MY \\RSPECIAL& ATTACK\\X!"
0x0004A8:
    if !(== self.fighto 1s) goto 0x0004E8
0x0004BC:
    if !(< self.hearthp2 self.hearthp) goto 0x0004E8
0x0004D4:
    push (< self.xxtalk 2s)
    goto 0x0004EC
0x0004E8:
    push 0s
0x0004EC:
    if !pop goto 0x000520
0x0004F0:
    stog.msg[0s] = " HOLD 'UP' LONGER& TO JUMP HIGHER!& JEEZ!!!"
    self.fighto = 0s
    self.xxtalk = 2s
0x000520:
    if !(== self.fighto 2s) goto 0x00054C
0x000534:
    stog.msg[0s] = " I CAN ALMOST& TASTE MY FUTURE& POPULARITY!!!"
0x00054C:
    if !(== self.fighto 3s) goto 0x000578
0x000560:
    stog.msg[0s] = " PAPYRUS:& HEAD OF THE& ROYAL GUARD!"
0x000578:
    if !(== self.fighto 4s) goto 0x0005A4
0x00058C:
    stog.msg[0s] = " PAPYRUS:& UNPARALLELED& SPAGHETTORE!"
0x0005A4:
    if !(== self.fighto 5s) goto 0x0005D0
0x0005B8:
    stog.msg[0s] = " UNDYNE WILL BE& REALLY PROUD& OF ME!!"
0x0005D0:
    if !(== self.fighto 6s) goto 0x0005FC
0x0005E4:
    stog.msg[0s] = " THE KING WILL& TRIM A HEDGE& IN THE SHAPE& OF MY SMILE!!!"
0x0005FC:
    if !(== self.fighto 7s) goto 0x000628
0x000610:
    stog.msg[0s] = " MY BROTHER WILL& ... WELL, HE& WON'T CHANGE& VERY MUCH."
0x000628:
    if !(== self.fighto 8s) goto 0x000654
0x00063C:
    stog.msg[0s] = " I'LL HAVE LOTS& OF ADMIRERS!!& BUT..."
0x000654:
    if !(== self.fighto 9s) goto 0x000680
0x000668:
    stog.msg[0s] = " HOW WILL I& KNOW IF PEOPLE& SINCERELY LIKE& ME???"
0x000680:
    if !(== self.fighto 9s) goto 0x0006B0
0x000694:
    push -5s
    push (== 66s:flag 1s)
    goto 0x0006B4
0x0006B0:
    push 0s
0x0006B4:
    if !pop goto 0x0006D0
0x0006B8:
    stog.msg[0s] = " WILL ANYONE LIKE& ME AS SINCERELY& AS YOU?"
0x0006D0:
    if !(== self.fighto 10s) goto 0x0006FC
0x0006E4:
    stog.msg[0s] = " SOMEONE LIKE& YOU IS REALLY& RARE..."
0x0006FC:
    if !(== self.fighto 11s) goto 0x000728
0x000710:
    stog.msg[0s] = " I DON'T THINK& THEY'LL LET YOU& GO..."
0x000728:
    if !(== self.fighto 11s) goto 0x000758
0x00073C:
    push -5s
    push (== 66s:flag 1s)
    goto 0x00075C
0x000758:
    push 0s
0x00075C:
    if !pop goto 0x000778
0x000760:
    stog.msg[0s] = " AND DATING MIGHT& BE KIND OF& HARD..."
0x000778:
    if !(== self.fighto 12s) goto 0x0007A4
0x00078C:
    stog.msg[0s] = " AFTER YOU'RE& CAPTURED AND& SENT AWAY."
0x0007A4:
    if !(== self.fighto 13s) goto 0x0007D0
0x0007B8:
    stog.msg[0s] = " URGH...& WHO CARES!& GIVE UP!!"
0x0007D0:
    if !(== self.fighto 14s) goto 0x0007F8
0x0007E4:
    push (== self.xfight 0s)
    goto 0x0007FC
0x0007F8:
    push 0s
0x0007FC:
    if !pop goto 0x000818
0x000800:
    stog.msg[0s] = "\\X GIVE UP OR& FACE MY...& \\RSPECIAL ATTACK\\X!!!"
0x000818:
    if !(== self.fighto 14s) goto 0x000840
0x00082C:
    push (== self.xfight 1s)
    goto 0x000844
0x000840:
    push 0s
0x000844:
    if !pop goto 0x000860
0x000848:
    stog.msg[0s] = "\\X YEAH!!!& VERY SOON I WILL& USE MY& \\RSPECIAL ATTACK\\X! "
0x000860:
    if !(== self.fighto 14s) goto 0x000888
0x000874:
    push (== self.xfight 2s)
    goto 0x00088C
0x000888:
    push 0s
0x00088C:
    if !pop goto 0x0008A8
0x000890:
    stog.msg[0s] = "\\X NOT TOO LONG& AND I WILL& USE THAT& \\RSPECIAL ATTACK\\X!!!"
0x0008A8:
    if !(== self.fighto 14s) goto 0x0008D0
0x0008BC:
    push (> self.xfight 2s)
    goto 0x0008D4
0x0008D0:
    push 0s
0x0008D4:
    if !pop goto 0x0008F0
0x0008D8:
    stog.msg[0s] = "\\X THIS IS YOUR& LAST CHANCE...& BEFORE MY& \\RSPECIAL ATTACK\\X!!"
0x0008F0:
    if !(== self.fighto 14s) goto 0x000918
0x000904:
    push (> self.xfight 3s)
    goto 0x00091C
0x000918:
    push 0s
0x00091C:
    if !pop goto 0x000938
0x000920:
    stog.msg[0s] = "\\X BEHOLD...!& MY \\RSPECIAL& ATTACK\\X!"
0x000938:
    if !(== self.fighto 15s) goto 0x000964
0x00094C:
    stog.msg[0s] = " *SIGH* HERE'S AN& ABSOLUTELY& NORMAL ATTACK."
0x000964:
    if !(> self.whatiheard -1s) goto 0x00098C
0x000978:
    push (< self.fighto 2s)
    goto 0x000990
0x00098C:
    push 0s
0x000990:
    if !pop goto 0x000B14
0x000994:
    if !(< self.fighto 0s) goto 0x000B14
0x0009A8:
    self.talkify = 0s
    if !(== self.whatiheard 0s) goto 0x0009DC
0x0009C8:
    push (< self.fighto 2s)
    goto 0x0009E0
0x0009DC:
    push 0s
0x0009E0:
    if !pop goto 0x0009FC
0x0009E4:
    stog.msg[0s] = " NYEH HEH HEH!"
0x0009FC:
    if !(== self.whatiheard 1s) goto 0x000A28
0x000A10:
    stog.msg[0s] = " I DON'T DESERVE& SUCH HOSPITALITY& FROM YOU ..."
0x000A28:
    if !(== self.whatiheard 1s) goto 0x000A50
0x000A3C:
    push (== self.insult 2s)
    goto 0x000A54
0x000A50:
    push 0s
0x000A54:
    if !pop goto 0x000A70
0x000A58:
    stog.msg[0s] = " YOUR BARBS HIDE A& HIDDEN AFFECTION^1!& YOU EMOTIONAL& CACTUS!"
0x000A70:
    if !(== self.whatiheard 1s) goto 0x000A98
0x000A84:
    push (> self.insult 2s)
    goto 0x000A9C
0x000A98:
    push 0s
0x000A9C:
    if !pop goto 0x000AB8
0x000AA0:
    stog.msg[0s] = " DON'T WASTE YOUR& WORDS ON ME!"
0x000AB8:
    if (== self.whatiheard 6s) goto 0x000AF4
0x000ACC:
    if (== self.whatiheard 7s) goto 0x000AF4
0x000AE0:
    push (== self.whatiheard 3s)
    goto 0x000AF8
0x000AF4:
    push 1s
0x000AF8:
    if !pop goto 0x000B14
0x000AFC:
    stog.msg[0s] = " LET'S DATE& L-LATER!^1!& AFTER I CAPTURE& YOU!"
0x000B14:
    if !(== self.murder 1s) goto 0x000B40
0x000B28:
    stog.msg[0s] = "  ..."
0x000B40:
    global.typer = 22s
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 5s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    self.stalk = 0s
0x000C44:
    exit
