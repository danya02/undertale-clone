0x000000:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.dontplay = 0s
    self.noresponse = 0s
    self.tired = 0s
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
    self.u = 0s
    push -5s
    if !(== 465s:flag 1s) goto 0x0000AC
0x0000A0:
    self.u = 1s
0x0000AC:
    if (== self.room 44s) goto 0x00084C
0x0000C4:
    if (== self.room 45s) goto 0x000934
0x0000D4:
    if (== self.room 46s) goto 0x000A1C
0x0000E4:
    if (== self.room 47s) goto 0x000ABC
0x0000F4:
    if (== self.room 48s) goto 0x000B5C
0x000104:
    if (== self.room 49s) goto 0x000C14
0x000114:
    if (== self.room 50s) goto 0x000CCC
0x000124:
    if (== self.room 51s) goto 0x000D84
0x000134:
    if (== self.room 52s) goto 0x000E24
0x000144:
    if (== self.room 53s) goto 0x000F44
0x000154:
    if (== self.room 54s) goto 0x00102C
0x000164:
    if (== self.room 55s) goto 0x001114
0x000174:
    if (== self.room 56s) goto 0x0011B4
0x000184:
    if (== self.room 57s) goto 0x0012EC
0x000194:
    if (== self.room 58s) goto 0x0013EC
0x0001A4:
    if (== self.room 59s) goto 0x0014A4
0x0001B4:
    if (== self.room 60s) goto 0x00155C
0x0001C4:
    if (== self.room 61s) goto 0x00165C
0x0001D4:
    if (== self.room 62s) goto 0x001744
0x0001E4:
    if (== self.room 63s) goto 0x0017FC
0x0001F4:
    if (== self.room 64s) goto 0x0018CC
0x000204:
    if (== self.room 65s) goto 0x00199C
0x000214:
    if (== self.room 66s) goto 0x001A54
0x000224:
    if (== self.room 67s) goto 0x001B24
0x000234:
    if (== self.room 68s) goto 0x001BDC
0x000244:
    if (== self.room 69s) goto 0x001C7C
0x000254:
    if (== self.room 71s) goto 0x001E44
0x000264:
    if (== self.room 73s) goto 0x00200C
0x000274:
    if (== self.room 74s) goto 0x002258
0x000284:
    if (== self.room 77s) goto 0x0023D8
0x000294:
    if (== self.room 76s) goto 0x002620
0x0002A4:
    if (== self.room 81s) goto 0x002708
0x0002B4:
    if (== self.room 82s) goto 0x002974
0x0002C4:
    if (== self.room 83s) goto 0x002C30
0x0002D4:
    if (== self.room 84s) goto 0x002E10
0x0002E4:
    if (== self.room 85s) goto 0x002FEC
0x0002F4:
    if (== self.room 86s) goto 0x0031B0
0x000304:
    if (== self.room 87s) goto 0x003374
0x000314:
    if (== self.room 88s) goto 0x0034F4
0x000324:
    if (== self.room 89s) goto 0x00368C
0x000334:
    if (== self.room 90s) goto 0x00370C
0x000344:
    if (== self.room 91s) goto 0x00393C
0x000354:
    if (== self.room 92s) goto 0x003B18
0x000364:
    if (== self.room 93s) goto 0x003CAC
0x000374:
    if (== self.room 94s) goto 0x003E40
0x000384:
    if (== self.room 95s) goto 0x003EC0
0x000394:
    if (== self.room 96s) goto 0x004104
0x0003A4:
    if (== self.room 98s) goto 0x00433C
0x0003B4:
    if (== self.room 99s) goto 0x0044EC
0x0003C4:
    if (== self.room 100s) goto 0x0046B4
0x0003D4:
    if (== self.room 101s) goto 0x0047D4
0x0003E4:
    if (== self.room 102s) goto 0x00496C
0x0003F4:
    if (== self.room 103s) goto 0x004AD4
0x000404:
    if (== self.room 104s) goto 0x004C6C
0x000414:
    if (== self.room 105s) goto 0x004DD4
0x000424:
    if (== self.room 106s) goto 0x004F3C
0x000434:
    if (== self.room 107s) goto 0x005108
0x000444:
    if (== self.room 108s) goto 0x005270
0x000454:
    if (== self.room 109s) goto 0x0053A8
0x000464:
    if (== self.room 113s) goto 0x005510
0x000474:
    if (== self.room 114s) goto 0x0056BC
0x000484:
    if (== self.room 115s) goto 0x005940
0x000494:
    if (== self.room 116s) goto 0x005B4C
0x0004A4:
    if (== self.room 117s) goto 0x005D98
0x0004B4:
    if (== self.room 119s) goto 0x006200
0x0004C4:
    if (== self.room 120s) goto 0x006398
0x0004D4:
    if (== self.room 121s) goto 0x006590
0x0004E4:
    if (== self.room 122s) goto 0x00680C
0x0004F4:
    if (== self.room 124s) goto 0x0069EC
0x000504:
    if (== self.room 125s) goto 0x006BCC
0x000514:
    if (== self.room 126s) goto 0x006D1C
0x000524:
    if (== self.room 127s) goto 0x006E9C
0x000534:
    if (== self.room 129s) goto 0x00701C
0x000544:
    if (== self.room 130s) goto 0x00719C
0x000554:
    if (== self.room 131s) goto 0x007464
0x000564:
    if (== self.room 132s) goto 0x0075A8
0x000574:
    if (== self.room 133s) goto 0x0078F8
0x000584:
    if (== self.room 134s) goto 0x007C3C
0x000594:
    if (== self.room 136s) goto 0x007F2C
0x0005A4:
    if (== self.room 137s) goto 0x008274
0x0005B4:
    if (== self.room 138s) goto 0x0085B8
0x0005C4:
    if (== self.room 141s) goto 0x0087A8
0x0005D4:
    if (== self.room 142s) goto 0x0089CC
0x0005E4:
    if (== self.room 143s) goto 0x008B4C
0x0005F4:
    if (== self.room 140s) goto 0x008D50
0x000604:
    if (== self.room 144s) goto 0x008F3C
0x000614:
    if (== self.room 145s) goto 0x009124
0x000624:
    if (== self.room 147s) goto 0x0092A4
0x000634:
    if (== self.room 149s) goto 0x0095EC
0x000644:
    if (== self.room 151s) goto 0x0097B4
0x000654:
    if (== self.room 153s) goto 0x00993C
0x000664:
    if (== self.room 158s) goto 0x009C44
0x000674:
    if (== self.room 162s) goto 0x009F30
0x000684:
    if (== self.room 163s) goto 0x00A1E8
0x000694:
    if (== self.room 165s) goto 0x00A514
0x0006A4:
    if (== self.room 166s) goto 0x00A6AC
0x0006B4:
    if (== self.room 167s) goto 0x00A888
0x0006C4:
    if (== self.room 170s) goto 0x00AA0C
0x0006D4:
    if (== self.room 171s) goto 0x00AAF4
0x0006E4:
    if (== self.room 172s) goto 0x00ACDC
0x0006F4:
    if (== self.room 164s) goto 0x00AEC8
0x000704:
    if (== self.room 179s) goto 0x00B138
0x000714:
    if (== self.room 181s) goto 0x00B380
0x000724:
    if (== self.room 183s) goto 0x00B5FC
0x000734:
    if (== self.room 184s) goto 0x00B81C
0x000744:
    if (== self.room 185s) goto 0x00BA34
0x000754:
    if (== self.room 186s) goto 0x00BED8
0x000764:
    if (== self.room 214s) goto 0x00C1F8
0x000774:
    if (== self.room 156s) goto 0x00C448
0x000784:
    if (== self.room 157s) goto 0x00C694
0x000794:
    if (== self.room 168s) goto 0x00C948
0x0007A4:
    if (== self.room 169s) goto 0x00CD24
0x0007B4:
    if (== self.room 187s) goto 0x00D038
0x0007C4:
    if (== self.room 159s) goto 0x00D250
0x0007D4:
    if (== self.room 161s) goto 0x00D564
0x0007E4:
    if (== self.room 180s) goto 0x00D7A0
0x0007F4:
    if (== self.room 188s) goto 0x00D954
0x000804:
    if (== self.room 178s) goto 0x00DC68
0x000814:
    if (== self.room 176s) goto 0x00DFF0
0x000824:
    if (== self.room 177s) goto 0x00E33C
0x000834:
    if (== self.room 139s) goto 0x00E5B4
0x000844:
    push self.room
    goto 0x00ECA0
0x000848:
    goto 0x00ECB8
0x00084C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMMM..^1.&THE STRANGE DOOR&IN THE WOODS./"
    stog.msg[3s] = "\\E0ACTUALLY^1,&MY BROTHER SPENDS&A LOT OF TIME HERE./"
    stog.msg[4s] = "\\E3WHAT'S HE DOING...?/"
    stog.msg[5s] = "\\E1I'VE GOT TO KEEP&HIM ON THE STRAIGHT&AND NARROW!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000930
0x0008E4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ARE YOU STILL&AROUND THAT DOOR?/"
    stog.msg[3s] = "\\E1OH NO!!^1!&MY BROTHER'S A&BAD INFLUENCE!!!/%%"
0x000930:
    goto 0x00ECB8
0x000934:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS IS WHERE MY&BROTHER IS SUPPOSED&TO PATROL.../"
    stog.msg[3s] = "\\E3BUT^1, EVERY TIME I&SHOW UP^1, HE'S&SLACKING OFF./"
    stog.msg[4s] = "\\E0IT'S A GOOD THING&I SPOTTED YOU&FIRST!/"
    stog.msg[5s] = "\\E3I'M SURE HE WOULD&HAVE MADE A WEIRD&FIRST IMPRESSION./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000A18
0x0009CC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IF HE'S NOT AROUND^1,&HE WON'T COME&BACK.../"
    stog.msg[3s] = "\\E3THAT'S JUST THE&WAY HE FUNCTIONS./%%"
0x000A18:
    goto 0x00ECB8
0x000A1C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT??^1?&ARE YOU LOST???/"
    stog.msg[3s] = "\\E0HMMM..^1. YOU SHOULD&TRY CALLING&SOMEONE FOR HELP!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000AB8
0x000A84:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HUH??^1?&WHY ARE YOU&CALLING ME??/%%"
0x000AB8:
    goto 0x00ECB8
0x000ABC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IT'S TOO COLD&TO SWIM IN THE&RIVER./"
    stog.msg[3s] = "UNLESS YOU HAVE A&WATERPROOF&SWEATER!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000B58
0x000B24:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IT'S JUST A&RIVER./%%"
0x000B58:
    goto 0x00ECB8
0x000B5C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "NYEH HEH HEH!^1!&IMPRESSED!?!/"
    stog.msg[3s] = "NOT ONLY AM I&GREAT AT PUZZLES.../"
    stog.msg[4s] = "BUT I'M ALSO&AN ESTEEMED&ARCHITECT!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000C10
0x000BDC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "MY BROTHER HELPED&ME FIND THE BOX!/%%"
0x000C10:
    goto 0x00ECB8
0x000C14:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE STATION OF&DOGGO./"
    stog.msg[3s] = "HE HAS THE AMAZING&POWER TO SEE THINGS&WHEN THEY MOVE./"
    stog.msg[4s] = "\\E3OKAY^1, MAYBE IT'S&NOT AN AMAZING&POWER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000CC8
0x000C94:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DOGGO'S NOT HOME./%%"
0x000CC8:
    goto 0x00ECB8
0x000CCC:
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "CAREFUL!^1!&THE ICE IS&SLPPERY./"
    stog.msg[3s] = "\\E0BUT IF YOU SLIDE&ON THE ICE^1, NO ONE&WILL ATTACK YOU./"
    stog.msg[4s] = "\\E3NO ONE WANTS TO&PRATFALL DURING A&COOL TECHNIQUE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000D80
0x000D4C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'M COLD OUT OF&THINGS TO SAY./%%"
0x000D80:
    goto 0x00ECB8
0x000D84:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "IT MUST BE TOUGH&BEING A SNOWMAN./"
    stog.msg[3s] = "\\E2TRY TO BE NICE&TO PEOPLE MADE OF&STRANGE MATERIALS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x000E20
0x000DEC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IS THAT SNOWMAN&STILL THERE?/%%"
0x000E20:
    goto 0x00ECB8
0x000E24:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OH HO^1!&THE ELECTRIC MAZE^1!&THAT SURE WAS FUN!/"
    stog.msg[3s] = "\\E3EXCEPT FOR WHEN&I GOT SHOCKED./%%"
    push -5s
    if !(== 291s:flag 1s) goto 0x000EF0
0x000E8C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OH HO^1!&THE ELECTRIC MAZE^1!&A GREAT PUZZLE!/"
    stog.msg[3s] = "\\E3EXCEPT FOR THE&PART WHERE WE&DIDN'T EVEN DO IT./"
    stog.msg[4s] = "\\E0MINUS THAT ONE&TINY FLAW^1, IT'S AN&EASY 10 OUT OF 10!/%%"
0x000EF0:
    push -5s
    if !(> 462s:flag 0s) goto 0x000F40
0x000F0C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DISAPPOINTING^1, BUT&I TURNED OFF THE&ELECTRICITY./%%"
0x000F40:
    goto 0x00ECB8
0x000F44:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE FAMOUS SNOWDIN&SNOWBALL GAME./"
    stog.msg[3s] = "FASTER COMPLETION&GIVES DIFFERENT&PRIZES./"
    stog.msg[4s] = "\\E3WHERE DOES THE&MONEY COME FROM?/"
    stog.msg[5s] = "\\E0THE SNOWBALL TAX^1,&OF COURSE!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001028
0x000FDC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1?&YOU'VE NEVER HEARD&OF A SNOWBALL TAX?/"
    stog.msg[3s] = "\\E2THE SURFACE WORLD&MUST BE PARADISE.../%%"
0x001028:
    goto 0x00ECB8
0x00102C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE STATION OF THE&MARRIED DOGS.../"
    stog.msg[3s] = "\\E3HMMM^1. DO YOU EVER&THINK ABOUT DOING&THAT SOMEDAY?/"
    stog.msg[4s] = "\\E0MARRYING A DOG?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001110
0x0010AC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "NAH..^1.&THAT'S WEIRD./"
    stog.msg[3s] = "\\E0THERE ARE WAY&BETTER ANIMALS TO&MARRY./"
    stog.msg[4s] = "LIKE SKELETONS!!!/%%"
0x001110:
    goto 0x00ECB8
0x001114:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMM... CROSSWORD^1.&I GUESS IT'S AN&APT NAME./"
    stog.msg[3s] = "\\E4THOSE WORDS MAKE&ME CROSS!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0011B0
0x00117C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ARE YOU STILL&LOOKING AT THAT&WORD SEARCH?/%%"
0x0011B0:
    goto 0x00ECB8
0x0011B4:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "AH^1, THE SPAGHETTI&TRAP ROOM.../"
    stog.msg[3s] = "ERROR????/%%"
    push -5s
    if !(== 62s:flag 2s) goto 0x00124C
0x00121C:
    stog.msg[3s] = "\\E3I STILL HAVE TO&GO VISIT IT.../"
    stog.msg[4s] = "\\E2THE SPAGHETTI YOU&LEFT ME IS STILL&THERE!!!/%%"
0x00124C:
    push -5s
    if !(== 62s:flag 1s) goto 0x001298
0x001268:
    stog.msg[3s] = "\\E3WELL^1, I GUESS IT'S&NOT MUCH OF A&TRAP ANYMORE.../"
    stog.msg[4s] = "\\E0SINCE YOU ATE THE&WHOLE THING^1,&RIGHT!?/%%"
0x001298:
    push -5s
    if !(> 462s:flag 0s) goto 0x0012E8
0x0012B4:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "NOTHING LIKE A&HOT BUCKET OF&SPAGH.../%%"
0x0012E8:
    goto 0x00ECB8
0x0012EC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS ROOM IS&NORMALLY BLOCKED&BY THOSE SPIKES./"
    stog.msg[3s] = "\\E3BUT WE'RE THINKING&OF GETTING RID&OF THEM.../"
    stog.msg[4s] = "\\E0THE KING RELEASED&A MANDATE ON&PUZZLES RECENTLY./"
    stog.msg[5s] = "\\E3HE THINKS SPIKES&ARE INEFFECTIVE AND&HAZARDOUS TO KIDS./"
    stog.msg[6s] = "\\E4BUT I THINK HE'S&WRONG!!!/"
    stog.msg[7s] = "\\E0KIDS LOVE DEADLY&SPIKES!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0013E8
0x0013B4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IF YOU KNOW ANY&KIDS^1, YOU SHOULD&ASK THEM!!!/%%"
0x0013E8:
    goto 0x00ECB8
0x0013EC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMM..^1.&THE SOLUTION TO&THIS ONE...?/"
    stog.msg[3s] = "\\E5I ACTUALLY JUST&STEPPED OVER THE&SPIKES./"
    stog.msg[4s] = "\\E0SO THE SOLUTION&IS TO BE VERY&TALL AND HANDSOME./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0014A0
0x00146C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'M SOLVING IT&AS WE SPEAK.../%%"
0x0014A0:
    goto 0x00ECB8
0x0014A4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OH-HO!!^1! &THIS PUZZLE^1!/"
    stog.msg[3s] = "YOU FIGURED IT OUT&SO EASILY!!/"
    stog.msg[4s] = "\\E2THAT WAS VERY&PAPYRUS OF YOU./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001558
0x001524:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "TALKING ON THE&PHONE..^1. HOW&PAPYRUS OF YOU./%%"
0x001558:
    goto 0x00ECB8
0x00155C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OH-HO!!^1!&THE PUZZLE THAT&DR. ALPHYS MADE!/"
    stog.msg[3s] = "I HAD TO ASK&UNDYNE TO ASK&HER TO MAKE ONE./"
    stog.msg[4s] = "\\E3I ONLY FOLLOW&HER ONLINE.../"
    stog.msg[5s] = "\\E3I'M NOT REALLY&FRIENDS WITH HER.../"
    stog.msg[6s] = "\\E0YET!!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001658
0x00160C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SOMEDAY I'LL&IMPRESS HER WITH&MY HUGE BICEPS.../"
    stog.msg[3s] = "\\E0THAT'S A GOOD&WAY TO MAKE&FRIENDS!!!/%%"
0x001658:
    goto 0x00ECB8
0x00165C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE STATION OF&LESSERDOG./"
    stog.msg[3s] = "THIS DOG LOVES&TO BE PET./"
    stog.msg[4s] = "THAT'S ITS DEFINING&PERSONALITY&TRAIT./"
    stog.msg[5s] = "\\E3WAIT^1, WHY ARE THEY&A ROYAL GUARD&AND NOT ME!?/"
    stog.msg[6s] = "\\E0I LOVE TO BE&PET TOO!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001740
0x00170C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SIGH..^1.&IT'S ALL JUST A&PUPULARITY CONTEST./%%"
0x001740:
    goto 0x00ECB8
0x001744:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WE WERE GETTING&BORED WAITING&FOR YOU.../"
    stog.msg[3s] = "\\E0SO I BUILT A&SNOW-PAPYRUS!/"
    stog.msg[4s] = "\\E3AND SANS...&DID HIS THING./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0017F8
