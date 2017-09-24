0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if (== self.room 20s) goto 0x000064
0x000050:
    push (== self.room 170s)
    goto 0x000068
0x000064:
    push 1s
0x000068:
    if !pop goto 0x000084
0x00006C:
    stog.msg[0s] = "* Spider Bake Sale&* All proceeds go to real&  spiders./%%"
0x000084:
    if !(== self.room 12s) goto 0x000140
0x000098:
    stog.msg[0s] = "1234567890123456789012345678901234567890/"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "123456789012345678901234567890/"
    stog.msg[3s] = "\\Ts %"
    stog.msg[4s] = "123456789012345678901234567890/"
    stog.msg[5s] = "\\TP %"
    stog.msg[6s] = "123456789012345678901234567890/%%"
0x000140:
    if !(== self.room 220s) goto 0x0001CC
0x000154:
    global.facechoice = 7s
    global.typer = 60s
    stog.msg[0s] = "* Test one./"
    stog.msg[1s] = "\\E1* Test two./"
    stog.msg[2s] = "\\E2* Test three./"
    stog.msg[3s] = "\\E3* Test four./%%"
0x0001CC:
    if !(== self.room 46s) goto 0x000240
0x0001E0:
    stog.msg[0s] = "* (This is a box.)/"
    stog.msg[1s] = "* (You can put an item&  inside or take an item&  out.)/"
    stog.msg[2s] = "* (The same box will appear&  later^1, so don't worry&  about coming back.)/"
    stog.msg[3s] = "* (Sincerely^1, a box lover.)/%%"
0x000240:
    if !(== self.room 49s) goto 0x00026C
0x000254:
    stog.msg[0s] = "* (Absolutely NO MOVING!!!)/%%"
0x00026C:
    if !(== self.room 50s) goto 0x0002C8
0x000280:
    stog.msg[0s] = "* North: Ice&* South: Ice&* West: Ice/"
    stog.msg[1s] = "* East: Snowdin Town/"
    stog.msg[2s] = "* (... and ice)/%%"
0x0002C8:
    if !(== self.room 53s) goto 0x000324
0x0002DC:
    stog.msg[0s] = "* North: Ice&* South: Ice&* West: Ice/"
    stog.msg[1s] = "* East: Snowdin Town/"
    stog.msg[2s] = "* (... and ice)/%%"
0x000324:
    if !(== self.room 54s) goto 0x000398
0x000338:
    stog.msg[0s] = "* SMELL DANGER RATING/"
    stog.msg[1s] = "\\W* Snow Smell - Snowman&  WHITE Rating&  Can become \\YYELLOW\\W Rating/"
    stog.msg[2s] = "\\W* Unsuspicious Smell - Puppy&  \\BBLUE\\W Rating&  Smell of rolling around./"
    stog.msg[3s] = "\\W* Weird Smell - Humans&  \\RGREEN\\W Rating&  Destroy at all costs!/%%"
0x000398:
    if !(== self.room 57s) goto 0x0003F0
0x0003AC:
    stog.msg[0s] = "* Warning:&  Dog Marriage/%%"
    if !(== self.talkedto 1s) goto 0x0003F0
0x0003D8:
    stog.msg[0s] = "* (Yes^1, you read that correctly.)/%%"
0x0003F0:
    if (== self.room 59s) goto 0x000418
0x000404:
    push (== self.room 58s)
    goto 0x00041C
0x000418:
    push 1s
0x00041C:
    if !pop goto 0x000438
0x000420:
    stog.msg[0s] = "* Turn every X into an O^1.&* Then press the switch./%%"
0x000438:
    if !(== self.room 61s) goto 0x000464
0x00044C:
    stog.msg[0s] = "* AWARE OF DOG&* pleas pet dog/%%"
0x000464:
    if !(== self.room 66s) goto 0x000490
0x000478:
    stog.msg[0s] = "* (Woof.)/%%"
0x000490:
    if !(== self.room 63s) goto 0x0004BC
0x0004A4:
    stog.msg[0s] = "* (You will not slide on&  an X^1, O^1, or triangle.)/%%"
0x0004BC:
    if !(== self.room 84s) goto 0x000530
0x0004D0:
    stog.msg[0s] = "* (This is a box.)/"
    stog.msg[1s] = "* (You can put an item in&  or take an item out.)/"
    stog.msg[2s] = "* (Why would you^1, though^1???)&* (You can't use items&  when they're in the box!)/"
    stog.msg[3s] = "* (Sincerely^1, a box hater.)/%%"
