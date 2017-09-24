0x000000:
    self.myinteract = 3s
    global.msc = 0s
    push -5s
    if !(== 191s:flag 0s) goto 0x000310
0x000034:
    stog.msg[0s] = "* Hello^1, Frisk^1.&* Alphys upgraded my&  phone./"
    stog.msg[1s] = "* I am having a lot&  of fun with the&  \"texting\" feature./"
    stog.msg[2s] = "* Sans^1, \"check out\" this&  one./"
    call (scr_sansface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "* oh man^1, tori.../"
    stog.msg[5s] = "\\E1* that's brutal./"
    call (scr_papface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "I CAN'T BELIEVE&THE QUEEN HAS&RETURNED.../"
    stog.msg[8s] = "\\E4AND ALSO THAT&SHE'S A HUGE&DORK!!!/"
    stog.msg[9s] = "YOU TWO ARE TWO&FEET AWAY FROM&EACH OTHER!!!/"
    stog.msg[10s] = "WHY ARE YOU&TEXTING!!!/"
    call (scr_torface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "* Worry not^1, Papyrus^1.&* We are texting for&  a good reason./"
    call (scr_papface[]:int32 (var 3s) (var 13s))
    stog.msg[14s] = "WHY IS THAT./"
    call (scr_sansface[]:int32 (var 0s) (var 15s))
    stog.msg[16s] = "* well./"
    stog.msg[17s] = "\\E2* cause we're huge&  dorks./"
    call (scr_torface[]:int32 (var 1s) (var 18s))
    stog.msg[19s] = "* Sans^1, please do&  not say that./"
    stog.msg[20s] = "* You are not a dork./"
    stog.msg[21s] = "\\E0* You are more of&  a bonehead!/"
    call (scr_papface[]:int32 (var 0s) (var 22s))
    stog.msg[23s] = "HAHAHA^1, WOW!/"
    stog.msg[24s] = "\\E0THOSE PUNS ARE&EVEN LESS FUNNY&COMING FROM HER!/"
    call (scr_sansface[]:int32 (var 1s) (var 25s))
    stog.msg[26s] = "* then why are you&  smiling?/"
    call (scr_papface[]:int32 (var 4s) (var 27s))
    stog.msg[28s] = "IT'S A PITY&SMILE!!!/%%"
0x000310:
    push -5s
    if !(== 191s:flag 1s) goto 0x00038C
0x00032C:
    stog.msg[0s] = "* Frisk^1, do not feel&  left out./"
    stog.msg[1s] = "* I have been writing&  messages to you as&  well!/"
    stog.msg[2s] = "\\W* You still have \\Ymy&  phone number\\W after&  all this time.../"
    stog.msg[3s] = "* Do you not?/%%"
0x00038C:
    push -5s
    if !(>= 191s:flag 2s) goto 0x0003F0
0x0003A8:
    stog.msg[0s] = "* Frisk^1, how about&  you go look around&  before we all go?/"
    stog.msg[1s] = "* Seeing how many good&  friends you've made&  here.../"
    stog.msg[2s] = "* I am almost certain&  you must have made&  some more./%%"
0x0003F0:
    push -5s
    stog.flag[(+ 191s:flag 1s)] = 191s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000478:
    exit
