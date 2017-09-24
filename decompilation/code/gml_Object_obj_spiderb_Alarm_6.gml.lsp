0x000000:
    global.typer = 33s
    self.blcontype = 1s
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "What is it,&deary?/%%"
    if !(> self.talktime 0s) goto 0x000228
0x000084:
    if !(>= self.talktime 9s) goto 0x0000B0
0x000098:
    stog.msg[0s] = ".../%%"
0x0000B0:
    if !(== self.talktime 8s) goto 0x0000DC
0x0000C4:
    stog.msg[0s] = "No, no, it's&time to go~/%%"
0x0000DC:
    if !(== self.talktime 7s) goto 0x000108
0x0000F0:
    stog.msg[0s] = "...&well... maybe&ONE little&nibble~~/%%"
0x000108:
    if !(== self.talktime 6s) goto 0x000134
0x00011C:
    stog.msg[0s] = "Just kidding,&of course~/%%"
0x000134:
    if !(== self.talktime 5s) goto 0x000160
0x000148:
    stog.msg[0s] = "If you don't mind&being gobbled up~&Ahuhuhu~/%%"
0x000160:
    if !(== self.talktime 4s) goto 0x00018C
0x000174:
    stog.msg[0s] = "Ahuhuhuhu~&Well, I don't&mind keeping&you here~/%%"
0x00018C:
    if !(== self.talktime 3s) goto 0x0001B8
0x0001A0:
    stog.msg[0s] = "Feeling comfortable&trapped in that&web?/%%"
0x0001B8:
    if !(== self.talktime 2s) goto 0x0001E4
0x0001CC:
    stog.msg[0s] = "It's time to go~/%%"
0x0001E4:
    if !(== self.talktime 1s) goto 0x000210
0x0001F8:
    stog.msg[0s] = "Ahuhuhu~&What are you&doing~/%%"
0x000210:
    self.talktime = (+ self.talktime 1s)
0x000228:
    stog.msg[1s] = "%%%"
    if !(== self.turnamt 0s) goto 0x00026C
0x000254:
    stog.msg[0s] = "Why so pale?&You should be proud~/%%"
0x00026C:
    if !(== self.turnamt 1s) goto 0x000298
0x000280:
    stog.msg[0s] = "Proud that you're&going to make a&delicious cake~&Ahuhuhu~/%%"
0x000298:
    if !(== self.turnamt 2s) goto 0x0002C4
0x0002AC:
    stog.msg[0s] = "Let you go^1?&Don't be silly~/%%"
0x0002C4:
    if !(== self.turnamt 3s) goto 0x00031C
0x0002D8:
    stog.msg[0s] = "Your SOUL is going&to make every spider&very happy~~~/%%"
    if !(== self.murder 1s) goto 0x00031C
0x000304:
    stog.msg[0s] = "You're scaring off&all my customers!/%%"
0x00031C:
    if !(== self.turnamt 4s) goto 0x000360
0x000330:
    stog.msg[0s] = "Oh, how rude of me!&I almost forgot&to introduce you&to my pet~/"
    stog.msg[1s] = "It's breakfast time,&isn't it?&Have fun, you two~ /%%"
0x000360:
    if !(== self.turnamt 5s) goto 0x00038C
0x000374:
    stog.msg[0s] = "The person who warned&us about you.../%%"
0x00038C:
    if !(== self.turnamt 6s) goto 0x0003E4
0x0003A0:
    stog.msg[0s] = "Offered us a LOT of&money for your SOUL./%%"
    if !(== self.murder 1s) goto 0x0003E4
0x0003CC:
    stog.msg[0s] = "Looked like a total&nerd./%%"
0x0003E4:
    if !(== self.turnamt 7s) goto 0x00043C
0x0003F8:
    stog.msg[0s] = "They had such a sweet&smile~ and... ahuhu~/%%"
    if !(== self.murder 1s) goto 0x00043C
