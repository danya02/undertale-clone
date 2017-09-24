0x000000:
    self.goodot = 0s
    global.msc = 0s
    push self.prevhp
    if !(== -5s (int32 self.myself):monsterhp) goto 0x00007C
0x000040:
    self.goodot = 1s
    if !(== self.p_mode 0s) goto 0x000078
0x000060:
    self.myplot = (+ self.myplot 1s)
0x000078:
    goto 0x0000A0
0x00007C:
    self.goodot = 0s
    self.hitplot = (+ self.hitplot 1s)
0x0000A0:
    push -5s
    self.prevhp = (int32 self.myself):monsterhp
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "AHHHHHHH!!!!!/%%"
    if !(== self.myplot 5s) goto 0x000154
0x00012C:
    if !(== self.p_mode 1s) goto 0x000154
0x000140:
    push (== self.goodot 1s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000188
0x00015C:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1AHHHHH!!!/%%"
0x000188:
    if !(== self.hitplot 1s) goto 0x0001FC
0x00019C:
    stog.msg[0s] = "\\E1Oh!&Whoops!&That hurt!/"
    stog.msg[1s] = "\\E2So sorry^1, I must&have gotten in the&way!/"
    stog.msg[2s] = "\\E1I really shouldn't&stand so close/"
    stog.msg[3s] = "\\E4Ah I'm just being&troublesome/%%"
0x0001FC:
    if !(== self.hitplot 2s) goto 0x000258
0x000210:
    stog.msg[0s] = "\\E4Darn it, I keep&getting in the way/"
    stog.msg[1s] = "\\E2So sorry, I'm such&an oaf/"
    stog.msg[2s] = "\\E2Wandering in front&of you.../%%"
0x000258:
    if !(== self.hitplot 3s) goto 0x0002E4
0x00026C:
    stog.msg[0s] = "\\E1.../"
    stog.msg[1s] = "Are you...&trying to KILL me?/"
    stog.msg[2s] = "\\E4... so sorry, but&I've had a really&tough year./"
    stog.msg[3s] = "I don't know if I&could take you&killing me on top&of everything./"
    stog.msg[4s] = "\\E2You should find&someone else to&kill.&So sorry./%%"
0x0002E4:
    if !(== self.hitplot 4s) goto 0x000370
0x0002F8:
    stog.msg[0s] = "\\E1?????/"
    stog.msg[1s] = "\\E5I just said I'm&not interested in&the offer!!/"
    stog.msg[2s] = "\\E5.../"
    stog.msg[3s] = "\\E2Sorry, I must not&have enunciated&clearly enough./"
    stog.msg[4s] = "\\E2I am not interested&in being killed.&Thank you very much./%%"
0x000370:
    if !(== self.hitplot 5s) goto 0x0004A4
0x000384:
    stog.msg[0s] = "\\E5Look, stranger/"
    stog.msg[1s] = "\\E4I... I guess I'm&going to have to&tell the truth./"
    stog.msg[2s] = "My whole life, I've&never been worth a&lot of EXP./"
    stog.msg[3s] = "Everyone else at my&work, in my classes,/"
    stog.msg[4s] = "Would raise a&person's LV by 4&or 5 when&destroyed.../"
    stog.msg[5s] = "\\E1But me?/"
    stog.msg[6s] = "\\E6I wouldn't even&increase your LV&at LV 1./"
    stog.msg[7s] = "\\E4For this reason...&I...&I've always been.../"
    stog.msg[8s] = "I've never been&very good at&getting killed.&So.../"
    stog.msg[9s] = "\\E3I'm flattered&that you...&Want to destroy me./"
    stog.msg[10s] = "\\E8But you are making&a big waste of&your time!!/"
    stog.msg[11s] = "\\E8Stop killing me!!!/%%"
0x0004A4:
    if !(== self.hitplot 6s) goto 0x000500
0x0004B8:
    stog.msg[0s] = "\\E2OK, OK. Hm./"
    stog.msg[1s] = ".../"
    stog.msg[2s] = "\\E7If you stop killing&me, I'll pay you&200G./%%"
0x000500:
    if !(== self.hitplot 7s) goto 0x00052C
0x000514:
    stog.msg[0s] = "\\E8220G?/%%"
0x00052C:
    if !(== self.hitplot 8s) goto 0x000570
0x000540:
    stog.msg[0s] = "\\E9.../"
    stog.msg[1s] = "\\E8300G?/%%"
0x000570:
    if !(== self.hitplot 9s) goto 0x0006BC
0x000584:
    stog.msg[0s] = "\\E1W..^1.&Wait a second./"
    stog.msg[1s] = "\\E1You trying to&kill me...&C...&could it be...?/"
    stog.msg[2s] = "\\E6Because you&don't like me&very much...?/"
    stog.msg[3s] = "\\E2No, no, that&can't be!/"
    stog.msg[4s] = "This is just a&friendly, um,&killing between&acquaintances!!!/"
    stog.msg[5s] = "\\E8Pals... we're...&we're still pals,&right!!/"
    stog.msg[6s] = "\\E1OK, maybe not&PALS, but, uh,/"
    stog.msg[7s] = "\\E2Friendly strangers?/"
    stog.msg[8s] = "\\E8You know, just&one step away from&being buds!!!/"
    stog.msg[9s] = "\\E0I mean, I was&practically.../"
    stog.msg[10s] = "\\E0I was about to&crack open the&sparkling cider!/"
    stog.msg[11s] = "\\E2Pull out some&baguettes and some&swiss cheese!/"
    stog.msg[12s] = "\\E8BLOW ON A FREAKING&PARTY HORN!!!/%%"
0x0006BC:
    if !(== self.hitplot 10s) goto 0x000790
0x0006D0:
    stog.msg[0s] = "\\E1N... no, you don't&like me either,&huh...?/"
    stog.msg[1s] = "\\E4Nobody likes me...&they're just putting&up with me/"
    stog.msg[2s] = "\\E6I'm just annoying&you... I should just&leave/"
    stog.msg[3s] = "\\E1ARRRRRGHHHH!!!&Why am I such an&idiot??!?!!!!/"
    stog.msg[4s] = "How did I not&see it before!!!/"
    stog.msg[5s] = "\\E1You weren't killing&me because you&LIKED me!!!/"
    stog.msg[6s] = "\\E6NOBODY does that!/"
    stog.msg[7s] = " That's NOT a thing!/%%"
0x000790:
    if !(== self.hitplot 11s) goto 0x000840
0x0007A4:
    pushenv 189s 0x0007B8
0x0007AC:
    call (instance_destroy[]:int32 )
0x0007B8:
    popenv 0x0007AC
0x0007BC:
    stog.msg[0s] = "\\E2Oh. Sorry. I was&being too loud.&Ugh./"
    stog.msg[1s] = "\\E4I'm wasting your&time, aren't I...?/"
    stog.msg[2s] = "\\E9.../"
    stog.msg[3s] = "\\E1... whew, I feel&really...&strange./"
    stog.msg[4s] = "\\E2I think I need to&go home and lie&down./%%"
    self.d_con = 1s
0x000840:
    if !(== self.goodot 1s) goto 0x000D9C
0x000854:
    if !(== self.myplot 1s) goto 0x0008F8
0x000868:
    stog.msg[0s] = "\\E1Oh, I'm so sorry!&How clumsy of me...&I've bumped into you/"
    stog.msg[1s] = "\\E6I'm such a klutz./"
    stog.msg[2s] = "I was just here to&find something to&draw, and.../"
    stog.msg[3s] = "\\E2Oh no, it's ok!&It's OK!/"
    stog.msg[4s] = "\\E0I'll give you a&gift to make up&for your troubles./"
    stog.msg[5s] = "\\E0Let me look in&my vest!/%%"
0x0008F8:
    if !(== self.myplot 2s) goto 0x00099C
0x00090C:
    stog.msg[0s] = "\\E6Ummm, I couldn't&find anything I&want to give away./"
    stog.msg[1s] = "\\E2Wait, wait!/"
    stog.msg[2s] = "\\M4I've got my notebook!/"
    stog.msg[3s] = "\\E0I can draw you a&picture in it!/"
    stog.msg[4s] = "\\E7I'm quite the artist,&you know./"
    stog.msg[5s] = "\\E8I'll draw you a&GREAT picture!!!/%%"
0x00099C:
    if !(== self.myplot 3s) goto 0x000A0C
0x0009B0:
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E6S.. sorry...&The drawing didn't&come out very well./"
    stog.msg[1s] = "\\E2Wait^1!&I know the problem!/"
    stog.msg[2s] = "\\M0I just have to&find a better piece&of paper for it!/%%"
0x000A0C:
    if !(== self.myplot 4s) goto 0x000A80
0x000A20:
    stog.msg[0s] = "\\E6None of my papers&are good enough to&use.../"
    stog.msg[1s] = "\\E2IT'S OK!!!/"
    stog.msg[2s] = "\\E8I know what I&can do!^1!&I'll use my magic&pencil!/"
    stog.msg[3s] = "\\E0It has to be under&some of these papers&somewhere!!!!/%%"
0x000A80:
    if !(== self.myplot 5s) goto 0x000AA8
0x000A94:
    push (== self.p_mode 1s)
    goto 0x000AAC
0x000AA8:
    push 0s
0x000AAC:
    if !pop goto 0x000ADC
0x000AB0:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1AHHHHH!!!/%%"
0x000ADC:
    if !(== self.myplot 5s) goto 0x000B04
0x000AF0:
    push (== self.p_mode 0s)
    goto 0x000B08
0x000B04:
    push 0s
0x000B08:
    if !pop goto 0x000B84
0x000B0C:
    stog.msg[0s] = "\\M5H\\E8ere!&I got it!/"
    stog.msg[1s] = "My magic pencil is&amazing!/"
    stog.msg[2s] = "\\E2Everything I draw&with it looks.../"
    stog.msg[3s] = "\\E8COMPLETELY REAL!/%%"
    self.p_con = 1s
    self.p_mode = 1s
0x000B84:
    if !(== self.myplot 6s) goto 0x000BDC
0x000B98:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1I've messed up.&I've really messed up.&Oh no./"
    stog.msg[1s] = "\\E2I'll just use a&regular pencil!&I'll try my best!/%%"
0x000BDC:
    if !(== self.myplot 7s) goto 0x000D9C
0x000BF0:
    self.mercymod = 222s
    stog.flag[20s] = 3s
    stog.msg[0s] = "\\E8Are you ready!?/"
    stog.msg[1s] = "\\E0I just finished./"
    stog.msg[2s] = "\\M6Here's your picture!&What do you think!?/"
    stog.msg[3s] = "\\E2It's a representation&of your deepest&essence.../"
    stog.msg[4s] = "\\E7It's great^1, right!?/"
    stog.msg[5s] = ".../"
    stog.msg[6s] = "\\E8(They think my art&is terrible.)/"
    stog.msg[7s] = "\\M0Well!/"
    stog.msg[8s] = "\\E2I'll leave you with&that thought!/"
    stog.msg[9s] = "\\E7Goodbye!/"
    stog.msg[10s] = "\\E8See you later!/"
    stog.msg[11s] = "\\E2Sayonara!/"
    stog.msg[12s] = "\\E1Nice knowing ya!/"
    stog.msg[13s] = "\\E7Hasta la vista./"
    stog.msg[14s] = "\\E9.../"
    stog.msg[15s] = "\\E2I should leave./%%"
    self.n_con = 1s
0x000D9C:
    global.typer = 111s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 190s))
    push -1500s
    stog.depth* = (int32 self.blcon)
    push -1600s
    stog.depth* = (int32 self.writer)
    global.border = 17s
    if !(== self.p_mode 0s) goto 0x000E88
0x000E24:
    if (== self.myplot 0s) goto 0x000E74
0x000E38:
    if (== self.myplot 1s) goto 0x000E74
0x000E4C:
    if (== self.myplot 2s) goto 0x000E74
0x000E60:
    push (>= self.myplot 5s)
    goto 0x000E78
0x000E74:
    push 1s
0x000E78:
    if !pop goto 0x000E88
0x000E7C:
    global.border = 52s
0x000E88:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    self.talked = 2s
0x000F24:
    exit