0x0017C4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ACTUALLY^1, IT'S ONE&OF HIS BETTER&LUMPS./%%"
0x0017F8:
    goto 0x00ECB8
0x0017FC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I ALWAYS JUMP OVER&THE GAP INSTEAD OF&SOLVING THE PUZZLE./"
    stog.msg[3s] = "SANS NEVER SOLVES&IT EITHER./"
    stog.msg[4s] = "\\E3HE ALWAYS JUST..^1.&UM.../"
    stog.msg[5s] = "GETS ACROSS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0018C8
0x001894:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I THINK HE HAS&A SHORTCUT OR&SOMETHING./%%"
0x0018C8:
    goto 0x00ECB8
0x0018CC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "GYFTROT LIVES NEAR&THERE^1.&THEY LIKE GIFTS./"
    stog.msg[3s] = "\\E3DON'T WORRY IF&YOU CAN'T AFFORD&SOMETHING NICE./"
    stog.msg[4s] = "\\E0IT'S THE THOUGHT&THAT COUNTS./"
    stog.msg[5s] = "SO IMAGINE YOU&HAVE A LOT OF&MONEY.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001998
0x001964:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DID YOU MEET&GYFTROT?/%%"
0x001998:
    goto 0x00ECB8
0x00199C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "MY SIGNAL IS&GETTING WEAK./"
    stog.msg[3s] = "\\E3LOOKS LIKE THE&PHONE WON'T WORK&PAST HERE./"
    stog.msg[4s] = "\\E0SO THERE'S NO&REASON TO GO&FURTHER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001A50
0x001A1C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HELLO./%%"
0x001A50:
    goto 0x00ECB8
0x001A54:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE STATION OF&GREATERDOG./"
    stog.msg[3s] = "\\E3HE LOOKS A BIT&LIKE A CERTAIN DOG&I DON'T LIKE./"
    stog.msg[4s] = "\\E0BUT GREATERDOG&DOESN'T COLLECT&ANYTHING./"
    stog.msg[5s] = "\\E2HE'S ONLY A&KLEPTOMANIAC&FOR AFFECTION!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001B20
0x001AEC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HE'S AMASSED A&LARGE COLLECTION&OF HUGS AND PETS./%%"
0x001B20:
    goto 0x00ECB8
0x001B24:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS BRIDGE LOOKS&DANGEROUS^1, BUT&IT'S VERY STABLE./"
    stog.msg[3s] = "IN FACT^1, IT'S JUST&A ROCK FORMATION&I PAINTED OVER./"
    stog.msg[4s] = "I THINK IT LOOKS&MORE DRAMATIC&THAT WAY./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001BD8
0x001BA4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I ADDED THE ROPE^1,&TOO./%%"
0x001BD8:
    goto 0x00ECB8
0x001BDC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "SNOWDIN..^1.&HOME OF PAPYRUS!/"
    stog.msg[3s] = "\\E3THAT'S THE SLOGAN^1,&RIGHT???/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001C78
0x001C44:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'M PETITIONING TO&CHANGE THE SLOGAN./%%"
0x001C78:
    goto 0x00ECB8
0x001C7C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THAT FURRY PERSON&THROWS ICE ALL&DAY./"
    stog.msg[3s] = "NOBODY KNOWS&WHERE IT GOES./%%"
    if !(== self.u 1s) goto 0x001DF0