0x000530:
    if !(== self.room 86s) goto 0x00058C
0x000544:
    stog.msg[0s] = "* (This sign is written in&  very neat cursive.)/"
    stog.msg[1s] = "* Do not destroy the&  science grass./"
    stog.msg[2s] = "* It is used for science./%%"
0x00058C:
    if !(== self.room 88s) goto 0x0005D0
0x0005A0:
    stog.msg[0s] = "* Congratulations!/"
    stog.msg[1s] = "* You failed the puzzle!/%%"
0x0005D0:
    if !(== self.room 304s) goto 0x0005FC
0x0005E4:
    stog.msg[0s] = "* It's a crystal^1.&* You've never seen one&  like this before./%%"
0x0005FC:
    if !(== self.room 105s) goto 0x000628
0x000610:
    stog.msg[0s] = "* (Please take one.)/%%"
0x000628:
    if !(== self.room 116s) goto 0x000654
0x00063C:
    stog.msg[0s] = "* North: Blook Acres&* East: Hotland&* ???: Temmie Village/%%"
0x000654:
    if !(== self.room 122s) goto 0x000680
0x000668:
    stog.msg[0s] = "* (It's a stable for snails.^1)&* (A snable.)/%%"
0x000680:
    if !(== self.room 130s) goto 0x0006D0
0x000694:
    global.facechoice = 5s
    stog.msg[0s] = "* This is a damned test!/"
    stog.msg[1s] = "* 0^1. \\E1 1^1. \\E1 1^1.\\E2 1^1.\\E3 1^1.\\E4 1^1.\\E5 1^1.\\E6 1^1. \\E7 1^1.\\E8 1^1./%%"
0x0006D0:
    if !(== self.room 131s) goto 0x0006FC
0x0006E4:
    stog.msg[0s] = "* (Last chance to wish&  before Hotland^1.)&* (Careful of pollen.)/%%"
0x0006FC:
    if !(== self.room 118s) goto 0x00071C
0x000710:
    global.msc = 706s
0x00071C:
    if !(== self.room 138s) goto 0x000844
0x000730:
    global.facechoice = 8s
    global.typer = 27s
    global.faceemotion = 0s
    stog.msg[0s] = "* B/"
    stog.msg[1s] = "\\E1* B/"
    stog.msg[2s] = "\\E2* B/"
    stog.msg[3s] = "\\E3* B/"
    stog.msg[4s] = "\\E4* B/"
    stog.msg[5s] = "\\E5* B/"
    stog.msg[6s] = "\\E6* B/"
    stog.msg[7s] = "\\E7* B/"
    stog.msg[8s] = "\\E8* B/"
    stog.msg[9s] = "\\E9* B/%%"
0x000844:
    if !(== self.room 68s) goto 0x000888
0x000858:
    stog.msg[0s] = "* (Don't want to walk to the&  other side of town?)/"
    stog.msg[1s] = "* (Try the undersnow tunnels^1!)&* (They're efficiently laid out.)/%%"
0x000888:
    if !(== self.room 183s) goto 0x0008E4
0x00089C:
    stog.msg[0s] = "* East: Burgertown&* North: Cord&* West: Restraint/"
    stog.msg[1s] = "* This area's not done so no&  fun is allowed here yet./"
    stog.msg[2s] = "* Signed, the Manmengent/%%"
0x0008E4:
    if !(== self.room 128s) goto 0x000968
0x0008F8:
    stog.msg[0s] = "* hOI!^1!&* welcom to..^1.&* TEM VILLAGE!!!/%%"
    if !(> self.x 270s) goto 0x00093C
0x000924:
    stog.msg[0s] = "* hOI!^1!&* u shud check out..^1.&* TEM SHOP!!!/%%"
0x00093C:
    if !(> self.x 330s) goto 0x000968
0x000950:
    stog.msg[0s] = "* yaYA!^1! i AGREES!^1!&* shud check..^1.&* TEM SHOP!!!/%%"
0x000968:
    if !(== self.room 185s) goto 0x0009AC
0x00097C:
    stog.msg[0s] = "* Learning how to draw^1?&* Come to the Art Lessons on&  the second floor!/"
    stog.msg[1s] = "* Located in a similar place./%%"
0x0009AC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0009EC:
    exit