0x000424:
    stog.msg[0s] = "She was very&adamant I run away&with her~~~&Ahuhuhu~~~/%%"
0x00043C:
    if !(== self.turnamt 8s) goto 0x000494
0x000450:
    stog.msg[0s] = "It's strange, but&I swore I saw them&in the shadows...&Changing shape...?/%%"
    if !(== self.murder 1s) goto 0x000494
0x00047C:
    stog.msg[0s] = "She even left a&route for me to&escape from~/%%"
0x000494:
    if !(== self.turnamt 9s) goto 0x0004C0
0x0004A8:
    stog.msg[0s] = "Oh, it's lunch time,&isn't it?&And I forgot to&feed my pet~/%%"
0x0004C0:
    if !(== self.turnamt 10s) goto 0x000518
0x0004D4:
    stog.msg[0s] = "With that money,&the spider clans&can finally be&reunited~/%%"
    if !(== self.murder 1s) goto 0x000518
0x000500:
    stog.msg[0s] = "She said she would&block off the rest&of Hotland after I&followed her~/%%"
0x000518:
    if !(== self.turnamt 11s) goto 0x000588
0x00052C:
    stog.msg[0s] = "You haven't heard?&Spiders have been&trapped in the RUINS&for generations!/%%"
    if !(== self.murder 1s) goto 0x000570
0x000558:
    stog.msg[0s] = "Foolish nerd~&A spider NEVER leaves&her web~/"
0x000570:
    stog.msg[1s] = "(Except to sell&pastries~)/%%"
0x000588:
    if !(== self.turnamt 12s) goto 0x0005E0
0x00059C:
    stog.msg[0s] = "Even if they go&under the door,&Snowdin's fatal cold&is impassable alone./%%"
    if !(== self.murder 1s) goto 0x0005E0
0x0005C8:
    stog.msg[0s] = "Ah^1, but I do feel&a little regret&over it now.../%%"
0x0005E0:
    if !(== self.turnamt 13s) goto 0x000638
0x0005F4:
    stog.msg[0s] = "But with the money&from your SOUL, we'll&be able to rent&them a heated limo~/%%"
    if !(== self.murder 1s) goto 0x000638
0x000620:
    stog.msg[0s] = "Yes^1, I should have&wrapped her up when&I had the chance~/%%"
0x000638:
    if !(== self.turnamt 14s) goto 0x0006A8
0x00064C:
    stog.msg[0s] = "And with all of&the leftovers...^1?&We could have a&nice vacation~/"
    stog.msg[1s] = "Or even build a&spider baseball&field~/%%"
    if !(== self.murder 1s) goto 0x0006A8
0x000690:
    stog.msg[0s] = "She looked like she&would have made a&juicy donut~~~/%%"
0x0006A8:
    if !(== self.turnamt 15s) goto 0x0006D4
0x0006BC:
    stog.msg[0s] = "But enough of that...&It's time for&dinner, isn't it?&Ahuhuhu~/%%"
0x0006D4:
    if !(== self.con 0s) goto 0x000700
0x0006E8:
    stog.msg[0s] = "Don't look so&blue^1, my deary~/%%"
0x000700:
    if !(== self.blcontype 0s) goto 0x000754
0x000714:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.ystart 35s) (+ (+ self.xstart 105s) 60s))
0x000754:
    if !(== self.blcontype 1s) goto 0x0007A8
0x000768:
    self.blcon = (instance_create[]:int32 (var 187s) (- self.ystart 10s) (+ (+ self.xstart 110s) 60s))
0x0007A8:
    if !(== self.blcontype 0s) goto 0x00080C
0x0007BC:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x00080C:
    if !(== self.blcontype 1s) goto 0x000870
0x000820:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x000870:
    global.border = 21s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    self.blconactive = 1s
    if !(== self.purpletime 1s) goto 0x000940
0x00092C:
    call (event_user[]:int32 (var 2s))
0x000940:
    exit