0x001CDC:
    stog.msg[2s] = "THAT FURRY PERSON&THROWS ICE ALL&DAY./"
    stog.msg[3s] = "NOBODY KNOWS&WHERE IT GOES./"
    call (scr_undface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "* Hey^1, I know^1!&* Alphys told me.../"
    stog.msg[6s] = "* It goes to Hotland&  to cool down the&  CORE!/"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "WOW^1, UNDYNE!^1!&I DIDN'T KNOW YOU&LIKED NERDY STUFF!/%%"
    stog.msg[9s] = "\\E3JUST STRENGTH&AND FIGHTING.../%%"
    call (scr_undface[]:int32 (var 0s) (var 10s))
    stog.msg[11s] = "\\E0* Are you kidding!?&* Why wouldn't I!?/"
    stog.msg[12s] = "\\E6* The brain's the&  biggest muscle of&  all!!!/%%"
0x001DF0:
    push -5s
    if !(> 462s:flag 0s) goto 0x001E40
0x001E0C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HYPNOTIZING^1, ISN'T&IT???/%%"
0x001E40:
    goto 0x00ECB8
0x001E44:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE INN'S A&GREAT PLACE&TO STAY./"
    stog.msg[3s] = "THE LADY WHO&RUNS IT IS&REALLY NICE./"
    stog.msg[4s] = "\\E2SHE ALWAYS GIVES&ME A LOLLIPOP AND&A PAT ON THE HEAD./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x001F10
0x001EC4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHY ARE YOU&CALLING ME?/"
    stog.msg[3s] = "\\E0ARE YOU TRYING&TO MAKE A&RESERVATION???/%%"
0x001F10:
    if !(== self.u 1s) goto 0x002008
0x001F24:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Hey^1, I always stay&  there when I come&  to Snowdin!/"
    stog.msg[3s] = "\\E4* I used to stay&  at Papyrus's^1, but.../"
    stog.msg[4s] = "\\E1* His couch is like^1,&  lumpy and jangly?/"
    stog.msg[5s] = "\\E5* And his brother&  kept making 100's&  of midnight snacks./%%"
    stog.msg[6s] = "\\E2* And Papyrus himself&  doesn't??^1?&* Know how to sleep?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002008
0x001FD4:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Yeah^1, just sleep&  here./%%"
0x002008:
    goto 0x00ECB8
0x00200C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "GRILLBY'S...&IT'S DARK AND FULL&OF GREASE./"
    stog.msg[3s] = "PURGATORY OF&FRIES..^1.&HAMBURGER ABYSS.../"
    stog.msg[4s] = "ANYWAY^1, MY BROTHER&PRACTICALLY LIVES&HERE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0020C0
0x00208C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "I'M NOT COMING&TO GRILLBY'S./%%"
0x0020C0:
    if !(== self.u 1s) goto 0x002254
0x0020D4:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "GRILLBY'S^1? WE'RE TOO&REFINED FOR THAT&GREASEHOLE./"
    call (scr_undface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* WOAH^1, if you go^1,&  you HAVE to try&  the cheese fries./"
    stog.msg[5s] = "\\E6* They're AMAZINGLY&  bad for you!!/"
    stog.msg[6s] = "\\E9* Oh^1, sorry^1, Papyrus^1,&  were you saying&  something?/"
    call (scr_papface[]:int32 (var 5s) (var 7s))
    stog.msg[8s] = "JUST MONOLOGUING&ABOUT MY LOVE&FOR GREASE!!!/%%"
    push -5s
    if !(>= 462s:flag 1s) goto 0x002254
0x0021BC:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "OUR FEELINGS FOR&GREASE RUN DEEP&LIKE A RIVER./"
    call (scr_undface[]:int32 (var 7s) (var 3s))
    stog.msg[4s] = "* Grease^1, I.../"
    stog.msg[5s] = "\\E8* I..^1.&* .../"
    stog.msg[6s] = "\\E6* I want you in&  all my food!!!/%%"
0x002254:
    goto 0x00ECB8
0x002258:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I LOVE THE LIBRARY^1.&THE BOOKS ARE ALL&ARRANGED BY COLOR../"
    stog.msg[3s] = "\\E4THIS SENSE OF&ORDER!!^1! IT FILLS&ME WITH POWER!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0022F4
0x0022C0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT'S A LIBRARY&CARD?/%%"
0x0022F4:
    if !(== self.u 1s) goto 0x0023D4
0x002308:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* I couldn't get enough&  books when I was&  a kid./"
    stog.msg[3s] = "\\E9* I tore through all&  sorts of 'em!/"
    stog.msg[4s] = "\\E1* I ripped through&  tons of 'em!/"
    stog.msg[5s] = "\\E6* I kicked 'em into&  shreds!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0023D4
0x0023A0:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* But now I think&  reading's cool./%%"
0x0023D4:
    goto 0x00ECB8
0x0023D8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WOW^1! IT ONLY TOOK&YOU FOUR SECONDS&TO CALL ME!!/"
    stog.msg[3s] = "YOU MUST BE VERY&DESPERATE FOR MY&HELP!!!/"
    stog.msg[4s] = "WELL^1! DO NOT FEAR^1!&THIS IS PAPYRUS'S&HOTFUL HELPLINE!/"
    stog.msg[5s] = "JUST DESCRIBE YOUR&LOCATION^1, AND...!/"
    stog.msg[6s] = "I WILL DESCRIBE&SOME HOT TIPS!/"
    stog.msg[7s] = "\\E0SO^1, WHERE ARE&YOU?/"
    stog.msg[8s] = "\\E3.../"
    stog.msg[9s] = "\\E5... YOU'RE STILL&IN MY ROOM??/"
    stog.msg[10s] = "\\E3.../"
    stog.msg[11s] = "\\E3HAVE YOU HEARD OF&SOMETHING CALLED&A..^1. DOOR?/"
    stog.msg[12s] = "\\E0WAIT^1! DON'T WORRY^1!&I'LL DRAW A&DIAGRAM FOR YOU!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00254C
0x002518:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HOLD UP^1!&I'M STILL DRAWING!/%%"
0x00254C:
    push -5s
    if !(== 283s:flag 1s) goto 0x00261C
0x002568:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? I THOUGHT&YOU HAD GOTTEN OUT&OF MY ROOM./"
    stog.msg[3s] = "\\E1WE'RE GOING TO&HAVE TO START OVER&FROM SQUARE ONE!/"
    stog.msg[4s] = "\\E0FIRST: DO YOU&KNOW WHO PAPYRUS&IS!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00261C
0x0025E8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "DO I KNOW WHO&PAPYRUS IS!?/%%"
0x00261C:
    goto 0x00ECB8
0x002620:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU'RE IN MY&HOUSE^1.&GOOD CHOICE!/"
    stog.msg[3s] = "\\E3THOUGH I GUESS&IT'S TECHNICALLY&SANS'S HOUSE TOO./"
    stog.msg[4s] = "\\E1BUT I PREFER NOT&TO DISCUSS HIS&PART OF IT./"
    stog.msg[5s] = "\\E3HIS ROOM IS..^1.&IT'S LIKE ANOTHER&WORLD!/"
    stog.msg[6s] = "\\E2A WORLD WHERE&THEY DON'T KNOW&HOW TO VACUUM./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002704
0x0026D0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "YOU'RE BEST&STAYING AWAY FROM&THAT STRANGE PLACE./%%"
0x002704:
    goto 0x00ECB8
0x002708:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS IS WHERE&I TRIED TO&CAPTURE YOU!/"
    stog.msg[3s] = "WHAT A TERRIBLE&MEMORY!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0027A4
0x002770:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = ".../%%"
0x0027A4:
    if !(== self.u 1s) goto 0x002970
0x0027B8:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Yeah!^1! This is the&  best room for&  snow-wrestling!!/"
    call (scr_papface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "SNOW WRESTLING IS&WHEN SHE SNEAKS UP&ON YOU FROM BEHIND,/"
    stog.msg[5s] = "THEN TACKLES YOU&AND YELLS&\"SNOW-WRESTLING!\"/"
    stog.msg[6s] = "\\E5IT'S..^1.&NOT THE BEST&GAME./"
    call (scr_undface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "\\E9* Well^1, you know&  what I think?/"
    call (scr_papface[]:int32 (var 0s) (var 9s))
    stog.msg[10s] = "WHAT?/"
    call (scr_undface[]:int32 (var 6s) (var 11s))
    stog.msg[12s] = "* Snow-wrestling!!/"
    call (scr_papface[]:int32 (var 5s) (var 13s))
    stog.msg[14s] = "NOOOOOOOOO!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002970
0x00293C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* We'll have to play&  sometime!/%%"
0x002970:
    goto 0x00ECB8
0x002974:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WATERFALL..^1.&I BARELY KNOW&ANYTHING ABOUT IT./"
    stog.msg[3s] = "\\E0BUT I'LL DO MY&BEST TO INFORM&YOU!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002A10
0x0029DC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "UH^1, I DON'T HAVE&ANY FACTS ABOUT&THIS ROOM./%%"
0x002A10:
    if !(== self.u 1s) goto 0x002C2C
0x002A24:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* If you're going to&  Snowdin^1, I won't&  have much to say./"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "BUT I WILL!!/"
    call (scr_undface[]:int32 (var 9s) (var 5s))
    stog.msg[6s] = "* There's the rub^1,&  right?/"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "WHAT!^1?&THERE'S A RUB^1?&WHERE!?!?/"
    call (scr_undface[]:int32 (var 6s) (var 9s))
    stog.msg[10s] = "* In Snowdin^1, duh!!!/%%"
    push -5s
    if !(>= 462s:flag 1s) goto 0x002C2C
0x002B44:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'LL DO MY&BEST TO FIND&THE RUB./"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* Hey^1, I think I&  found something!/"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "OOH^1, WHERE?/"
    stog.msg[7s] = "\\E5AND WHAT'S THIS&HORRIBLE NOOGIE?/"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* It's the rub!!!/%%"
0x002C2C:
    goto 0x00ECB8
0x002C30:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "MY BROTHER HAS&A STATION HERE./"
    stog.msg[3s] = "\\E3YES^1, HE MANS&TWO STATIONS AT&ONCE./"
    stog.msg[4s] = "\\E0AMAZING^1, ISN'T&HE?/"
    stog.msg[5s] = "HE SLACKS OFF&TWICE AS MUCH&AS NORMAL!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002CFC
0x002CC8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "NORMAL FOLKS CAN&ONLY DREAM OF&SUCH SLOTH.../%%"
0x002CFC:
    if !(== self.u 1s) goto 0x002E0C
0x002D10:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* This is Papyrus's&  brother's station./"
    stog.msg[3s] = "\\E4* I'm always catching&  him slacking off^1,&  or sleeping.../"
    stog.msg[4s] = "\\E2* But his results are&  JUST good enough&  to not fire him./"
    stog.msg[5s] = "\\E4* Well^1, except today./"
    stog.msg[6s] = "\\E2* He didn't tell me&  ANYTHING about you./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002E0C
0x002DC0:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "\\E4* JUST scraping by&  the bare minimum&  every time.../"
    stog.msg[3s] = "\\E9* I guess it's kind&  of impressive...?/%%"
0x002E0C:
    goto 0x00ECB8
0x002E10:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ROCKS?/"
    stog.msg[3s] = "\\E0IT MUST BE ONE&OF UNDYNE'S&INGENIOUS PUZZLES./"
    stog.msg[4s] = "\\E0YOU'D BETTER BE&CAREFUL!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002EC4
0x002E90:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "BE WARY OF ROCKS./%%"
0x002EC4:
    if !(== self.u 1s) goto 0x002FA4
0x002ED8:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* God^1, I was supposed&  to build a puzzle&  for this room.../"
    stog.msg[3s] = "\\E2* But I HATE puzzles./"
    stog.msg[4s] = "\\E6* So I just put a&  huge pile of&  rocks upstream./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x002FA4
0x002F58:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* What??^1?&* Don't judge me!!!/"
    stog.msg[3s] = "\\E6* My lack of&  creativity's making&  your life easier!/%%"
0x002FA4:
    if !(< global.plot 106s) goto 0x002FE8
0x002FB8:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x002FE8:
    goto 0x00ECB8
0x002FEC:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "WHERE'D YOU GO!?&I CAN'T SEE&YOU!!!/"
    stog.msg[3s] = "\\E0OH WAIT^1, THAT'S&BECAUSE YOU'RE&ON THE PHONE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003088
0x003054:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ARE YOU STILL&ON THE PHONE?/%%"
0x003088:
    if !(== self.u 1s) goto 0x003168
0x00309C:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* So you found the&  room behind the&  waterfall.../"
    stog.msg[3s] = "\\E0* When I feel like&  relaxing^1, I always&  take a break there./"
    stog.msg[4s] = "\\E1* That means NEVER!^1!&* I HATE RELAXING!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003168
0x00311C:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* I LOVE being&  ANGRY and STRESSED&  OUT!!!/"
    stog.msg[3s] = "\\E0* Nah^1, I'm joking./%%"
0x003168:
    if !(< global.plot 110s) goto 0x0031AC
0x00317C:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x0031AC:
    goto 0x00ECB8
0x0031B0:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "WOWIE^1, I HAD AN&AWKWARD TIME IN&THIS ROOM EARLIER./"
    stog.msg[3s] = "\\E0GOOD HEAVENS&YOU WEREN'T AROUND&TO SEE IT!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003264
0x003218:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU REALLY&DIDN'T SEE IT!/"
    stog.msg[3s] = "I LOVE THAT&FACT^1, AND&REPEATING IT!/%%"
0x003264:
    if !(== self.u 1s) goto 0x00332C
0x003278:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* This is the room&  where I first&  spotted you./"
    stog.msg[3s] = "\\E2* You have NO idea&  how many spears I&  wanted to throw!!!/"
    stog.msg[4s] = "\\E9* But^1, um^1, that sea-&  grass is under&  scientific protection./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00332C
0x0032F8:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* What!!!!^1!&* That's a real thing!/%%"
0x00332C:
    if !(< global.plot 106s) goto 0x003370
0x003340:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x003370:
    goto 0x00ECB8
0x003374:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "A BRIDGE GROWS&IF YOU ALIGN&FOUR BRIDGE SEEDS./"
    stog.msg[3s] = "\\E3BUT THAT'S SORT&OF LIMITED IN&USEFULNESS./"
    stog.msg[4s] = "\\E2WHY DON'T WE&HAVE AIRPLANE&SEEDS???/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003428
0x0033F4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "OR^1, PHONES THAT&CAN TURN INTO&JETPACKS???/%%"
0x003428:
    if !(== self.u 1s) goto 0x0034F0
0x00343C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Wait^1, did you actually&  DO the puzzle!?/"
    stog.msg[3s] = "\\E2* You can't just jump&  across!?/"
    stog.msg[4s] = "\\E6* You can't do the&  jimpity jumpity&  joodle!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0034F0
0x0034BC:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* The limpity loppity&  leap!?/%%"
0x0034F0:
    goto 0x00ECB8
0x0034F4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMM..^1. THIS PUZZLE.../"
    stog.msg[3s] = "\\E0I'VE GOT IT!!!/"
    stog.msg[4s] = "TRY TO BUILD A&BRIDGE WITH THE&BRIDGE SEEDS!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0035A8
0x003574:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'M HELPING./%%"
0x0035A8:
    if !(== self.u 1s) goto 0x003688
0x0035BC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Alphys helped measure&  out the mud tiles&  for this puzzle./"
    stog.msg[3s] = "* It was a lot of work^1,&  but we got to make&  sand castles after./"
    stog.msg[4s] = "\\E9* We're a good team^1.&* She's great at&  building them.../"
    stog.msg[5s] = "\\E6* And I'm great at&  wrecking them!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003688
0x003654:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* There's barely even&  a trace of 'em&  now.../%%"
0x003688:
    goto 0x00ECB8
0x00368C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WHAT'S BETTER&THAN A BENCHFUL&OF QUICHE?/%%"
    if !(== self.u 1s) goto 0x003708
0x0036D4:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* What's better than&  a benchful of&  quiche?/%%"
0x003708:
    goto 0x00ECB8
0x00370C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E3THE WISHING ROOM^1.&DO YOU HAVE&A WISH...?/"
    stog.msg[3s] = "\\E0NYEH HEH HEH!^1!&I HAVE ONE!!!/"
    stog.msg[4s] = "\\E2I WISH I WAS&TALKING TO MY&COOL FRIEND!!!/"
    stog.msg[5s] = "\\E0LOOK!!^1!&IT'S COMING TRUE!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0037D8
0x0037A4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WHAT WILL YOU&WISH FOR?/%%"
0x0037D8:
    if !(== self.u 1s) goto 0x003938
0x0037EC:
    call (scr_undface[]:int32 (var 7s) (var 1s))
    stog.msg[2s] = "* Every day^1, people&  come here and wish&  to the stars.../"
    stog.msg[3s] = "\\E1* I won't let them&  down!!!/"
    stog.msg[4s] = "* I'll make everyone's&  wishes come true!!/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "I WISH I HAD&EIGHT LEGS.../"
    stog.msg[7s] = "\\E0SO I COULD WEAR&FOUR PAIRS OF&HOTPANTS./"
    call (scr_undface[]:int32 (var 1s) (var 8s))
    stog.msg[9s] = "* I'll make most&  people's wishes&  come true!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003938
0x0038EC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* What^1, you have a&  wish?/"
    stog.msg[3s] = "\\E3* Add it to the pile^1,&  punk./%%"
0x003938:
    goto 0x00ECB8
0x00393C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THERE ARE MANY&ANCIENT PLAQUES&HERE./"
    stog.msg[3s] = "WATERFALL IS&PRACTICALLY A&HISTORY MUSEUM./"
    stog.msg[4s] = "\\E3EXCEPT WITH&MUSCULAR&SEAHORSES./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0039F0
0x0039BC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HI?/%%"
0x0039F0:
    if !(== self.u 1s) goto 0x003AD0
0x003A04:
    call (scr_undface[]:int32 (var 7s) (var 1s))
    stog.msg[2s] = "* Along these walls&  lies our tragic&  history.../"
    stog.msg[3s] = "\\E1* Tragically BORING!/"
    stog.msg[4s] = "\\E2* Why can't our history&  be COOL ANIMATIONS&  like the humans'!?/"
    stog.msg[5s] = "\\E6* Someone at LEAST&  engrave a plaque with&  swords and kissing!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003AD0
0x003A9C:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Come on^1, don't act&  like your history's&  not COOL!!/%%"
0x003AD0:
    if !(< global.plot 110s) goto 0x003B14
0x003AE4:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x003B14:
    goto 0x00ECB8
0x003B18:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "ANOTHER HARMLESS&AND VERY SAFE&CORRIDOR.../"
    stog.msg[3s] = "\\E0ALL THANKS TO&ME!!^1!&NYEH HEH HEH!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003BB4
0x003B80:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEH!!!!!/%%"
0x003BB4:
    if !(== self.u 1s) goto 0x003C64
0x003BC8:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* This is where I&  threw all those&  spears at you.../"
    stog.msg[3s] = "\\E6* That was fun!!^1!&* Let's do that&  again sometime!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003C64
0x003C30:
    call (scr_undface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "* Come on^1!&* Don't fear the spear!/%%"
0x003C64:
    if !(< global.plot 110s) goto 0x003CA8
0x003C78:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x003CA8:
    goto 0x00ECB8
0x003CAC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WATCH YOUR STEP!/"
    stog.msg[3s] = "\\E3UNDYNE REALLY CARES&ABOUT THIS GRASS&FOR SOME REASON./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003D48
0x003D14:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ARE YOU WATCHING?/%%"
0x003D48:
    if !(== self.u 1s) goto 0x003DF8
0x003D5C:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* If it wasn't for&  that grass^1, I'd&  have kicked your.../"
    stog.msg[3s] = "\\E9* Uh^1, if not for&  that grooty^1, I'd have&  kicked your booty./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x003DF8
0x003DC4:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Don't ask me what&  a grooty is!!!/%%"
0x003DF8:
    if !(< global.plot 110s) goto 0x003E3C
0x003E0C:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x003E3C:
    goto 0x00ECB8
0x003E40:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHY ARE THERE SO&MANY TABLES LYING&AROUND HERE?/%%"
    if !(== self.u 1s) goto 0x003EBC
0x003E88:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* Where are all&  these tables coming&  from?/%%"
0x003EBC:
    goto 0x00ECB8
0x003EC0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HUH^1? SANS ISN'T&PLAYING WITH HIS&TELESCOPE?/"
    stog.msg[3s] = "\\E0WOWIE!!^1! MAYBE HE&WENT TO WORK!!!/"
    stog.msg[4s] = "\\E2WOW!!^1! AM I&ALLOWED TO BE&PROUD???/%%"
    if !(bool (instance_exists[]:int32 (var 1022s))) goto 0x003FB8
0x003F3C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HUH^1? MY BROTHER^1?&OF COURSE HE HAS&A TELESCOPE./"
    stog.msg[3s] = "\\E0SANS LOVES&OUTER SPACEY&SCI-FI STUFF./"
    stog.msg[4s] = "\\E3HMM^1?&HE NEVER TOLD&YOU??/"
    stog.msg[5s] = "\\E0YEAH^1, SANS NEVER&TELLS ANYBODY&ANYTHING!/%%"
0x003FB8:
    push -5s
    if !(> 462s:flag 0s) goto 0x004008
0x003FD4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THANKS FOR CALLING./%%"
0x004008:
    if !(== self.u 1s) goto 0x004100
0x00401C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Hey^1, here's a&  neat party trick./"
    stog.msg[3s] = "\\E0* Try talking to&  the southern&  wall!/"
    stog.msg[4s] = "\\E4* First you have to&  throw a party&  though.../"
    stog.msg[5s] = "\\E0* Hey^1, you should&  make it a costume&  party!/"
    stog.msg[6s] = "\\E6* Then Papyrus can&  have someplace he&  seems normal!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004100
0x0040CC:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Oh^1!&* I should invite&  Alphys^1, too!/%%"
0x004100:
    goto 0x00ECB8
0x004104:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ICE CREAM^1?&THANKS^1, BUT I&LIVE IN SNOWDIN!/"
    stog.msg[3s] = "\\E0THERE'S ICE CREAM&ALL OVER THE&GROUND!!!/"
    call (scr_sansface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "* that's called snow./"
    call (scr_papface[]:int32 (var 1s) (var 6s))
    stog.msg[7s] = "SANS!!^1! I DIDN'T&ASK YOUR OPINION!!/%%"
    push -5s
    if !(>= 462s:flag 1s) goto 0x004270
0x0041D4:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "I'M FLATTERED HOW&MUCH YOU WANT TO&GIVE ME ICE CREAM./"
    call (scr_sansface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* me too./"
    call (scr_papface[]:int32 (var 4s) (var 5s))
    stog.msg[6s] = "NO YOU AREN'T!!/%%"
0x004270:
    if !(== self.u 1s) goto 0x004338
0x004284:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "\\E1* Ugh^1, ice cream!^1?&* Sugary... COLD..^1.&* Talk about GROSS./"
    stog.msg[3s] = "\\E3* Now this chilly&  pink stuff that&  Alphys makes me.../"
    stog.msg[4s] = "\\E6* THAT rules!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004338
0x004304:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* I'll also drink it&  if it's heated up./%%"
0x004338:
    goto 0x00ECB8
0x00433C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "SOMETIMES^1, PRIZES&ARE HIDDEN UNDER&THE GRASS./"
    stog.msg[3s] = "TREASURES LIKE&MUD^1, OR DIRT./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0043D8
0x0043A4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DID YOU FIND&THE TREASURE?/%%"
0x0043D8:
    if !(== self.u 1s) goto 0x0044E8
0x0043EC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* There's normally a&  pair of old shoes&  in that seagrass./"
    stog.msg[3s] = "\\E4* Strangely^1, they're made&  for someone without&  fins or claws./"
    stog.msg[4s] = "\\E7* What kind of monster&  is like that...?/"
    stog.msg[5s] = "\\E2* Oh^1, wait!^1?&* What about a slime&  monster!?/"
    stog.msg[6s] = "\\E6* Wait^1, those don't&  have feet at all!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0044E8
0x00449C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Well^1, if they fit&  you^1, you might as&  well take them./"
    stog.msg[3s] = "\\E6* Whoever wore them&  isn't coming back!/%%"
0x0044E8:
    goto 0x00ECB8
0x0044EC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E3A BIRD MONSTER?^1?&TRY TALKING TO&IT!!!/"
    stog.msg[3s] = "\\E0OR YOU COULD&PUT ME ON THE&LINE!/"
    stog.msg[4s] = "\\E2I'VE GOT SOME&PRETTY GOOD&TWEETS./"
    stog.msg[5s] = "\\E0(HORRIBLE&  BIRD IMITATIONS)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0045B8
0x004584:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DID THE BIRD LIKE&MY TWEETS???/%%"
0x0045B8:
    if !(== self.u 1s) goto 0x0046B0
0x0045CC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* That bird will carry&  anyone past the gap^1.&* It NEVER says no./"
    stog.msg[3s] = "\\E7* When I was younger^1,&  it gave me a lift^1.&* It took an hour.../"
    stog.msg[4s] = "\\E2* But this bird NEVER&  once thought of&  giving up!!!/"
    stog.msg[5s] = "\\E7* Cherish this bird./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0046B0
0x004664:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Well??^1?&* Are you CHERISHING???/"
    stog.msg[3s] = "\\E1* CHERISH HARDER!!!/%%"
0x0046B0:
    goto 0x00ECB8
0x0046B4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ONION?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004738
0x004704:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HUM HUM HUM.../%%"
0x004738:
    if !(== self.u 1s) goto 0x0047D0
0x00474C:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Onion...?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0047D0
0x00479C:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* ...?/%%"
0x0047D0:
    goto 0x00ECB8
0x0047D4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'VE HEARD A SHY&MONSTER LIVES&AROUND HERE./"
    stog.msg[3s] = "\\E3WELL^1, IF YOU WANT&TO GET SOMEONE&TO OPEN UP.../"
    stog.msg[4s] = "\\E0YOU SHOULD ENGAGE&THEM IN COMBAT!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004888
0x004854:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HUM HUM HUM.../%%"
0x004888:
    if !(== self.u 1s) goto 0x004968
0x00489C:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Oh yeah^1, Shyren&  lives around here./"
    stog.msg[3s] = "* I used to give her&  piano lessons./"
    stog.msg[4s] = "\\E4* She was really&  talented..^1. \\E9for someone&  with no fingers./"
    stog.msg[5s] = "\\E4* One day^1, she stopped&  coming to her lessons^1,&  though.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004968
0x004934:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E7* How did her song&  go again...?/%%"
0x004968:
    goto 0x00ECB8
0x00496C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HUH!^1?&ARE YOU SERENADING&ME!?/"
    stog.msg[3s] = "\\E2OH NO!!^1!&YOU'RE MAKING ME&BLUSH!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004A08
0x0049D4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "LET'S WRITE A&MUSICAL ABOUT&OUR ADVENTURES!!!/%%"
0x004A08:
    if !(== self.u 1s) goto 0x004AD0
0x004A1C:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E6* Yeah!^1! YEAH!!^1!&* I made this puzzle!!/"
    stog.msg[3s] = "\\E0* Really^1, it was just&  an excuse to put&  a piano here./"
    stog.msg[4s] = "\\E2* I love FIGHTING THE&  IVORIES!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004AD0
0x004A9C:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E9* Maybe I'll play you&  something sometime!/%%"
0x004AD0:
    goto 0x00ECB8
0x004AD4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3HMMM.../"
    stog.msg[3s] = "THERE'S SOMETHING&ANNOYING ABOUT&THIS ROOM./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004BA0
0x004B3C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "BUT I CAN'T&QUITE PLACE MY&FINGER ON IT.../"
    stog.msg[3s] = "THEN PLACE MY&WHOLE HAND ON&IT.../"
    stog.msg[4s] = "THEN PET IT&AFFECTIONATELY.../%%"
0x004BA0:
    if !(== self.u 1s) goto 0x004C68
0x004BB4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E1* Huh!^1?&* Did you solve the&  puzzle!?/"
    stog.msg[3s] = "\\E6* No one has ever..^1.&* I've been waiting so&  long for someone to.../"
    stog.msg[4s] = "\\E2* I mean^1, uhhh^1, big deal^1!&* Whatever!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004C68
0x004C34:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Guess I've gotta&  find a new mystic&  artifact./%%"
0x004C68:
    goto 0x00ECB8
0x004C6C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3A MYSTERIOUS&STATUE.../%%"
    push -5s
    if !(== 86s:flag 1s) goto 0x004D08
0x004CBC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3WHAT'S THAT MUSIC?/"
    stog.msg[3s] = "AM I ON HOLD???/%%"
0x004D08:
    if !(== self.u 1s) goto 0x004DD0
0x004D1C:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0* That statue's been&  here forever.../"
    stog.msg[3s] = "* No one knows where&  it came from./%%"
    push -5s
    if !(> 86s:flag 0s) goto 0x004DD0
0x004D84:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Hey^1, you figured out&  how to get the&  music to play...?/"
    stog.msg[3s] = "\\E9* Nice^1, isn't it?/%%"
0x004DD0:
    goto 0x00ECB8
0x004DD4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ALWAYS CARRY AN&UMBRELLA IN CASE&IT RAINS!/"
    stog.msg[3s] = "YOU KNOW^1.&JUST KEEP A FEW&IN YOUR POCKETS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x004E70
0x004E3C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "NOTHING LIKE A&HOT BUCKET OF&'BRELLAS.../%%"
0x004E70:
    if !(== self.u 1s) goto 0x004F38
0x004E84:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Those umbrellas were&  ASGORE's idea./"
    stog.msg[3s] = "\\E9* He says he doesn't&  want anyone to&  catch a cold./"
    stog.msg[4s] = "\\E0* Waterfall's underwater&  citizens couldn't care&  less^1, though./%%"
    push -5s
    if !(> 86s:flag 0s) goto 0x004F38
0x004F04:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Did you get a 'brella?/%%"
0x004F38:
    goto 0x00ECB8
0x004F3C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "YOU CAN SEE YOUR&REFLECTION IN A&PUDDLE^1, BUT.../"
    stog.msg[3s] = "\\E1DON'T LET A BODY&OF WATER DETERMINE&YOUR SELF-WORTH!!!/%%"
    if !(bool (instance_exists[]:int32 (var 1115s))) goto 0x005004
0x004FA0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMM^1? YOU'RE&HANGING OUT&WITH A FRIEND?/"
    stog.msg[3s] = "THEN MAYBE YOU&SHOULDN'T TALK&TO ME.../"
    stog.msg[4s] = "\\E0YOU'LL MAKE THEM&JEALOUS!/%%"
0x005004:
    push -5s
    if !(> 462s:flag 0s) goto 0x005054
0x005020:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "CALLING AGAIN...?/%%"
0x005054:
    if !(== self.u 1s) goto 0x005104
0x005068:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* What!^1?&* You're at my&  FAVORITE SPOT!?!?/"
    stog.msg[3s] = "\\E2* You'd better jump in&  at least 1000 puddles&  for me!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005104
0x0050D0:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Have you reached&  triple digits yet!?/%%"
0x005104:
    goto 0x00ECB8
0x005108:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHERE ARE YOU^1?&I HEAR WATER./"
    stog.msg[3s] = "ARE YOU IN THE&TOILET?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0051A4
0x005170:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ALSO^1, WHAT'S A&TOILET?/%%"
0x0051A4:
    if !(== self.u 1s) goto 0x00526C
0x0051B8:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* This whole area's&  like a little&  nature trail./"
    stog.msg[3s] = "* It's nice to have&  a rainy spot away&  from civilization.../"
    stog.msg[4s] = "\\E7* Though^1, with the city&  filling up^1, who knows&  how long that'll last./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00526C
0x005238:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Well?^1!&* Are you enjoying&  nature!?/%%"
0x00526C:
    goto 0x00ECB8
0x005270:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THAT'S THE KING'S&CASTLE.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0052F4
0x0052C0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SEEMS YOU CAN&FINALLY SEE THE&END./%%"
0x0052F4:
    if !(== self.u 1s) goto 0x0053A4
0x005308:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* ASGORE's castle.../"
    stog.msg[3s] = "\\E7* Guess there's no&  stopping you^1, huh?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0053A4
0x005370:
    call (scr_undface[]:int32 (var 7s) (var 1s))
    stog.msg[2s] = "* .../%%"
0x0053A4:
    goto 0x00ECB8
0x0053A8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SEEMS LIKE THE&PHONE CONNECTION'S&GETTING WEAK.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00542C
0x0053F8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "BETTER NOT GO&PAST THAT POINT./%%"
0x00542C:
    if !(== self.u 1s) goto 0x00550C
0x005440:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* The trail dead-ends&  here^1, unless you can&  jump./"
    stog.msg[3s] = "\\E4* Honestly^1, I can't&  believe I expected&  you to go this way./"
    stog.msg[4s] = "\\E6* What was I thinking???/"
    stog.msg[5s] = "\\E1* ... and how was I&  right???/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00550C
0x0054D8:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Don't explain it!!/%%"
0x00550C:
    goto 0x00ECB8
0x005510:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "FLOWERS...?/"
    stog.msg[3s] = "\\E0DO ANY OF THEM&TALK!^1?&SAY HI FOR ME!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0055AC
0x005578:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "FLOWERS ARE OUR&BEST FRIENDS!!/%%"
0x0055AC:
    if !(== self.u 1s) goto 0x005674
0x0055C0:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* Those flowers.../"
    stog.msg[3s] = "* One day^1, they just&  started to grow&  there./"
    stog.msg[4s] = "* I swear^1, it's like&  they have a mind&  of their own./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005674
0x005640:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* That's ridiculous&  though!/%%"
0x005674:
    if !(< global.plot 116s) goto 0x0056B8
0x005688:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x0056B8:
    goto 0x00ECB8
0x0056BC:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "GARBAGE^1, HUH^1?&BOY^1, DO I KNOW&GARBAGE!!/"
    stog.msg[3s] = "\\E4AFTER ALL^1, I'M&HOUSEMATES WITH A&LAZY BAG OF TRASH!/"
    stog.msg[4s] = "\\E0HIS NAME'S TRASHY^1.&HE LIVES IN THE&GARBAGE CAN./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005770
0x00573C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU DIDN'T THINK I&DIDN'T NAME MY&GARBAGE^1, DID YOU?/%%"
0x005770:
    if !(== self.u 1s) goto 0x0058F8
0x005784:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "\\E1* That's where I&  met Alphys for the&  first time!!/"
    stog.msg[3s] = "\\E0* I was looking for&  cool swords^1, when&  I saw her.../"
    stog.msg[4s] = "\\E1* Uh^1, standing there^1,&  staring into the&  abyss./"
    stog.msg[5s] = "\\E4* She looked pretty..^1.&* Um..^1.&* ... contemplative./"
    stog.msg[6s] = "\\E9* So I asked her&  where she thought&  the abyss led to!/"
    stog.msg[7s] = "\\E2* She looked up at&  me^1, shocked^1, and went&  red in the face./"
    stog.msg[8s] = "\\E6* But I'm scary^1,&  so I'm used to&  that kinda stuff!/"
    stog.msg[9s] = "\\E1* Then she kept&  explaining all her&  different theories./"
    stog.msg[10s] = "\\E9* She went on for&  hours^1!&* I was so captivated!/"
    stog.msg[11s] = "\\E1* After that^1, I kept&  running into her&  here./"
    stog.msg[12s] = "\\E6* And now we're&  friends^1!&* Yeeee hawww!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0058F8
0x0058C4:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Oh my GOD^1!&* Don't make me tell&  this story AGAIN!!!/%%"
0x0058F8:
    if !(< global.plot 116s) goto 0x00593C
0x00590C:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x00593C:
    goto 0x00ECB8
0x005940:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "I KNOW WHY YOU&CALLED ME./"
    stog.msg[3s] = "\\E0I ALWAYS MAKE&PEOPLE FEEL&BETTER.../"
    stog.msg[4s] = "\\E2WHEN THEY'RE DOWN&IN THE DUMPS!!!/"
    stog.msg[5s] = "\\E0.../"
    stog.msg[6s] = "\\E3I'VE SPENT TOO&LONG WITH MY&BROTHER TODAY./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005A24
0x0059F0:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "FORGET I SAID&THAT./%%"
0x005A24:
    if !(== self.u 1s) goto 0x005B04
0x005A38:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* The garbage dump!^1!&* So many great things&  come from there!!/"
    stog.msg[3s] = "\\E0* The only reason we&  have modern&  technology.../"
    stog.msg[4s] = "* Is 'cause of all the&  human junk that flows&  from the surface!/"
    stog.msg[5s] = "\\E9* Plus^1, it's a GREAT&  place to meet&  girls./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005B04
0x005AD0:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Wait^1!&* Don't quote me on&  that one!!!/%%"
0x005B04:
    if !(< global.plot 116s) goto 0x005B48
0x005B18:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x005B48:
    goto 0x00ECB8
0x005B4C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEY^1!&YOU'RE NEAR&UNDYNE'S HOUSE!/"
    stog.msg[3s] = "THAT'S TO THE&LEFT-UPWARDS^1.&LUPWARDS./"
    stog.msg[4s] = "\\E3ALL THE OTHER&DIRECTIONS GO TO&THE WRONG HOUSE./"
    stog.msg[5s] = "\\E0NORTH:&GHOST HOUSE./"
    stog.msg[6s] = "EAST: TURTLE HOUSE./"
    stog.msg[7s] = "SOUTH:&TRASH HOUSE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005C48
0x005C14:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WEST: BIRD HOUSE./%%"
0x005C48:
    if !(== self.u 1s) goto 0x005D94
0x005C5C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "SOUNDS LIKE YOU'RE&NEAR UNDYNE'S&HOUSE./"
    stog.msg[3s] = "HEY^1!&WE SHOULD GO&VISIT UNDYNE!/"
    call (scr_undface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "* I'm right here!/"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "I LOVE WHEN A PLAN&COMES TOGETHER^1!&NYEH HEH HEH!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005D94
0x005D2C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Well^1, I think we&  should hang out&  with Papyrus./"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "REALLY??^1?&CAN WE???/%%"
0x005D94:
    goto 0x00ECB8
0x005D98:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THAT'S UNDYNE'S&HOUSE./"
    stog.msg[3s] = "LET'S GO THERE&AND HANG OUT&SOME DAY!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x005E4C
0x005E00:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "STILL WAITING&OUTSIDE HER&HOUSE...?/"
    stog.msg[3s] = "\\E0YEAH^1, I DO THAT&SOMETIMES^1, TOO!/%%"
0x005E4C:
    if !(bool (instance_exists[]:int32 (var 1026s))) goto 0x005E94
0x005E64:
    stog.msg[2s] = "THAT'S UNDYNE'S&HOUSE./"
    stog.msg[3s] = "YOU KNOW^1, THE&ONE WITH THE&SKELETON IN FRONT./%%"
0x005E94:
    if !(== self.u 1s) goto 0x0061FC
0x005EA8:
    push -5s
    if !(< 389s:flag 5s) goto 0x006130
0x005EC4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THAT'S UNDYNE'S&HOUSE./"
    stog.msg[3s] = "IT'S A GREAT&PLACE TO.../"
    stog.msg[4s] = "\\E5UHHH?/"
    call (scr_undface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "* Huff..^1. puff...!/"
    stog.msg[7s] = "\\E6* YEAH!!^1!&* That's MY HOUSE!!!/"
    call (scr_papface[]:int32 (var 0s) (var 8s))
    stog.msg[9s] = "HI UNDYNE^1!&HOW'D YOU GET&HERE SO FAST?/"
    call (scr_undface[]:int32 (var 9s) (var 10s))
    stog.msg[11s] = "\\E9* I ran./"
    call (scr_papface[]:int32 (var 0s) (var 12s))
    stog.msg[13s] = "WOWIE!!^1!&UNDYNE!!!/"
    stog.msg[14s] = "SOMEDAY I WANT&TO BE AS STRONG&AND SWEATY AS YOU./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00612C
0x006044:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SO YOU RAN HERE&JUST TO BE ON&THE PHONE???/"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "* Yep!/"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "THEN YOU MUST&HAVE SOMETHING.../"
    stog.msg[7s] = "EXTREMELY COOL&TO SAY ABOUT&YOUR HOUSE!!!/"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* Nope!!!/%%"
0x00612C:
    goto 0x0061FC
0x006130:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* That's my house./"
    stog.msg[3s] = "\\E1* Or^1, it WAS my&  house^1, until we&  set it on fire./"
    stog.msg[4s] = "\\E6* But hey^1, can't say&  I've never done&  that before!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0061FC
0x0061B0:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Hey^1, if you find&  any cool swords in&  the wreckage.../"
    stog.msg[3s] = "* You know where to&  find me./%%"
0x0061FC:
    goto 0x00ECB8
0x006200:
    call (scr_papface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "OH^1, THAT'S THE&HOUSE OF... UM..^1.&UNDYNE'S NEIGHBOR./"
    stog.msg[3s] = "\\E3WHAT WAS THEIR&NAME AGAIN?/"
    stog.msg[4s] = "\\E0SPOOKY BLOO BLOO?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0062B4
0x006280:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "NAPPER HOG...?/%%"
0x0062B4:
    if !(== self.u 1s) goto 0x006394
0x0062C8:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* That's Napstablook's&  house./"
    stog.msg[3s] = "\\E9* They kind of keep&  to theirself^1, but...&* That's a good ghost./"
    stog.msg[4s] = "\\E4* I try to be a good&  neighbor^1, but I think&  they're scared of me./"
    stog.msg[5s] = "\\E2* C'mon^1, what's scary&  about a good-natured&  invite to wrestle!!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006394
0x006360:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* They're incorporeal&  anyway!!!/%%"
0x006394:
    goto 0x00ECB8
0x006398:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SO YOU'RE FRIENDS&WITH A GHOST.../"
    stog.msg[3s] = "\\E5ISN'T THAT KIND&OF SPOOKY?/"
    stog.msg[4s] = "\\E3I'D THINK YOU'D&LIKE YOUR FRIENDS&WARM AND CUDDLY.../"
    stog.msg[5s] = "\\E0LIKE SKELETONS!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006464
0x006430:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "VERY SOFT^1, AND&FULL OF CALCIUM./%%"
0x006464:
    if !(== self.u 1s) goto 0x00658C
0x006478:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* Oh^1, you're hanging&  out with Napstablook!^1?&* That's great!!!/"
    stog.msg[3s] = "\\E9* I haven't seen them&  hanging out with&  anyone since.../"
    stog.msg[4s] = "\\E4* Well^1, their cousin./"
    stog.msg[5s] = "\\E9* They would both watch&  TV at all hours of&  the day.../"
    stog.msg[6s] = "\\E0* Then they would&  practice these&  weird performances./"
    stog.msg[7s] = "\\E4* Where'd they go...?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00658C
0x006540:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Don't feel like you&  have to live up&  to their cousin!/"
    stog.msg[3s] = "\\E6* Just be your lovable&  old garbage self!/%%"
0x00658C:
    goto 0x00ECB8
0x006590:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THAT HOUSE USED&TO BE HAUNTED./"
    stog.msg[3s] = "BECAUSE A GHOST&LIVED THERE./"
    stog.msg[4s] = "BUT THE GHOST&MOVED AWAY./"
    stog.msg[5s] = "IT'S AN&UN-HAUNTED HOUSE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00668C
0x006628:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "BY THE BY^1,&BREAKING INTO&A HOUSE.../"
    stog.msg[3s] = "\\E3THAT'S ILLEGAL^1,&RIGHT???/"
    stog.msg[4s] = "\\E5PLEASE STOP&COMMITTING GHOST&CRIMES./%%"
0x00668C:
    if !(== self.u 1s) goto 0x006808
0x0066A0:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* WHAT?/"
    stog.msg[3s] = "* You broke into&  Napstablook's&  cousin's house!?/"
    stog.msg[4s] = "\\E2* That's..^1.&* That's...!/"
    stog.msg[5s] = "\\E9* Hey^1, what was&  their name^1, anyway?/"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "HAPPSTABLOOK^1,&THE HAPPY&GHOST./"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* Okay^1, that's&  DEFINITELY wrong./"
    call (scr_papface[]:int32 (var 0s) (var 10s))
    stog.msg[11s] = "IT'S NOT WRONG^1.&IT'S JUST MY&HEADCANON./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006808
0x0067D4:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Seriously^1, though^1,&  stop committing&  ghost crimes./%%"
0x006808:
    goto 0x00ECB8
0x00680C:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "THESE SNAILS ARE&JUST LIKE MY&BROTHER./"
    stog.msg[3s] = "ROUND^1, SLOW.../"
    stog.msg[4s] = "\\E3AND CONSTANTLY&EMITTING SLIME???/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0068C0
0x00688C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "EMITTING SLIME..^1.&THAT'S JUST WHAT&BROTHERS DO./%%"
0x0068C0:
    if !(== self.u 1s) goto 0x0069E8
0x0068D4:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* Napstablook's family&  used to run this&  farm^1, but.../"
    stog.msg[3s] = "\\E7* They've all..^1.&* Passed on.../"
    stog.msg[4s] = "\\E9* ... to different jobs^1,&  since there's not&  much business here./"
    stog.msg[5s] = "\\E0* Them and their cousin&  stayed behind to run&  the family farm./"
    stog.msg[6s] = "\\E4* But no one's seen&  their cousin for a&  long time./"
    stog.msg[7s] = "\\E7* Now Napstablook's&  all alone.../"
    stog.msg[8s] = "\\E1* Be nice to them^1,&  okay!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0069E8
0x0069B4:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Cherish this ghost!!!/%%"
0x0069E8:
    goto 0x00ECB8
0x0069EC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IF YOU SEE A&SHOP^1, YOU SHOULD&STOP.../"
    stog.msg[3s] = "DROP^1, AND&ROLL.../"
    stog.msg[4s] = "INTO SOME&GREAT DEALS!!/"
    stog.msg[5s] = "BECAUSE WE'RE&HAVING A FIRE&SALE!!/"
    stog.msg[6s] = "AT MY IMAGINARY&STORE^1, WHICH&SELLS FLAMES./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006AD0
0x006A9C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YET ANOTHER DREAM&OF MINE./%%"
0x006AD0:
    if !(== self.u 1s) goto 0x006BC8
0x006AE4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E1* Hey!/"
    stog.msg[3s] = "* That's the store of&  Gerson^1, the Hammer of&  Justice!/"
    stog.msg[4s] = "\\E9* The toughest monster&  that ever lived...!/"
    stog.msg[5s] = "\\E4* He fought in the&  war between humans&  and monsters.../"
    stog.msg[6s] = "\\E6* And he survived^1!&* He's a real hero!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006BC8
0x006B94:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Are you gonna buy&  something?/%%"
0x006BC8:
    goto 0x00ECB8
0x006BCC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IS THE RIVER&PERSON THERE&TODAY?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006C50
0x006C1C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ARE THEY?/%%"
0x006C50:
    if !(== self.u 1s) goto 0x006D18
0x006C64:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* That river connects&  to Snowdin and&  Hotland./"
    stog.msg[3s] = "* If you need to get&  from one place to&  another^1, jump in!/"
    stog.msg[4s] = "\\E2* Look^1, that's all we&  got for public&  transport^1, OK!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006D18
0x006CE4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* So what?/%%"
0x006D18:
    goto 0x00ECB8
0x006D1C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT'S THAT&STRANGE WHISPER?/"
    stog.msg[3s] = "\\E5I MIGHT HAVE&TO HANG UP./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006DB8
0x006D84:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "PAPYRUS ISN'T&HOME RIGHT NOW!!/%%"
0x006DB8:
    if !(== self.u 1s) goto 0x006E98
0x006DCC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* A field of echo&  flowers.../"
    stog.msg[3s] = "\\E4* They babble back and&  forth to each other.../"
    stog.msg[4s] = "* ... until their words&  become meaningless&  noise./"
    stog.msg[5s] = "\\E5* Creepy^1, huh?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006E98
0x006E64:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Stop calling me&  from that creepy&  room!!/%%"
0x006E98:
    goto 0x00ECB8
0x006E9C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1?&MUSHROOMS^1?&CAN YOU EAT THEM?/"
    stog.msg[3s] = "\\E3ARE YOU SURE&YOU CAN'T EAT&THEM???/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x006F38
0x006F04:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "I'D TRY EATING&THEM./%%"
0x006F38:
    if !(== self.u 1s) goto 0x007018
0x006F4C:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Once you get familiar&  with this room.../"
    stog.msg[3s] = "\\E9* You don't even need&  to light up the&  mushrooms!/"
    stog.msg[4s] = "\\E0* I mean^1, the path&  to Temmie Village is&  never lit up here./"
    stog.msg[5s] = "\\E6* But why would you&  wanna go there!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007018
0x006FE4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* It's down south if&  you want to avoid&  it./%%"
0x007018:
    goto 0x00ECB8
0x00701C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "LANTERNS^1?&UM^1, OKAY.../"
    stog.msg[3s] = "\\E0CAN YOU EAT&THEM???/"
    stog.msg[4s] = "\\E3I'M SERIOUSLY OUT&OF IDEAS HERE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0070D0
0x00709C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'D TRY EATING&THEM./%%"
0x0070D0:
    if !(== self.u 1s) goto 0x007198
0x0070E4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Once you get familiar&  with this room.../"
    stog.msg[3s] = "\\E9* You don't even need&  to light up the&  lanterns!/"
    stog.msg[4s] = "\\E0* ... yeah./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007198
0x007164:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Whatever./%%"
0x007198:
    goto 0x00ECB8
0x00719C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMM..^1.&A CORRIDOR FILLED&WITH WATER./"
    stog.msg[3s] = "\\E0THAT'S JUST A&GUESS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007238
0x007204:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I HAVE NOTHING&TO SAY./%%"
0x007238:
    if !(== self.u 1s) goto 0x00741C
0x00724C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* That's where I first&  talked to you!/"
    stog.msg[3s] = "\\E3* Weren't you SUPER&  terrified?/"
    stog.msg[4s] = "\\E2* I practice that&  monologue ALL the&  time in the mirror!/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "UNDYNE???/"
    call (scr_undface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "* I mean!!^1!&* Uh!!^1!&* No I don't!!!/"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "OH^1.&I WAS JUST GOING&TO ASK./"
    stog.msg[11s] = "\\E0DO YOU WANT TO&PRACTICE MONOLOGUES&TOGETHER...?!!/"
    call (scr_undface[]:int32 (var 6s) (var 12s))
    stog.msg[13s] = "* UH!!^1!&* NO!!^1!&* I DON'T!!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00741C
0x0073B4:
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "ATTENTION EVERYONE^1!&I AM GOING TO&OPEN THE FRIDGE!/"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* Do you have a&  monologue for&  EVERYTHING?/%%"
0x00741C:
    if (< global.plot 122s) goto 0x00744C
0x007430:
    push -5s
    push (== 350s:flag 1s)
    goto 0x007450
0x00744C:
    push 1s
0x007450:
    if !pop goto 0x007460
0x007454:
    self.noresponse = 1s
0x007460:
    goto 0x00ECB8
0x007464:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "ECHO FLOWERS.../"
    stog.msg[3s] = "\\E0THERE'S ONLY ONE&TALKING FLOWER&FOR ME!!/%%"
    if !(== self.u 1s) goto 0x007560
0x0074C4:
    call (scr_undface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "* Fields of flowers^1,&  whispering everybody's&  hopes and dreams.../"
    stog.msg[3s] = "\\E1* NGAHHHH!!^1!&* IT FILLS ME WITH&  POWER!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007560
0x00752C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* NGAHHHH!!/%%"
0x007560:
    if (< global.plot 122s) goto 0x007590
0x007574:
    push -5s
    push (== 350s:flag 1s)
    goto 0x007594
0x007590:
    push 1s
0x007594:
    if !pop goto 0x0075A4
0x007598:
    self.noresponse = 1s
0x0075A4:
    goto 0x00ECB8
0x0075A8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "EACH AREA HAS TO&HAVE A PRECARIOUS&BRIDGE./"
    stog.msg[3s] = "IT'S MANDATED BY&THE GOVERNMENT./"
    stog.msg[4s] = "OF COURSE^1, KING&FLUFFYBOY WANTS TO&UNMANDATE IT SAFER./"
    stog.msg[5s] = "\\E1WHY!!^1? WON'T HE&THINK OF THE&CHILDREN!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007674
0x007640:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "SPIKES^1. DANGER&BRIDGES^1. THE&PILLARS OF YOUTH./%%"
0x007674:
    if !(== self.u 1s) goto 0x0078B0
0x007688:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* This room...!/"
    stog.msg[3s] = "* Error?/%%"
    push -5s
    if !(== 98s:flag 1s) goto 0x007750
0x0076F0:
    stog.msg[3s] = "\\E7* That sure was a&  tense scenario./"
    stog.msg[4s] = "\\E4* I just wanted to&  help that poor kid^1,&  but.../"
    stog.msg[5s] = "\\E1* I thought if I tried^1,&  you'd attack me!/"
    stog.msg[6s] = "\\E9* Thankfully^1, you&  ended up saving&  them./%%"
0x007750:
    push -5s
    if !(== 98s:flag 2s) goto 0x0077CC
0x00776C:
    stog.msg[3s] = "\\E7* I'd actually..^1.&* Forgotten what had&  happened here./"
    stog.msg[4s] = "\\E4* You just let that&  poor kid drop to&  the floor./"
    stog.msg[5s] = "* Maybe you were just&  afraid./"
    stog.msg[6s] = "\\E7* But if I hadn't&  been around^1, then...?/%%"
0x0077CC:
    push -5s
    if !(== 98s:flag 0s) goto 0x007860
0x0077E8:
    stog.msg[3s] = "\\E2* That's when you ran&  away when your friend&  asked for help!!!/"
    stog.msg[4s] = "\\E9* Though^1, who can blame&  you for fleeing from&  certain death...?/"
    stog.msg[5s] = "\\E6* ME!!!^1!&* I'm still TOTALLY&  disappointed!/"
    stog.msg[6s] = "\\E1* That's the WIMPIEST&  thing you've EVER&  done!/"
    stog.msg[7s] = "* Apologize to your&  poor friend^1, OK^1,&  buster!?/%%"
0x007860:
    push -5s
    if !(> 462s:flag 0s) goto 0x0078B0
0x00787C:
    call (scr_undface[]:int32 (var 1s) (var 7s))
    stog.msg[2s] = "* .../%%"
0x0078B0:
    if (< global.plot 122s) goto 0x0078E0
0x0078C4:
    push -5s
    push (== 350s:flag 1s)
    goto 0x0078E4
0x0078E0:
    push 1s
0x0078E4:
    if !pop goto 0x0078F4
0x0078E8:
    self.noresponse = 1s
0x0078F4:
    goto 0x00ECB8
0x0078F8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS IS WHERE&ELDER PUZZLER&LIKES TO STAND./"
    stog.msg[3s] = "BLOCK-PUSHING^1.&KEY-GATHERING^1.&TEDIOUS AGONY./"
    stog.msg[4s] = "IT'S IMPORTANT TO&RESPECT OUR ROOTS!/%%"
    if !(== self.u 1s) goto 0x007BF4
0x007970:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THIS IS WHERE&ELDER PUZZLER&LIKES TO STAND./"
    stog.msg[3s] = "IT'S IMPORTANT TO&RESPECT OUR&PUZZLING ROOTS./"
    call (scr_undface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "* Yeah^1, someone else&  has to care so I&  don't have to!/"
    call (scr_papface[]:int32 (var 5s) (var 6s))
    stog.msg[7s] = "BUT UNDYNE^1, DON'T&YOU LIKE TRADITION?/"
    call (scr_undface[]:int32 (var 2s) (var 8s))
    stog.msg[9s] = "* I worked in an office&  pushing blocks for&  a month!/"
    stog.msg[10s] = "\\E9* My respect for block&  puzzles was depleted&  by corporate life./"
    call (scr_papface[]:int32 (var 5s) (var 11s))
    stog.msg[12s] = "WHAT!^1? YOU THREW&AWAY MY DREAM&LIFE!!!/"
    stog.msg[13s] = "\\E2THE LIFE OF A&SIMPLE SALARYMAN.../"
    stog.msg[14s] = "COMMUTING EVERY&DAY ON A TRAIN&FULL OF SPIKES.../"
    call (scr_undface[]:int32 (var 9s) (var 15s))
    stog.msg[16s] = "* (I won't tell him&  that's not how it&  works...)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007BF4
0x007B24:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "UNDYNE^1, DID YOU&REALLY HAVE AN&OFFICE JOB?/"
    call (scr_undface[]:int32 (var 4s) (var 3s))
    stog.msg[4s] = "* Well^1, it was more&  of a^1, uh^1, community&  service thing./"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "THAT'S UNDYNE!^1!&ALWAYS HELPING OUT&THE COMMUNITY!/"
    call (scr_undface[]:int32 (var 9s) (var 7s))
    stog.msg[8s] = "* Uh^1, yep^1!&* Totally of my own&  volition there!/%%"
0x007BF4:
    if (< global.plot 122s) goto 0x007C24
0x007C08:
    push -5s
    push (== 350s:flag 1s)
    goto 0x007C28
0x007C24:
    push 1s
0x007C28:
    if !pop goto 0x007C38
0x007C2C:
    self.noresponse = 1s
0x007C38:
    goto 0x00ECB8
0x007C3C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THAT'S UNDYNE'S&DRAMATIC CRAG./"
    stog.msg[3s] = "\\E0SHE'S ALWAYS&POSING ATOP IT./"
    stog.msg[4s] = "\\E3MUMBLING SOMETHING&TO HERSELF.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007CD4
0x007CBC:
    stog.msg[2s] = "I THINK IT'S&SOMETHING SHE&HAS TO MEMORIZE./%%"
0x007CD4:
    if !(== self.u 1s) goto 0x007EE4
0x007CE8:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Oh my GOD!!^1!&* Wasn't this room&  the BEST!?/"
    stog.msg[3s] = "\\E3* Like when I decided&  to NOT do that&  BORING monologue.../"
    stog.msg[4s] = "\\E6* And then went TOTALLY&  off-the-cuff!?/"
    stog.msg[5s] = "\\E2* Or when I almost&  killed you with&  spears???/"
    stog.msg[6s] = "\\E3* Or when I almost&  killed you with&  MORE spears???/"
    stog.msg[7s] = "\\E9* Aw man^1.&* I should have taken&  photos./"
    stog.msg[8s] = "\\E8* Think about how cute&  a little scrapbook&  would be.../"
    call (scr_papface[]:int32 (var 4s) (var 9s))
    stog.msg[10s] = "NOW I WANT A&SCRAPBOOK OF&MY FIGHT TOO!!!/"
    call (scr_undface[]:int32 (var 6s) (var 11s))
    stog.msg[12s] = "* Let's start a photo&  company for boss&  fights!/"
    call (scr_papface[]:int32 (var 0s) (var 13s))
    stog.msg[14s] = "ONE WEEK LATER^1,&SAMPLE GLOSSIES&IN THE MAIL./"
    call (scr_undface[]:int32 (var 9s) (var 15s))
    stog.msg[16s] = "* Relive the memories.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007EE4
0x007E98:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Going off-the-cuff..^1.&* It helped that I...&* Uh./"
    stog.msg[3s] = "\\E9* Completely forgot the&  words to my monologue^1,&  anyway.../%%"
0x007EE4:
    if (< global.plot 122s) goto 0x007F14
0x007EF8:
    push -5s
    push (== 350s:flag 1s)
    goto 0x007F18
0x007F14:
    push 1s
0x007F18:
    if !pop goto 0x007F28
0x007F1C:
    self.noresponse = 1s
0x007F28:
    goto 0x00ECB8
0x007F2C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEY..^1. ISN'T THIS&WHERE I CALLED&YOU?/"
    stog.msg[3s] = "\\E2I HAVE A PHOTO-&GRAPHIC MEMORY&FOR PHONE CALLS./"
    stog.msg[4s] = "\\E3.../"
    stog.msg[5s] = "\\E5HEY^1, WHEN ARE&WE GONNA HANG&WITH UNDYNE?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x007FDC
0x007FC4:
    stog.msg[2s] = "\\E0HEY^1, WHEN ARE&WE GONNA HANG&WITH UNDYNE?/%%"
0x007FDC:
    if !(== self.u 1s) goto 0x00822C
0x007FF0:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* This is where I&  was chasing you.../"
    stog.msg[3s] = "\\E1* But you got a phone&  call^1, so I had to&  wait./"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "OH^1!&THAT WAS ME!/"
    call (scr_undface[]:int32 (var 2s) (var 6s))
    stog.msg[7s] = "* What!^1?&* What were you even&  calling about!?/"
    call (scr_papface[]:int32 (var 0s) (var 8s))
    stog.msg[9s] = "I WAS JUST&SAYING WE SHOULD&ALL HANG OUT./"
    call (scr_undface[]:int32 (var 2s) (var 10s))
    stog.msg[11s] = "* As I was trying&  to kill them!?/"
    call (scr_papface[]:int32 (var 4s) (var 12s))
    stog.msg[13s] = "WELL!^1!&NOBODY STARTS AS&GREAT FRIENDS!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00822C
0x00815C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Nobody starts as&  great friends^1, huh?/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "THAT'S THE RULE./"
    call (scr_undface[]:int32 (var 2s) (var 5s))
    stog.msg[6s] = "* Well^1, you're gonna&  END as my great&  friend!!/"
    call (scr_papface[]:int32 (var 7s) (var 7s))
    stog.msg[8s] = "N... NO!!^1!&NOT THE FLATTERY&SUPLEX!!!/%%"
0x00822C:
    if (< global.plot 122s) goto 0x00825C
0x008240:
    push -5s
    push (== 350s:flag 1s)
    goto 0x008260
0x00825C:
    push 1s
0x008260:
    if !pop goto 0x008270
0x008264:
    self.noresponse = 1s
0x008270:
    goto 0x00ECB8
0x008274:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OH!!!&YOU'RE IN HOTLAND&NOW!!!/"
    stog.msg[3s] = "\\E4... HEY SANS^1,&AREN'T YOU SUPPOSED&TO BE THERE?/"
    call (scr_sansface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "* don't worry^1.&* i am./"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "PHEW!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00835C
0x008344:
    stog.msg[2s] = "FINALLY^1, SANS IS&DOING HIS JOB./%%"
0x00835C:
    if !(== self.u 1s) goto 0x008570
0x008370:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E1* I can't believe&  Papyrus's brother was&  sleeping!!/"
    stog.msg[3s] = "\\E2* I was counting on&  him to stop you!^1!&* UrrrrgHHHH!!!/"
    call (scr_papface[]:int32 (var 3s) (var 4s))
    stog.msg[5s] = "HE'S GOTTEN REALLY&OUT OF SHAPE^1.&HE TIRES EASILY./"
    stog.msg[6s] = "LATELY HE'S BEEN&NAPPING OVER 7&HOURS A NIGHT.../"
    stog.msg[7s] = "\\E1HE'S NAPPING&HIMSELF INTO AN&EARLY GRAVE!!/"
    call (scr_undface[]:int32 (var 1s) (var 8s))
    stog.msg[9s] = "* I agree!^1!&* Your brother needs&  to...!/"
    stog.msg[10s] = "\\E9* ... wait^1, isn't that&  just called sleeping?/"
    call (scr_papface[]:int32 (var 7s) (var 11s))
    stog.msg[12s] = "UNDYNE!^1! NO!!^1!&NOT YOU TOO!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008570
0x0084BC:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* Wait^1. Papyrus..^1.&* When do YOU sleep?/"
    call (scr_papface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "\\E3I'M USUALLY TOO&BUSY TO SLEEP^1.&WHY???/"
    call (scr_undface[]:int32 (var 7s) (var 5s))
    stog.msg[6s] = "* Well^1, I was just&  thinking.../"
    stog.msg[7s] = "\\E6* If you're not using&  that cool car bed^1,&  can I have it!?/%%"
0x008570:
    if (< global.plot 122s) goto 0x0085A0
0x008584:
    push -5s
    push (== 350s:flag 1s)
    goto 0x0085A4
0x0085A0:
    push 1s
0x0085A4:
    if !pop goto 0x0085B4
0x0085A8:
    self.noresponse = 1s
0x0085B4:
    goto 0x00ECB8
0x0085B8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "A WATER COOLER...^1?&IN HOTLAND???&THAT'S WEIRD./"
    stog.msg[3s] = "\\E0SHOULDN'T IT BE&A FIRE COOLER&INSTEAD?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008668
0x008620:
    stog.msg[2s] = "\\E3WHAT'S A WATER&COOLER DO^1,&ANYWAY?/"
    stog.msg[3s] = "\\E3MAKE WATER..^1.&COOLER?/"
    stog.msg[4s] = "\\E0SO IT GIVES IT&SPIKES AND MAKES&IT GLOW?/%%"
0x008668:
    if !(== self.u 1s) goto 0x008760
0x00867C:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* Thank God for that&  water cooler^1, huh?/"
    stog.msg[3s] = "\\E4* Actually^1, you can&  thank Alphys.../"
    stog.msg[4s] = "\\E9* She put it there&  just for me./"
    stog.msg[5s] = "\\E0* Now I can take a&  drink on the way&  to her lab./"
    stog.msg[6s] = "\\E1* Though^1, usually I'm&  not wearing 100&  pounds of armor...!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008760
0x00872C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Thanks for giving me&  that water^1, I guess./%%"
0x008760:
    if (< global.plot 122s) goto 0x008790
0x008774:
    push -5s
    push (== 350s:flag 1s)
    goto 0x008794
0x008790:
    push 1s
0x008794:
    if !pop goto 0x0087A4
0x008798:
    self.noresponse = 1s
0x0087A4:
    goto 0x00ECB8
0x0087A8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "A LAB??^1?&MY BROTHER&WOULD LOVE THAT!/"
    stog.msg[3s] = "HE LOVES SCIENCE&FICTION!!/"
    stog.msg[4s] = "ESPECIALLY&WHEN IT'S&REAL./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0088A4
0x008828:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WAIT^1, THAT BAG OF&DOG FOOD LOOKS&FAMILIAR.../"
    stog.msg[3s] = "I REMEMBER SEEING&IT..^1.&IN SANS'S ROOM?/"
    stog.msg[4s] = "\\E1YEAH^1! I ASKED HIM&WHY HE HAD IT!/"
    stog.msg[5s] = "\\E0HE TOLD ME HE&WAS TRYING TO&EAT HEALTHIER./%%"
0x0088A4:
    if !(== self.u 1s) goto 0x00899C
0x0088B8:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* You're at Alphys's&  lab^1?&* Is she there...?/"
    stog.msg[3s] = "\\E1* Hey^1, tell her I&  said hi^1, okay!?/"
    stog.msg[4s] = "\\E2* And^1, tell me how&  she's doing!/"
    stog.msg[5s] = "\\E9* And tell me if&  she needs anything^1,&  and.../"
    stog.msg[6s] = "\\E1* Wait^1! No^1!&* Don't ask any of&  that!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00899C
0x008968:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* But she's fine^1,&  right!?/%%"
0x00899C:
    if !(<= global.plot 125s) goto 0x0089C8
0x0089B0:
    stog.msg[0s] = "* (There's some strange&  interference...)/%%"
0x0089C8:
    goto 0x00ECB8
0x0089CC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E2YOU'RE IN HER&ROOM^1, UNINVITED^1?&WOWIE.../"
    stog.msg[3s] = "\\E3THAT'S EXTREMELY&CREEPY./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008A68
0x008A34:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "MAYBE DON'T DO&THAT./%%"
0x008A68:
    if !(== self.u 1s) goto 0x008B48
0x008A7C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* What!^1?&* You're in her room!?/"
    stog.msg[3s] = "\\E2* Get out of there!/"
    stog.msg[4s] = "\\E9* Unless^1, um^1, she&  invited you.../"
    stog.msg[5s] = "\\E2* No wayyyy!!^1!&* That did NOT happen!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008B48
0x008B14:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Stop that!/%%"
0x008B48:
    goto 0x00ECB8
0x008B4C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HOTLAND^1, HUH.../"
    stog.msg[3s] = "\\E2I KNOW IT LIKE&THE BACK OF&MY HAND.../"
    stog.msg[4s] = "\\E3WHICH^1, SINCE I'M&ALWAYS WEARING&GLOVES.../"
    stog.msg[5s] = "\\E0I DON'T KNOW&ANYTHING&ABOUT!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008C18
0x008BE4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "MY KNOWLEDGE&QUANTITY IS&STAGNANT./%%"
0x008C18:
    if !(== self.u 1s) goto 0x008D4C
0x008C2C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "NEITHER OF US&KNOW ANYTHING&ABOUT HOTLAND./"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* So we'll just have&  to COMBINE OUR&  POWER!!!/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "ZERO PLUS ZERO&IS STILL ZERO./"
    call (scr_undface[]:int32 (var 6s) (var 7s))
    stog.msg[8s] = "* Yeah^1, but it's a&  BIG zero!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008D4C
0x008D18:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* THE BIGGEST ZERO!/%%"
0x008D4C:
    goto 0x00ECB8
0x008D50:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEY^1, YOU SHOULD&COME TO SNOWDIN&AND VISIT ME!/"
    stog.msg[3s] = "\\E2I'VE BEEN WORKING&ON A FEW THINGS./"
    stog.msg[4s] = "\\E0A FEW SENTENCES&TO STAND AROUND&AND REPEAT./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008E04
0x008DD0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "A FEW SENTENCES&TO STAND AROUND&AND REPEAT./%%"
0x008E04:
    if !(== self.u 1s) goto 0x008F38
0x008E18:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEY^1, YOU SHOULD&COME TO SNOWDIN&AND VISIT ME!/"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* No WAY!!^1!&* Come to Snowdin&  and visit ME!!!/"
    call (scr_papface[]:int32 (var 5s) (var 5s))
    stog.msg[6s] = "WHAT??^1?&WE'RE IN THE&SAME LOCATION!!/"
    call (scr_undface[]:int32 (var 6s) (var 7s))
    stog.msg[8s] = "* Wrong^1! I'm standing&  slightly to the&  right!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x008F38
0x008F04:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Come on!!^1!&* Make your choice!!!/%%"
0x008F38:
    goto 0x00ECB8
0x008F3C:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "CONVEYOR BELTS&EVERYWHERE?^1?&ARE YOU SERIOUS?/"
    stog.msg[3s] = "\\E3IMAGINE RIDING&ONE TO GET TO&WORK OR SCHOOL./"
    stog.msg[4s] = "RIDICULOUS./"
    stog.msg[5s] = "\\E0NOW ICE AND&SPIKES^1, THERE'S&CONVENIENCE!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009008
0x008FD4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "GLAD I DON'T&LIVE IN HOTLAND./%%"
0x009008:
    if !(== self.u 1s) goto 0x009120
0x00901C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* I rode on a&  conveyor belt&  once./"
    stog.msg[3s] = "\\E1* I learned pretty&  fast that they&  make me sick./"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "DID YOU HURL??/"
    call (scr_undface[]:int32 (var 6s) (var 6s))
    stog.msg[7s] = "* Yeah^1, like 9000&  times!^1!&* It was awesome!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009120
0x0090EC:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "STOP CALLING AND&MAKING HER SAY&GROSS THINGS./%%"
0x009120:
    goto 0x00ECB8
0x009124:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "STEAM VENTS^1?&WOW..^1. THAT&SOUNDS AWFUL./"
    stog.msg[3s] = "\\E1WHAT IF YOU'RE&WEARING A&DRESS?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0091C0
0x00918C:
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "GLAD I DON'T&LIVE IN HOTLAND!!/%%"
0x0091C0:
    if !(== self.u 1s) goto 0x0092A0
0x0091D4:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Steam vents^1?&* I think Alphys told&  me about those./"
    stog.msg[3s] = "* The CORE cools off&  by releasing steam&  through those.../"
    stog.msg[4s] = "\\E9* And at the same&  time^1, it doubles&  as transport!/"
    stog.msg[5s] = "\\E6* Pretty cool^1, if&  you aren't wearing&  a dress!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0092A0
0x00926C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Huh!^1?&* Did you put on&  a dress?/%%"
0x0092A0:
    goto 0x00ECB8
0x0092A4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ORANGE AND BLUE&LASERS^1, HUH?/"
    stog.msg[3s] = "\\E3JUST KEEP IN&MIND WHAT THE&COLORS MEAN./"
    stog.msg[4s] = "\\E0BLUE MEANS&JUMP.../"
    stog.msg[5s] = "\\E3AND ORANGE MEANS&YOU'LL..^1. SMELL&LIKE ORANGES./"
    stog.msg[6s] = "\\E0THAT'S WHAT I&REMEMBER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009388
0x009354:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HAVE FUN!!/%%"
0x009388:
    if !(== self.u 1s) goto 0x0093B0
0x00939C:
    push (>= global.plot 131s)
    goto 0x0093B4
0x0093B0:
    push 0s
0x0093B4:
    if !pop goto 0x0095E8
0x0093B8:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* What!^1?&* Why'd I call Alphys&  about the weather?/"
    stog.msg[3s] = "\\E3* Who CARES!?!^1?&* Isn't it natural&  to love meteorology!?/"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "ZOINKS!!!/"
    stog.msg[6s] = "\\E3I THOUGHT THAT WAS&JUST AN EXCUSE&TO TALK TO HER./"
    stog.msg[7s] = "I DIDN'T KNOW&THERE WAS WEATHER&DOWN HERE!!!/"
    call (scr_undface[]:int32 (var 2s) (var 8s))
    stog.msg[9s] = "\\E1* YEAH!?!^1!&* THERE IS?!!?!/"
    stog.msg[10s] = "\\E2* And I'm forecasting&  an incoming front&  of SHUT UP!!!/"
    call (scr_papface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "WOWIE!!^1!&WILL I NEED&AN UMBRELLA?/%%"
    push -5s
    if !(== 470s:flag 1s) goto 0x009538
0x009504:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* What!^1?&* What ABOUT this&  room!?/%%"
0x009538:
    push -5s
    if !(>= 462s:flag 1s) goto 0x0095D4
0x009554:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Oh^1, Papyrus^1.&* I can't stay mad&  at you./"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "IT'S OKAY^1, I&FORGIVE YOU!/"
    stog.msg[5s] = "\\E3(PSST^1, WHEN WAS&SHE MAD AT ME?)/%%"
0x0095D4:
    stog.flag[470s] = 1s
0x0095E8:
    goto 0x00ECB8
0x0095EC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IT'S IMPORTANT TO&STAY IN SCHOOL./"
    stog.msg[3s] = "\\E3A REAL TEACHER.../"
    stog.msg[4s] = "\\E0WOULD NEVER ACCEPT&DEADLY LASERS AS&AN EXCUSE!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0096A0
0x00966C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "GLAD!&I DON'T&LIVE IN HOTLAND!!/%%"
0x0096A0:
    if !(== self.u 1s) goto 0x0097B0
0x0096B4:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Huh^1?&* Those kids are&  skipping school?/"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "\\E6* ... well^1, I can't&  blame them^1, school&  sucks!/"
    stog.msg[5s] = "\\E4* We need to find&  some way to make&  it cooler.../"
    stog.msg[6s] = "\\E2* Hey^1, what if I&  visited their&  school!?/"
    stog.msg[7s] = "\\E6* Then I could beat&  up ALL the teachers!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0097B0
0x00977C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Okay^1, maybe I&  wouldn't beat up&  a teacher.../%%"
0x0097B0:
    goto 0x00ECB8
0x0097B4:
    call (scr_papface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "OH NO^1!&THE PUZZLES&REACTIVATING.../"
    stog.msg[3s] = "\\E3CAUSED THOSE&PEOPLE TO MISS&THEIR WORK!?/"
    call (scr_sansface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "* yep./"
    stog.msg[6s] = "\\E1* that's why i'm&  missing work^1, too./"
    call (scr_papface[]:int32 (var 4s) (var 7s))
    stog.msg[8s] = "OH MY GOD!!^1!&SANS^1, GO DO YOUR&JOB(S)!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009938
0x00989C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "GLAD^1,&I DON'T&LIVE IN HOTLAND./"
    call (scr_sansface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "* me too./"
    call (scr_papface[]:int32 (var 4s) (var 5s))
    stog.msg[6s] = "THEN WHY ARE&YOU SKIPPING&WORK!?!/%%"
0x009938:
    goto 0x00ECB8
0x00993C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I HEARD YOU GOT&TO MEET METTATON!!/"
    stog.msg[3s] = "\\E0IS THAT TRUE!^1?&CAN YOU GET ME&AN AUTOGRAPH!?/"
    stog.msg[3s] = "\\E2HE'S MY FAVORITE&SEXY RECTANGLE!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x0099F0
0x0099BC:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "I WISH I LIVED&IN HOTLAND!!!/%%"
0x0099F0:
    if !(== self.u 1s) goto 0x009C40
0x009A04:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I HEARD YOU GOT&TO MEET METTATON!!/"
    call (scr_undface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* Really^1? Careful^1, that&  dude gives me bad&  vibes./"
    call (scr_papface[]:int32 (var 5s) (var 5s))
    stog.msg[6s] = "WH-WHAT^1?&BUT HE'S SO&POPULAR.../"
    call (scr_undface[]:int32 (var 4s) (var 7s))
    stog.msg[8s] = "* I don't care about&  people just because&  they're popular./"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "WELL^1, YOU CAN&SAY THAT BECAUSE&YOU'RE POPULAR./"
    call (scr_undface[]:int32 (var 6s) (var 11s))
    stog.msg[12s] = "* Pssshhht^1, what!^1?&* Popular with WHO?/"
    call (scr_papface[]:int32 (var 0s) (var 13s))
    stog.msg[14s] = "YOU'RE POPULAR&WITH ME!!!/"
    call (scr_undface[]:int32 (var 9s) (var 15s))
    stog.msg[16s] = "* Awww..^1.&* Papyrus^1, you're popular&  with me^1, too./"
    call (scr_papface[]:int32 (var 0s) (var 17s))
    stog.msg[18s] = "AWW^1, WOWIE!^1!&WAIT.../"
    stog.msg[19s] = "\\E3DOES THAT MEAN&YOU DON'T CARE&ABOUT ME...?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009C40
0x009C0C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Let's not discuss&  this anymore./%%"
0x009C40:
    goto 0x00ECB8
0x009C44:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? MY BROTHER'S&ACTUALLY AT HIS&STATION?/"
    stog.msg[3s] = "\\E1BUT SOMEHOW^1, HE'S&SELLING HOTDOGS&INSTEAD?/"
    stog.msg[4s] = "\\E3SLACKING OFF BY&DOING WORK.../"
    stog.msg[5s] = "TRULY MY BROTHER&IS A MASTER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009D10
0x009CDC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "NO FURTHER&COMMENT./%%"
0x009D10:
    if !(== self.u 1s) goto 0x009E44
0x009D24:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? MY BROTHER'S&ACTUALLY AT HIS&STATION?/"
    call (scr_undface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* What^1?&* I thought he only&  had three stations./"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "NO^1, HE HAS..^1.&AT LEAST FOUR?/"
    call (scr_undface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "* Who the heck keeps&  hiring this guy!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009E44
0x009E10:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Seriously!!/%%"
0x009E44:
    if !(== (instance_exists[]:int32 (var 1022s)) 0s) goto 0x009F2C
0x009E60:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "MY BROTHER ISN'T&EVEN THERE???/"
    stog.msg[3s] = "\\E1WASN'T HE SLACKING&OFF BY SELLING&HOTDOGS?/"
    stog.msg[4s] = "\\E3NOW HE'S SLACKING&OFF FROM SLACKING&OFF.../"
    stog.msg[5s] = "TRULY MY BROTHER&IS A MASTER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009F2C
0x009EF8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "NO FURTHER&COMMENT./%%"
0x009F2C:
    goto 0x00ECB8
0x009F30:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? YOU HAVE TO&SOLVE A PUZZLE&ON THE CONVEYORS?/"
    stog.msg[3s] = "\\E3THAT GOES AGAINST&PUZZLE DESIGN&101.../"
    stog.msg[4s] = "\\E4CONVEYORS ARE&AWFUL AND SHOULD&NEVER BE USED!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x009FE4
0x009FB0:
    call (scr_papface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "GLAD I DON'T&LIVE ON CONVEYOR&PLANET!!!/%%"
0x009FE4:
    if !(== self.u 1s) goto 0x00A1E4
0x009FF8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? YOU HAVE TO&SOLVE A PUZZLE&ON THE CONVEYORS?/"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* Oh MAN^1, did I ever&  tell you MY conveyor&  puzzle idea?/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "WHAT... IS IT?/"
    call (scr_undface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "* Imagine four basketball&  hoops on the sides&  of a conveyor loop./"
    stog.msg[9s] = "\\E2* The conveyor keeps&  speeding up^1, until&  you get sick.../"
    stog.msg[10s] = "\\E6* Then you have to&  puke in all four&  hoops in a row!!!/"
    call (scr_papface[]:int32 (var 5s) (var 11s))
    stog.msg[12s] = "I HATE THIS./"
    call (scr_undface[]:int32 (var 6s) (var 13s))
    stog.msg[14s] = "* You have to time&  the pukes!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A1E4
0x00A17C:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* Oh man!!^1!&* You wanna hear more&  of my great idea!?/"
    call (scr_papface[]:int32 (var 5s) (var 3s))
    stog.msg[4s] = "I'M GONNA HANG&UP NOW!!!/%%"
0x00A1E4:
    goto 0x00ECB8
0x00A1E8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "SO THE ARROWS&FLIP WHEN YOU&DO WHAT?/"
    stog.msg[3s] = "I CAN'T VISUALIZE&THIS PUZZLE AT&ALL./"
    stog.msg[4s] = "\\E0CAN YOU DRAW&A PICTURE???/"
    stog.msg[5s] = "\\E3THEN HOLD IT UP&TO THE RECEIVER??/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A2B4
0x00A280:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DID YOU DRAW IT&YET?/%%"
0x00A2B4:
    if !(== self.u 1s) goto 0x00A510
0x00A2C8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT^1? HOW'S THIS&PUZZLE WORK^1?&UMMM.../"
    stog.msg[3s] = "\\E0WHOOPS^1, I THINK&IT'S UNDYNE'S TURN&TO TALK!!!/"
    call (scr_undface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "\\E1* What!^1?&* No^1, I HATE puzzles^1!&* Papyrus^1, YOU do it!/"
    call (scr_papface[]:int32 (var 3s) (var 6s))
    stog.msg[7s] = "WELL^1, ALPHYS MADE&THE PUZZLE^1,&RIGHT?/"
    stog.msg[8s] = "\\E0YOU SHOULD JUST&CALL HER UP.../"
    stog.msg[9s] = "\\E2AND SAY IN A&HOT VOICE.../"
    stog.msg[10s] = "ALPHYS..^1.&I NEED HELP WITH&A.../"
    stog.msg[11s] = "(AUDIBLE WINK)/"
    stog.msg[12s] = "\\E2PUZZLE.../"
    call (scr_undface[]:int32 (var 1s) (var 13s))
    stog.msg[14s] = "* Oh my GOD^1!&* NO^1!&* Shut up!!!/"
    call (scr_papface[]:int32 (var 4s) (var 15s))
    stog.msg[16s] = "FINE!!^1!&GIVE ME HER&NUMBER!!!/"
    stog.msg[17s] = "\\E0I'LL DO THE HOT&VOICE!!!/"
    call (scr_undface[]:int32 (var 2s) (var 18s))
    stog.msg[19s] = "* NO!!!^1!&* THAT'S EVEN WORSE!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A510
0x00A4C4:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "(AUDIBLE WINK).../"
    stog.msg[3s] = "\\E3WAIT^1, WHOSE NUMBER&IS THIS???/%%"
0x00A510:
    goto 0x00ECB8
0x00A514:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ROYAL GUARD&PATROLS THAT&AREA./"
    stog.msg[3s] = "YES^1, LIKE SNOWDIN^1,&HOTLAND HAS ROYAL&GUARD MEMBERS./"
    stog.msg[4s] = "WATERFALL DOESN'T&NEED THEM BECAUSE&IT'S GOT UNDYNE!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A5C8
0x00A594:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DID YOU SEE&THEM?/%%"
0x00A5C8:
    if !(== self.u 1s) goto 0x00A6A8
0x00A5DC:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* Careful^1, the Royal&  Guard patrols that&  area./"
    stog.msg[3s] = "\\E4* I think it's RG01&  and RG02 today.../"
    stog.msg[4s] = "\\E0* It's funny^1, the bunny&  actually requested to be&  with the dragon guy./"
    stog.msg[5s] = "* It's nice when people&  are platonic friends&  like that!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A6A8
0x00A674:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* It's nice when people&  are platonic friends&  like that!/%%"
0x00A6A8:
    goto 0x00ECB8
0x00A6AC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I LOVE THE NEWS^1!&IT'S SO&INFORMATIVE.../"
    stog.msg[3s] = "AND FULL OF CUT-&THROAT^1, EXPLOSIVE&ACTION!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A748
0x00A714:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "KA-WOWIE!/%%"
0x00A748:
    if !(== self.u 1s) goto 0x00A858
0x00A75C:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* Yeah^1! You totally&  kicked his butt&  on the news!!!/"
    stog.msg[3s] = "\\E9* And I bet Alphys&  was helping you^1,&  wasn't she?/"
    stog.msg[4s] = "\\E6* Oh my god!!^1!&* You guys becoming&  friends.../"
    stog.msg[5s] = "\\E8* It's kinda cute.../"
    stog.msg[6s] = "\\E1* ... I mean^1, uh.../"
    stog.msg[7s] = "\\E2* I'm tough!!^1!&* I love to eat rocks!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A858
0x00A824:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* What!?!?/%%"
0x00A858:
    if !(<= global.plot 160s) goto 0x00A884
0x00A86C:
    stog.msg[0s] = "* (There's some strange&  interference...)/%%"
0x00A884:
    goto 0x00ECB8
0x00A888:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THE CORE..^1.&YOU'RE GETTING&CLOSE^1, HUH...?/"
    stog.msg[3s] = "\\E6.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00A924
0x00A8F0:
    call (scr_papface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = ".../%%"
0x00A924:
    if !(== self.u 1s) goto 0x00AA08
0x00A938:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THE CORE..^1.&YOU'RE GETTING&CLOSE^1, HUH...?/"
    call (scr_undface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* What!^1?&* No^1, we just&  became friends!!/"
    stog.msg[5s] = "\\E4* You can't already&  be that close.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00AA08
0x00A9D4:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* What?/%%"
0x00AA08:
    goto 0x00ECB8
0x00AA0C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "IT MIGHT SOUND&WEIRD THAT SPIDERS&NEED DONATIONS./"
    stog.msg[3s] = "\\E0BUT THINK ABOUT&IT^1, THEY HAVE&EIGHT FEET./"
    stog.msg[4s] = "\\E3THAT'S FOUR PAIRS&OF SHOES./"
    stog.msg[5s] = "\\E0A SPIDER WEARING&FOUR PAIRS OF&PINK BOOTIES./"
    stog.msg[6s] = "MEDITATE ON&THIS IMAGE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00AAF0
0x00AABC:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "OM.../%%"
0x00AAF0:
    goto 0x00ECB8
0x00AAF4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THE ENTIRE ROOM&IS COVERED IN&STEAM THINGIES?/"
    stog.msg[3s] = "\\E1OH MY GOD^1, CAN'T&YOU JUST TAKE&A BUS!?!?/"
    stog.msg[4s] = "\\E3HOTLAND STINKS.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00ABA8
0x00AB74:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "DON'T TELL ME&MORE OF THIS&GARBAGE./%%"
0x00ABA8:
    if !(== self.u 1s) goto 0x00ACD8
0x00ABBC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "A WHOLE ROOM&COVERED IN VENTS^1?&OH NO.../"
    call (scr_undface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "* Hey^1, did I ever&  tell you about my&  puzzle idea?/"
    stog.msg[5s] = "* It's a maze full&  of steam vents.../"
    stog.msg[6s] = "\\E2* But the steam vents&  are on conveyor&  belts^1, and.../"
    call (scr_papface[]:int32 (var 5s) (var 7s))
    stog.msg[8s] = "OH MY GOD!!^1!&I HATE THIS!?!?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00ACD8
0x00ACA4:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "ITS BEST IF YOU&DON'T ENCOURAGE&HER./%%"
0x00ACD8:
    goto 0x00ECB8
0x00ACDC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "LASERS ON&CONVEYORS^1?&NO THANKS./"
    stog.msg[3s] = "SOUNDS LIKE MY&LEAST FAVORITE&NIGHTMARE./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00AD78
0x00AD44:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "DON'T TELL ME&MORE OF THIS&GARBAGE./%%"
0x00AD78:
    if !(== self.u 1s) goto 0x00AEC4
0x00AD8C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "LASERS ON&CONVEYORS^1? ARE&YOU SERIOUS???/"
    call (scr_undface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "* Hey^1, this reminds&  me of a puzzle&  idea./"
    call (scr_papface[]:int32 (var 5s) (var 5s))
    stog.msg[6s] = "OH MY GOD??^1?&NO??^1?&WHY????/"
    stog.msg[7s] = "I THOUGHT YOU&HATED MAKING&UP PUZZLES!!/"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* Yeah^1, but I love&  driving you crazy!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00AEC4
0x00AE90:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "PLEASE STOP&ENCOURAGING&HER./%%"
0x00AEC4:
    goto 0x00ECB8
0x00AEC8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHERE DID THAT&TABLE COME FROM?/"
    stog.msg[3s] = "\\E0DOES IT BELONG&TO THE MOUSE??/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00AF64
0x00AF30:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "EH???/%%"
0x00AF64:
    if !(== self.u 1s) goto 0x00B134
0x00AF78:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Where are all these&  tables coming from?/"
    call (scr_papface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "MAYBE THEY BELONG&TO THE MOUSE./"
    call (scr_undface[]:int32 (var 4s) (var 5s))
    stog.msg[6s] = "* What would a mouse&  need a table for?/"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "TO PUT THE&CHEESE ON./"
    call (scr_undface[]:int32 (var 2s) (var 9s))
    stog.msg[10s] = "* But where's the&  cheese come from!?/"
    call (scr_sansface[]:int32 (var 1s) (var 11s))
    stog.msg[12s] = "* doesn't it come&  from milk?/"
    call (scr_papface[]:int32 (var 4s) (var 13s))
    stog.msg[14s] = "OH MY GOD!!^1!&GET OUT OF&HERE!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B134
0x00B100:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WAIT^1, DOES IT&COME FROM MILK??/%%"
0x00B134:
    goto 0x00ECB8
0x00B138:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WOW!!^1!&THAT CHOREOGRAPHY!/"
    stog.msg[3s] = "\\E2I CAN'T BELIEVE&I'M FRIENDS.../"
    stog.msg[4s] = "\\E0WITH A BONE-A-&FIDE OPERA&STAR!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B1EC
0x00B1B8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WOWIE!/%%"
0x00B1EC:
    if !(== self.u 1s) goto 0x00B350
0x00B200:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I CAN'T BELIEVE&YOU GOT TO DANCE&WITH METTATON!/"
    call (scr_undface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "* Big deal.../"
    stog.msg[5s] = "\\E2* Earlier^1, the human&  and I danced with&  DEATH!!!/"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "WOW!!!/"
    stog.msg[8s] = "IS DEATH COOL?/"
    call (scr_undface[]:int32 (var 6s) (var 9s))
    stog.msg[10s] = "* Yeah^1, she's like&  super hot./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B350
0x00B31C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I WANT TO MEET&DEATH.../%%"
0x00B350:
    if !(<= global.plot 166s) goto 0x00B37C
0x00B364:
    stog.msg[0s] = "* (There's some strange&  interference...)/%%"
0x00B37C:
    goto 0x00ECB8
0x00B380:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WHAT?&I^1? SCREAM?/"
    stog.msg[3s] = "\\E0SURE^1!&I'LL TRY./"
    stog.msg[4s] = "A^1. A^1. A^1. A^1. A./"
    stog.msg[5s] = "I'M SCREAMING VERY&SLOWLY./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B44C
0x00B418:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "A./%%"
0x00B44C:
    if !(== self.u 1s) goto 0x00B5F8
0x00B460:
    push -5s
    if !(== 402s:flag 0s) goto 0x00B4FC
0x00B47C:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* WHAT!^1?&* RG01 and RG02 are&  slacking off?!/"
    stog.msg[3s] = "\\E2* Come ON^1!&* They should be KILLING&  you right now!/"
    stog.msg[4s] = "\\E9* Not that I want&  them to^1, I mean./"
    stog.msg[5s] = "\\E6* But they could at&  least TRY^1, y'know!?/%%"
    goto 0x00B590
0x00B4FC:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* Oh yeah^1, that&  reminds me./"
    stog.msg[3s] = "* I told RG01 and RG02&  that if they managed&  to nab you.../"
    stog.msg[4s] = "\\E9* I'd take them both&  out for ice cream./"
    stog.msg[5s] = "\\E0* I hope you were able&  to avoid them./"
    stog.msg[6s] = "\\E6* Cause I HATE ice&  cream!!/%%"
0x00B590:
    push -5s
    if !(> 462s:flag 0s) goto 0x00B5F8
0x00B5AC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "I ALMOST CAPTURED&YOU.../"
    stog.msg[3s] = "WHERE'S MY ICE&CREAM./%%"
0x00B5F8:
    goto 0x00ECB8
0x00B5FC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "A HOT-L.../"
    stog.msg[3s] = "\\E0THAT'S SHORT FOR&HOTLAND^1, RIGHT?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B698
0x00B664:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "WOWIE!/%%"
0x00B698:
    if !(== self.u 1s) goto 0x00B818
0x00B6AC:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* A hotel?^1? Cool!^1!&* I've never stayed&  at a fancy hotel!/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "REALLY?^1?&ME NEITHER./"
    call (scr_undface[]:int32 (var 9s) (var 5s))
    stog.msg[6s] = "* Papyrus^1, we should&  go on vacation&  sometime!/"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "YEAH!^1!&LET'S VACATION TO&A HOTEL!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B818
0x00B798:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* Well^1, maybe we would&  go someplace besides&  the hotel^1, too.../"
    call (scr_papface[]:int32 (var 2s) (var 3s))
    stog.msg[4s] = "OH^1, I WAS BEING&SARCASTIC./"
    stog.msg[5s] = "\\E0I WOULD NEVER&TAKE A VACATION&FOR ANY REASON./%%"
0x00B818:
    goto 0x00ECB8
0x00B81C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "A FANCY&SCHMANCY&RESTAURANT!?!?/"
    stog.msg[3s] = "\\E2AFTER TASTING MY&COOKING^1, THAT SEEMS&POINTLESS^1, RIGHT?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00B8B8
0x00B884:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I BET THEY CAN'T&EVEN MAKE&SPAGHETTI!/%%"
0x00B8B8:
    if !(== self.u 1s) goto 0x00BA30
0x00B8CC:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* Woah!^1!&* A fancy restaurant!?/"
    stog.msg[3s] = "\\E6* Are you treating us^1?&* Do they have steak?/"
    call (scr_papface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "PSHHHHHHT./"
    stog.msg[5s] = "\\E0WHO NEEDS THAT!&YOUR FRIENDS ARE&GREAT CHEFS!/"
    call (scr_undface[]:int32 (var 9s) (var 6s))
    stog.msg[7s] = "* Well^1, maybe our cooking&  abilities aren't&  exactly perfect./"
    stog.msg[8s] = "\\E6* Nah!!^1!&* They totally are!^1!&* Eat up^1, punk!!/"
    stog.msg[9s] = "\\TS \\F0 \\T0 %"
    stog.msg[10s] = "* (You hear spaghetti thwap&  against the receiver.)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00BA30
0x00B9FC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "ISN'T FRIENDSHIP&DELICIOUS?/%%"
0x00BA30:
    goto 0x00ECB8
0x00BA34:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "CAREFUL^1.&LOTS OF HOTELS ARE&INFESTED NOWADAYS./"
    stog.msg[3s] = "THEY CAN SLIDE&UNDER CLOSED DOOR&HOLES 1 INCH HIGH./"
    stog.msg[4s] = "WHAT DO I MEAN^1?&YOU'LL KNOW IT&IF YOU SEE IT./"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* (You hear a muffled bark&  behind one of the doors.)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00BB18
0x00BAE4:
    call (scr_papface[]:int32 (var 7s) (var 1s))
    stog.msg[2s] = "WHAT WAS THAT???/%%"
0x00BB18:
    if !(== self.u 1s) goto 0x00BED4
0x00BB2C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "CAREFUL^1. I'VE HEARD&THAT HOTEL HAS A&DOG PROBLEM./"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "* Oh^1?&* No pets allowed^1, huh?/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "I'M NOT TALKING&ABOUT PETS./"
    call (scr_undface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "* What's the problem?/"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "THE PROBLEM IS..^1.&DOG./"
    call (scr_undface[]:int32 (var 1s) (var 11s))
    stog.msg[12s] = "* What's wrong with&  dogs!?/"
    call (scr_papface[]:int32 (var 3s) (var 13s))
    stog.msg[14s] = "NOT ALL DOGS^1.&JUST THAT ONE./"
    call (scr_undface[]:int32 (var 2s) (var 15s))
    stog.msg[16s] = "* What's WRONG with it!?/"
    call (scr_papface[]:int32 (var 5s) (var 17s))
    stog.msg[18s] = "EVERYTHING./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00BED4
0x00BD1C:
    call (scr_undface[]:int32 (var 4s) (var 1s))
    stog.msg[2s] = "* So you hate this dog^1,&  but like weird&  talking flowers?/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "THE FLOWER IS MY&FRIEND!/"
    call (scr_undface[]:int32 (var 4s) (var 5s))
    stog.msg[6s] = "* I mean^1, if having&  an imaginary friend&  makes you happy.../"
    call (scr_papface[]:int32 (var 4s) (var 7s))
    stog.msg[8s] = "OH MY GOD!^1!&HE'S NOT IMAGINARY^1!&HE HAS A NAME!/"
    call (scr_undface[]:int32 (var 9s) (var 9s))
    stog.msg[10s] = "* What's his name./"
    call (scr_papface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "FL.../"
    stog.msg[13s] = "\\E3FLOWERY?/"
    call (scr_undface[]:int32 (var 6s) (var 14s))
    stog.msg[15s] = "* Oh my GOD!!^1!&* You just made that&  up!!/"
    call (scr_papface[]:int32 (var 4s) (var 16s))
    stog.msg[17s] = "OK^1, I DID!^1!&BUT HE'S REAL!!/%%"
0x00BED4:
    goto 0x00ECB8
0x00BED8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU HAVE YOUR OWN&HOTEL ROOM!?/"
    stog.msg[3s] = "\\E3... WHY?/"
    stog.msg[4s] = "\\E0MY GARAGE IS&ALWAYS OPEN TO&YOU!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00BF8C
0x00BF58:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE PRICE IS&RIGHT!!/%%"
0x00BF8C:
    if !(== self.u 1s) goto 0x00C1F4
0x00BFA0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU HAVE YOUR OWN&HOTEL ROOM!?/"
    call (scr_undface[]:int32 (var 6s) (var 3s))
    stog.msg[4s] = "* Heyyy!^1!&* Let's throw a room&  party!/"
    stog.msg[5s] = "\\E9* We can order a pizza&  and stay up all night&  playing games!/"
    call (scr_papface[]:int32 (var 3s) (var 6s))
    stog.msg[7s] = "PARTY \"GAMES\"^1?&LIKE THE SIX-&LEGGED RACE?/"
    call (scr_undface[]:int32 (var 2s) (var 8s))
    stog.msg[9s] = "* Nah^1, like \"pillow&  fight the skeleton!\"/"
    call (scr_papface[]:int32 (var 5s) (var 10s))
    stog.msg[11s] = "H-HEY!!^1!&NO PILLOWS FROM&THE COUCH!/"
    call (scr_undface[]:int32 (var 9s) (var 12s))
    stog.msg[13s] = "* Aww^1, okay./"
    call (scr_papface[]:int32 (var 7s) (var 14s))
    stog.msg[15s] = "HEY!!^1!&NO ENTIRE COUCH!!/"
    call (scr_undface[]:int32 (var 2s) (var 16s))
    stog.msg[17s] = "* Too late!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C1F4
0x00C174:
    call (scr_papface[]:int32 (var 5s) (var 1s))
    stog.msg[2s] = "HEY^1, YOU DIDN'T&HIT ME WITH MY&ENTIRE COUCH./"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "* Nah^1, why would I&  do that?/"
    stog.msg[5s] = "\\E6* I'm saving it for&  the party!!/%%"
0x00C1F4:
    goto 0x00ECB8
0x00C1F8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS L1./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&L STAND FOR^1?&LINGUINE?/"
    stog.msg[4s] = "\\E0LINGUINE^1.&THE FLAT PASTA./"
    stog.msg[5s] = "IT CAN ALSO BE&USED TO TIE UP&PRESENTS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C2C4
0x00C290:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE FLATNESS&MAKES A NICE&RIBBON./%%"
0x00C2C4:
    if !(== self.u 1s) goto 0x00C444
0x00C2D8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0THE ELEVATOR&SAYS L1./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&L STAND FOR?/"
    call (scr_undface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "\\E0* C'mon^1, Papyrus^1.&* Think about it./"
    call (scr_papface[]:int32 (var 3s) (var 6s))
    stog.msg[7s] = "\\E3HMMM.../"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "\\E6* It stands for&  L-evator^1, duh!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C444
0x00C3DC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "IS ELEVATOR&REALLY SPELLED&THAT WAY?/"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "* Probably?/%%"
0x00C444:
    goto 0x00ECB8
0x00C448:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS R1./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&R STAND FOR^1?&RAVIOLI?/"
    stog.msg[4s] = "\\E0RAVIOLI..^1.&THE DUMPLING-TYPE&PASTA./"
    stog.msg[5s] = "THE TREASURE CHEST&OF THE CULINARY&WORLD./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C514
0x00C4E0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "YOU CAN PUT GEMS&OR GOLD INSIDE./%%"
0x00C514:
    if !(== self.u 1s) goto 0x00C660
0x00C528:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0THE ELEVATOR&SAYS R1./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&R STAND FOR?/"
    call (scr_undface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "\\E0* C'mon^1, Papyrus^1.&* Think about it./"
    call (scr_papface[]:int32 (var 3s) (var 6s))
    stog.msg[7s] = "\\E3HMMM.../"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "\\E6* It stands for RED^1,&  'cause that's the&  color of the lights!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C660
0x00C62C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I GUESS THAT&MAKES SENSE!/%%"
0x00C660:
    if !(bool (instance_exists[]:int32 (var 35s))) goto 0x00C690
0x00C678:
    stog.msg[1s] = "* (The phone won't turn on.)/%%"
0x00C690:
    goto 0x00ECB8
0x00C694:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS R2./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&R STAND FOR^1?&RIGATONI?/"
    stog.msg[4s] = "\\E0THE TUBE-SHAPED&PASTA./"
    stog.msg[5s] = "IN A PINCH^1, IT&CAN BE USED AS&A STRAW./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C760
0x00C72C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IF YOU NEED TO&DRINK A CUP OF&SAUCE./%%"
0x00C760:
    if !(== self.u 1s) goto 0x00C944
0x00C774:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3WAIT^1, UNDYNE^1.&IF THE R STANDS&FOR RED.../"
    stog.msg[3s] = "\\E5WHAT COLOR DOES&THE L STAND FOR?/"
    call (scr_undface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "* Uhhhh.../"
    stog.msg[6s] = "\\E9* Light green./"
    call (scr_papface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "OH^1! OF COURSE!/"
    stog.msg[9s] = "WAIT^1.&ISN'T THAT TWO&WORDS?/"
    call (scr_sansface[]:int32 (var 2s) (var 10s))
    stog.msg[11s] = "* light sea green./"
    call (scr_papface[]:int32 (var 1s) (var 12s))
    stog.msg[13s] = "THREE DOESN'T&FIX THE ISSUE!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00C944
0x00C8DC:
    call (scr_sansface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* light sea foam&  green./"
    call (scr_papface[]:int32 (var 5s) (var 3s))
    stog.msg[4s] = "AREN'T YOU WORKING&IN THE VERY NEXT&ROOM!?/%%"
0x00C944:
    goto 0x00ECB8
0x00C948:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS L2./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&L STAND FOR^1?&LASAGNA?/"
    stog.msg[4s] = "\\E3I HOPE NOT^1.&I DON'T MAKE&LASAGNA ANYMORE./"
    stog.msg[5s] = "\\E1THAT GLUTTONOUS&DOG ALWAYS EATS&IT FIRST!/"
    stog.msg[6s] = "\\E3FIRST MY BONES^1,&AND NOW THIS.../%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00CA44
0x00C9F8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "THEN IT RETREATS&INTO A SHALLOW&BLUE BOX./"
    stog.msg[3s] = "COVERS ITSELF&WITH A BLANKET^1,&AND SLEEPS.../%%"
0x00CA44:
    if !(== self.u 1s) goto 0x00CCF0
0x00CA58:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E2* OK^1, OK^1.&* I've got it./"
    stog.msg[3s] = "\\E9* The L stands for&  the color \"Lime.\"/"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "\\E0REALLY!?/"
    stog.msg[6s] = "\\E3I HATE LIMES./"
    call (scr_undface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "\\E1* What!^1? Limes rule!^1!&* I eat them whole&  all the time!!/"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "\\E3WELL^1, ONE TIME I&WAS GIVING MYSELF&THE SPA TREATMENT./"
    stog.msg[11s] = "\\E0I PUT THE LIME&SLICES IN MY&EYES^1, LIKE ON TV./"
    stog.msg[12s] = "\\E1BUT IT STINGS!^1!&HOW DO THEY DO&IT!?/"
    call (scr_undface[]:int32 (var 6s) (var 13s))
    stog.msg[14s] = "\\E6* Oh my god^1!&* Those aren't LIMES^1!&* Those are CUCUMBERS!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00CCF0
0x00CBD8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3I THOUGHT IT WAS&SUPPOSED TO BE&REJUVENATING./"
    stog.msg[3s] = "\\E1BUT IT WASN'T&WORKING!/"
    stog.msg[4s] = "\\E5SO I JUST STUCK&MORE LIMES INTO&MY EYES./"
    call (scr_undface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "\\E1* Gross!^1!&* Why did you even&  do that!?/"
    call (scr_papface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "\\E2I JUST WANT TO&HAVE HANDSOME^1,&BISHONEN EYES./"
    stog.msg[9s] = "LIKE METTATON..^1.&SIGH.../"
    call (scr_undface[]:int32 (var 2s) (var 10s))
    stog.msg[11s] = "* (He doesn't even&  HAVE eyes!!!)/%%"
0x00CCF0:
    if !(bool (instance_exists[]:int32 (var 37s))) goto 0x00CD20
0x00CD08:
    stog.msg[1s] = "* (The phone won't turn on.)/%%"
0x00CD20:
    goto 0x00ECB8
0x00CD24:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS L3./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&L STAND FOR^1?&LUMACONI?/"
    stog.msg[4s] = "\\E0THAT'S THE SNAIL-&SHAPED PASTA!/"
    stog.msg[5s] = "\\E3SANS BOUGHT SOME&RECENTLY./"
    stog.msg[6s] = "\\E2HE'LL PROBABLY&FILL THEM WITH&HOTDOGS AND SLIME./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00CE08
0x00CDD4:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HEY!^1!&MAYBE HE'LL SHARE&SOME WITH YOU!/%%"
0x00CE08:
    if !(== self.u 1s) goto 0x00D004
0x00CE1C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0MAYBE WE NEED TO&THINK MORE&ABSTRACTLY./"
    stog.msg[3s] = "\\E3MAYBE THE L&STANDS FOR.../"
    stog.msg[4s] = "\\E2LOVE./"
    call (scr_undface[]:int32 (var 2s) (var 5s))
    stog.msg[6s] = "\\E2* But isn't love&  supposed to be&  FIERY RED!?/"
    stog.msg[7s] = "\\E9* Like a cartoony&  human-heart?/"
    call (scr_papface[]:int32 (var 3s) (var 8s))
    stog.msg[9s] = "\\E3BUT UNDYNE^1, DON'T&YOU TURN PEOPLE'S&HEARTS GREEN?/"
    call (scr_undface[]:int32 (var 9s) (var 10s))
    stog.msg[11s] = "\\E9* You make it sound&  like I give people&  nausea./"
    call (scr_papface[]:int32 (var 0s) (var 12s))
    stog.msg[13s] = "\\E0WELL^1, IT WOULD BE&AN AFFECTIONATE&NAUSEA./"
    call (scr_undface[]:int32 (var 6s) (var 14s))
    stog.msg[15s] = "\\E6* Okay^1, yeah^1!&That's me!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D004
0x00CFB8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "IT'S DECIDED!^1!&L STANDS FOR!!/"
    stog.msg[3s] = "\\E3A HEART THAT&UNDYNE HAS MADE&NAUSEOUS?/%%"
0x00D004:
    if !(bool (instance_exists[]:int32 (var 36s))) goto 0x00D034
0x00D01C:
    stog.msg[1s] = "* (The phone won't turn on.)/%%"
0x00D034:
    goto 0x00ECB8
0x00D038:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THE ELEVATOR&SAYS R3./"
    stog.msg[3s] = "\\E3BUT WHAT DOES THE&R STAND FOR^1?&ROTINI?/"
    stog.msg[4s] = "THE SCREW-SHAPED&PASTA./"
    stog.msg[5s] = "I USED IT TO HOLD&MY SENTRY STATION&TOGETHER./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D104
0x00D0D0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "MY WHOLE STATION&IS MADE OUT OF&CARDBOARDHYDRATES!/%%"
0x00D104:
    if !(== self.u 1s) goto 0x00D24C
0x00D118:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3WAIT^1.&WHAT IF R AND L./"
    stog.msg[3s] = "\\E0STAND FOR RIGHT&AND LEFT???/"
    call (scr_undface[]:int32 (var 9s) (var 4s))
    stog.msg[5s] = "\\E9* No WAY!&* That makes NO sense./"
    stog.msg[6s] = "\\E6* Cause if you face&  the opposite way^1,&  they'd be wrong!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D24C
0x00D1CC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "BUT IF YOU FACE&THE OTHER WAY.../"
    stog.msg[3s] = "HOW CAN YOU KNOW&THEY ARE REALLY&STILL WRONG?/"
    call (scr_undface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "* Let's not get&  philosophical&  over the alphabet./%%"
0x00D24C:
    goto 0x00ECB8
0x00D250:
    call (scr_papface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "\\E9PAPYRUS^1?&WHO IS THAT?/"
    stog.msg[3s] = "THIS IS..^1.&COOLSKELETON95./"
    stog.msg[4s] = "SORRY^1. CAN'T TALK^1.&I'M BUSY BEING&POPULAR ON-LINE./"
    stog.msg[5s] = "\\E0NYEH HEH HEH^1!&ONLY KIDDING^1!&YOU HAVE BEEN HAD!/"
    stog.msg[6s] = "IT WAS PAPYRUS&PLAYING A SIMPLE&GENTLEMAN'S RUSE!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D34C
0x00D300:
    call (scr_papface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "WINK!/"
    stog.msg[3s] = "YOU CAN SEE&ME WINKING^1,&RIGHT./%%"
0x00D34C:
    if !(== self.u 1s) goto 0x00D560
0x00D360:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "\\E9* Papyrus..^1.&* Why are you&  wearing those?/"
    call (scr_papface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "\\E9PAPYRUS?/"
    stog.msg[5s] = "EXCUSE ME^1?&I AM THE VERY&COOL ONLINE GUY,/"
    stog.msg[6s] = "COOLSKELETON95./"
    call (scr_undface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "* What^1?&* No^1!&* You're Papyrus!/"
    call (scr_papface[]:int32 (var 9s) (var 9s))
    stog.msg[10s] = "(UNDYNE!!!^1)&(SHHH!!!)/"
    stog.msg[11s] = "(YOU'RE GOING TO&REVEAL MY SECRET&ONLINE PERSONA!)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D560
0x00D494:
    call (scr_undface[]:int32 (var 6s) (var 1s))
    stog.msg[2s] = "* FINE then^1!&* I'm not Undyne!/"
    stog.msg[3s] = "\\E2* The name's...&* StrongFish91!/"
    call (scr_papface[]:int32 (var 9s) (var 4s))
    stog.msg[5s] = "WHAT!^1?&REALLY!^1?&OH NO!!!/"
    stog.msg[6s] = "STRONGFISH!^1!&PLEASE BRING BACK&MY FRIEND UNDYNE!/"
    call (scr_undface[]:int32 (var 9s) (var 7s))
    stog.msg[8s] = "* Uh^1, OK./%%"
0x00D560:
    goto 0x00ECB8
0x00D564:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "AN APRON LYING&IN HOTLAND^1?&THAT MAKES SENSE./"
    stog.msg[3s] = "COOKING IS&DEFINITELY&FIRE-ELEMENTAL./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D600
0x00D5CC:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "UNLESS YOU COOK&A POPSICLE./%%"
0x00D600:
    if !(== self.u 1s) goto 0x00D79C
0x00D614:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "AN APRON LYING&IN HOTLAND^1?&THAT MAKES SENSE./"
    call (scr_undface[]:int32 (var 3s) (var 3s))
    stog.msg[4s] = "\\E3* Yeah^1, cooking is&  definitely fire-&  elemental!/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "\\E3UNLESS YOU COOK&A POPSICLE./"
    call (scr_undface[]:int32 (var 9s) (var 7s))
    stog.msg[8s] = "\\E9* Would you really&  call it \"cooking\"&  a popsicle...?/"
    call (scr_papface[]:int32 (var 5s) (var 9s))
    stog.msg[10s] = "\\E5THAT'S WHAT YOU&CALLED IT LAST&TIME WE^1, UH.../"
    call (scr_undface[]:int32 (var 6s) (var 11s))
    stog.msg[12s] = "* Oh MAN^1, I almost&  forgot about that^1!&* What a mess!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00D79C
0x00D768:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* It took forever to&  hose everything off./%%"
0x00D79C:
    goto 0x00ECB8
0x00D7A0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0WOW^1! I SAW IT^1!&THE MULTICOLOR&TILE PUZZLE!/"
    push -5s
    if !(== 278s:flag 1s) goto 0x00D83C
0x00D7F0:
    stog.msg[3s] = "\\E2YOU DID IT!^1!&MY DIRECTIONS&HELPED YOU!!/"
    stog.msg[4s] = "I'M A GOOD&EXPLAINER!/"
    stog.msg[5s] = "NYEH HEH HEH!/%%"
    goto 0x00D8CC
0x00D83C:
    stog.msg[3s] = "\\E3SEEMS LIKE YOU&WEREN'T ABLE TO&COMPLETE IT./"
    stog.msg[4s] = "\\E0YOU'VE GOT TO&BE PREPARED NEXT&TIME!/"
    stog.msg[5s] = "I'LL HAVE TO&EXPLAIN IT ALL&AGAIN!/"
    stog.msg[6s] = "YOU SEE^1, RED&TILES ARE&IMPASSIBLE./"
    stog.msg[7s] = "PINK TILES&DON'T DO&ANYTHING./"
    stog.msg[8s] = "GREEN TILES&ARE.../%%"
0x00D8CC:
    push -5s
    if !(> 462s:flag 0s) goto 0x00D950
0x00D8E8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "PLAID TILES&ARE.../%%"
    push -5s
    if !(== 278s:flag 1s) goto 0x00D950
0x00D938:
    stog.msg[2s] = "NYEH HEH HEH!/%%"
0x00D950:
    goto 0x00ECB8
0x00D954:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3HEADING INTO&THE CORE...^1?&HMMM./"
    stog.msg[3s] = "YOU MIGHT NOT&BE ABLE TO&CALL PAST THERE./"
    stog.msg[4s] = "\\E1I KNOW^1!&IT SOUNDS AWFUL!/"
    stog.msg[5s] = "\\E3HOW WILL YOU&GET BY WITHOUT&ME?/"
    stog.msg[6s] = "\\E0WELL^1, I HAVE&CONFIDENCE YOU&WILL FIND A WAY!/"
    stog.msg[7s] = "I WILL TALK TO&YOU AGAIN^1, SO&DO NOT WORRY!/"
    stog.msg[8s] = "GOOD LUCK OUT&THERE!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00DA68
0x00DA34:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "QUIT IT^1!&YOU DON'T HAVE&TO SAY GOODBYE!/%%"
0x00DA68:
    if !(== self.u 1s) goto 0x00DC64
0x00DA7C:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E3HEADING INTO&THE CORE...^1?&HMMM./"
    call (scr_undface[]:int32 (var 4s) (var 3s))
    stog.msg[4s] = "\\E4* The CORE is a huge&  tower of electric&  energy./"
    stog.msg[5s] = "* So I don't think&  your phone will&  work through it.../"
    call (scr_papface[]:int32 (var 1s) (var 6s))
    stog.msg[7s] = "\\E1OH NO!/"
    stog.msg[8s] = "\\E3WHAT WILL YOU DO&WITHOUT US...?/"
    call (scr_undface[]:int32 (var 7s) (var 9s))
    stog.msg[10s] = "* You have something&  you have to do^1,&  right...?/"
    stog.msg[11s] = "* Well.../"
    stog.msg[12s] = "\\E9* Even without words^1,&  we'll be with you&  in spirit^1, OK!?/"
    call (scr_papface[]:int32 (var 0s) (var 13s))
    stog.msg[14s] = "\\E0YEAH^1! YOU CAN'T&GET RID OF US!/"
    call (scr_undface[]:int32 (var 9s) (var 15s))
    stog.msg[16s] = "\\E9* We're counting on&  you^1, so don't mess&  it up!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00DC64
0x00DC30:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* We're not going to&  say goodbye to you&  just yet!/%%"
0x00DC64:
    goto 0x00ECB8
0x00DC68:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E0A POSTER FOR&METTATON'S SHOW?/"
    stog.msg[3s] = "THAT'S NEATO^1.&I WANT A POSTER&FOR MY PUZZLES!/"
    stog.msg[4s] = "\\E3AND MAYBE A FEW&OPENING BANDS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00DD34
0x00DCE8:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "THEY COULD PLAY&MY THEME SONG!/"
    stog.msg[3s] = "\\E3I JUST NEED TO&GET A THEME SONG./%%"
0x00DD34:
    if !(== self.u 1s) goto 0x00DFEC
0x00DD48:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E0A POSTER FOR&METTATON'S SHOW?/"
    stog.msg[3s] = "THAT'S NEATO^1.&I WANT A POSTER&FOR MY PUZZLES!/"
    call (scr_undface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "\\E1* Oh^1! And I want a&  poster for all of&  my big fights!/"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "A REAL EVENT^1!&WE COULD HAVE A&LIVE BAND!/"
    call (scr_undface[]:int32 (var 6s) (var 8s))
    stog.msg[9s] = "* And a barbeque!/"
    call (scr_papface[]:int32 (var 0s) (var 10s))
    stog.msg[11s] = "AND FIREWORKS!/"
    call (scr_undface[]:int32 (var 6s) (var 12s))
    stog.msg[13s] = "* And a second&  barbeque!/"
    call (scr_papface[]:int32 (var 5s) (var 14s))
    stog.msg[15s] = "WON'T YOU JUST&EAT BBQ INSTEAD&OF FIGHTING?/"
    call (scr_undface[]:int32 (var 6s) (var 16s))
    stog.msg[17s] = "\\E6* Let's do it!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00DFEC
0x00DF1C:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E2* We could use the&  spears as kabob&  skewers!/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "AND BONES AS&KABONE SKEWERS!/"
    call (scr_undface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "* What's a kabone?/"
    call (scr_papface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "LIKE A KABOB BUT&WITH ONLY BONES./%%"
0x00DFEC:
    goto 0x00ECB8
0x00DFF0:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0DO SPIDERS HAVE&WEBBED FEET?/"
    stog.msg[3s] = "\\E3WAIT^1.&SPIDERS DON'T HAVE&FEET./"
    stog.msg[4s] = "\\E0DO SPIDERS HAVE&WEBBED FINGERS?/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00E0A4
0x00E070:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "JUST CURIOUS./%%"
0x00E0A4:
    if !(== self.u 1s) goto 0x00E30C
0x00E0B8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "\\E0HEY^1, UNDYNE^1.&DO SPIDERS HAVE&WEBBED FEET?/"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "\\E9* No^1, ducks have&  webbed feet./"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "DUCKS CAN SPIN&WEBS!?/"
    call (scr_undface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "* Yeah^1, haven't you&  seen a duck wrap&  up a loaf of bread?/"
    stog.msg[9s] = "\\E3* Then suck all of&  its guts out with&  its fangs?/"
    call (scr_papface[]:int32 (var 3s) (var 10s))
    stog.msg[11s] = "BREAD HAS GUTS?/"
    call (scr_undface[]:int32 (var 6s) (var 12s))
    stog.msg[13s] = "* Yeah^1. They just take&  'em all out before&  they sell it./"
    call (scr_papface[]:int32 (var 0s) (var 14s))
    stog.msg[15s] = "\\E0WOW!^1!&YOU'RE REALLY&SMART^1, UNDYNE!/"
    call (scr_undface[]:int32 (var 1s) (var 16s))
    stog.msg[17s] = "* (I thought he knew&  I was joking...)/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00E30C
0x00E28C:
    call (scr_undface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "\\E9* Papyrus^1, wait^1, you&  know I'm joking^1,&  right...?/"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "OF COURSE!/"
    stog.msg[5s] = "\\E2EVERYONE KNOWS&SPIDERS HAVE&WEBBED FEET./%%"
0x00E30C:
    if !(< global.plot 165s) goto 0x00E338
0x00E320:
    stog.msg[1s] = "* (The signal is clogged with&  cobwebs...)/%%"
0x00E338:
    goto 0x00ECB8
0x00E33C:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I'VE HEARD THERE&ARE TWO GROUPS&OF SPIDERS./"
    stog.msg[3s] = "ONE IN HOTLAND^1,&AND ONE IN THE&RUINS./"
    stog.msg[4s] = "\\E3SINCE THE SPIDERS&CAN'T CROSS THE&COLD OF SNOWDIN./"
    stog.msg[5s] = "THEY NEED SOME&KIND OF TRANSPORT./"
    stog.msg[6s] = "\\E0LIKE A TANDEM&MOTORCYCLE WITH&EIGHT WHEELS./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00E420
0x00E3EC:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "OR A UNICYCLE&WITH EIGHT&WHEELS!/%%"
0x00E420:
    if !(== self.u 1s) goto 0x00E584
0x00E434:
    call (scr_papface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "I WONDER IF ANY&OF MY ONLINE&FANS ARE SPIDERS./"
    call (scr_undface[]:int32 (var 9s) (var 3s))
    stog.msg[4s] = "* Do spiders even&  use the internet?/"
    call (scr_sansface[]:int32 (var 2s) (var 5s))
    stog.msg[6s] = "* are you kidding^1?&* spiders love to surf&  the web./"
    call (scr_papface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "SANS!/"
    stog.msg[9s] = "\\E0YOU'RE RIGHT&ABOUT SOMETHING./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00E584
0x00E538:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E3FANGS FOR VISITING&MY WEB-SITE./"
    stog.msg[3s] = "\\E0THAT'S WHAT SPIDERS&LIKE TO POST./%%"
0x00E584:
    if !(< global.plot 165s) goto 0x00E5B0
0x00E598:
    stog.msg[1s] = "* (The signal is clogged with&  cobwebs...)/%%"
0x00E5B0:
    goto 0x00ECB8
0x00E5B4:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "HMMM..^1.&A MYSTERIOUS&SCIENCE HOUSE./"
    call (scr_sansface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "* the sign outside&  says \"lab.\"/"
    call (scr_papface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "LAB?/"
    call (scr_sansface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "* like..^1. laboratory./"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "LABRADOR..^1. Y?/"
    stog.msg[11s] = "DOES THAT MEAN&THERE ARE DOGS&INSIDE?/"
    call (scr_sansface[]:int32 (var 1s) (var 12s))
    stog.msg[13s] = "* i mean./"
    stog.msg[14s] = "\\E2* i wouldn't rule it&  out./%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00E76C
0x00E738:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "STRANGE DOG'S&HOUSE.../%%"
0x00E76C:
    if !(== self.u 1s) goto 0x00EC68
0x00E780:
    call (scr_undface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* That's Alphys's house./"
    stog.msg[3s] = "\\E9* Hey^1, why don't we&  all go over and&  watch anime?/"
    call (scr_papface[]:int32 (var 3s) (var 4s))
    stog.msg[5s] = "ANIME?/"
    stog.msg[6s] = "ISN'T THAT A KIND&OF CARTOON FOR&SMALL CHILDREN?/"
    call (scr_undface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "* Oh my GOD!!!/"
    stog.msg[9s] = "\\E6* Anime isn't just for&  kids^1! It's deep^1!&* It's EMOTIONAL!!!/"
    call (scr_papface[]:int32 (var 0s) (var 10s))
    stog.msg[11s] = "IS (THE SOUND A&BABY MAKES) AN&EMOTION?/"
    call (scr_undface[]:int32 (var 6s) (var 12s))
    stog.msg[13s] = "* YEah CAUSE It'S HoW&  I'M FEElinG RIGHT&  NOW!!!/%%"
    push -5s
    if !(> 462s:flag 0s) goto 0x00EA68
0x00E8E8:
    call (scr_papface[]:int32 (var 3s) (var 1s))
    stog.msg[2s] = "WAIT.../"
    stog.msg[3s] = "\\E5UNDYNE^1, DO YOU&LIKE ANIME?/"
    call (scr_undface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "* .../"
    call (scr_papface[]:int32 (var 5s) (var 6s))
    stog.msg[7s] = "UH OH!!!/"
    stog.msg[8s] = "\\E3I MEAN^1, I'VE&NEVER SEEN ANY./"
    stog.msg[9s] = "\\E0MAYBE I ACTUALLY&DO LIKE ANIME!/"
    call (scr_undface[]:int32 (var 9s) (var 10s))
    stog.msg[11s] = "* You don't have to&  say that^1, Papyrus./"
    call (scr_papface[]:int32 (var 0s) (var 12s))
    stog.msg[13s] = "MAYBE I'M A BABY&WHO LOVES CARTOONS&FOR CHILDREN!/"
    call (scr_undface[]:int32 (var 2s) (var 14s))
    stog.msg[15s] = "* YOU DON'T HAVE TO&  SAY THAT^1, PAPYRUS!!/%%"
0x00EA68:
    if !(bool (instance_exists[]:int32 (var 1306s))) goto 0x00EC68
0x00EA80:
    call (scr_undface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* What!^1?&* Royal Guards are&  blocking the way!?/"
    stog.msg[3s] = "\\E2* Then I'll tell them&  to...!/"
    stog.msg[4s] = "\\E4* Well^1, nothing^1, I&  guess./"
    stog.msg[5s] = "\\E2* I already told them&  to seek out and&  destroy you!/"
    stog.msg[6s] = "\\E1* And I can't just&  tell them I've&  changed my mind./"
    stog.msg[7s] = "\\E2* You see^1, Alphys&  showed me these&  animations about.../"
    stog.msg[8s] = "\\E1* Uhhh^1, humans?&* So I can learn&  their weaknesses?/"
    stog.msg[9s] = "\\E2* And one of them&  is about this human&  that^1, uh.../"
    stog.msg[10s] = "\\E6* Well^1, suffice to say^1,&  they can control&  people's minds!!!/"
    stog.msg[11s] = "\\E3* Surprised^1?&* I know your kind's&  hidden power!/"
    stog.msg[12s] = "\\E1* Anyway^1, I told my&  crew that if I ever&  defended a human.../"
    stog.msg[13s] = "\\E2* I must be under&  some kind of mind&  control!/"
    stog.msg[14s] = "\\E6* And to disregard&  EVERYTHING that I&  tell them!/"
    stog.msg[15s] = "\\E7* So^1, sorry..^1.&* But my hands are&  tied./"
    stog.msg[16s] = "\\E9* By the way^1, that&  animation is&  really good!/%%"
    stog.flag[401s] = 1s
    push -5s
    if !(> 462s:flag 0s) goto 0x00EC68
0x00EC34:
    call (scr_undface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E6* I'm not going to&  tell them to let&  you by!/%%"
0x00EC68:
    push -5s
    if !(== 350s:flag 1s) goto 0x00EC9C
0x00EC84:
    stog.msg[1s] = "* (No response.)/%%"
0x00EC9C:
    goto 0x00ECB8
0x00ECA0:
    stog.msg[0s] = "* Ring..^1. Ring.../"
0x00ECB8:
    pop
    if !(== self.noresponse 1s) goto 0x00ED00
0x00ECD0:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* (There's no response...)/%%"
0x00ED00:
    if !(== self.tired 1s) goto 0x00ED48
0x00ED14:
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "I DON'T HAVE&ANYTHING ELSE TO&SAY./%%"
0x00ED48:
    if !(== self.dontplay 0s) goto 0x00ED70
0x00ED5C:
    call (snd_play[]:int32 (var 104s))
0x00ED70:
    push -5s
    stog.flag[(+ 462s:flag 1s)] = 462s
0x00ED94:
    exit
