0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    if !(== self.room 59s) goto 0x000224
0x000050:
    stog.msg[0s] = "MY BROTHER STARTED&A SOCK COLLECTION&RECENTLY./"
    stog.msg[1s] = "\\E3HOW SADDENING.../"
    stog.msg[2s] = "\\E0SOMETIMES I WONDER&WHAT HE WOULD&DO.../"
    stog.msg[3s] = "WITHOUT SUCH A&COOL GUY TAKING&CARE OF HIM???/"
    stog.msg[4s] = "NYEH HEH HEH!/%%"
    if !(bool (instance_exists[]:int32 (var 1001s))) goto 0x000224
0x0000E0:
    if !(> self.x (- 1001.x 100s)) goto 0x000224
0x000100:
    self.sprite_index = self.dtsprite
    stog.msg[0s] = "SO^1, YOU WANT&A HINT^1, HUH?/"
    stog.msg[1s] = "\\E3WELL..^1.&I'VE BEEN LOOKING&AT THE PUZZLE.../"
    stog.msg[2s] = "AND I THINK THE&SOLUTION.../"
    stog.msg[3s] = "\\E0IS TO TURN ALL&OF THE X'S INTO&O'S!/"
    stog.msg[4s] = "YOU SHOULD TRY&THAT!/"
    stog.msg[5s] = "ASK AGAIN FOR&MORE GREAT HINTS!/%%"
    if !(== self.talkedto 1s) goto 0x0001E4
0x0001B4:
    stog.msg[0s] = "\\WMAYBE SOLVING&THE \\YLAST PUZZLE\\W &AGAIN WILL HELP./"
    stog.msg[1s] = "ASK AGAIN FOR&MORE GREAT HINTS!!/%%"
0x0001E4:
    if !(== self.talkedto 2s) goto 0x000204
0x0001F8:
    global.msc = 692s
0x000204:
    if !(> self.talkedto 2s) goto 0x000224
0x000218:
    global.msc = 694s
0x000224:
    if !(== self.room 117s) goto 0x00087C
0x000238:
    self.dir = 1s
    self.d = 0s
    if !(< global.plot 122s) goto 0x000270
0x000264:
    self.d = 1s
0x000270:
    push -5s
    if !(< 354s:flag 2s) goto 0x000298
0x00028C:
    self.d = 1s
0x000298:
    push -5s
    if !(== 67s:flag 1s) goto 0x0002C0
0x0002B4:
    self.d = 1s
0x0002C0:
    push -5s
    if !(< 88s:flag 3s) goto 0x0002E8
0x0002DC:
    self.d = 1s
0x0002E8:
    push -5s
    if !(== 350s:flag 1s) goto 0x000310
0x000304:
    self.d = 1s
0x000310:
    push -5s
    if !(== 350s:flag 2s) goto 0x000338
0x00032C:
    self.d = 1s
0x000338:
    if !(> global.kills 0s) goto 0x000358
0x00034C:
    self.d = 1s
0x000358:
    if !(== self.d 1s) goto 0x00083C
0x00036C:
    stog.msg[0s] = "Error, Pepibs./%%"
    if !(> global.kills 0s) goto 0x000544
0x000398:
    stog.msg[0s] = "I ASKED UNDYNE&IF WE COULD&ALL HANG.../"
    stog.msg[1s] = "\\E3BUT SHE SAID&SOMETHING WEIRD./"
    stog.msg[2s] = "\\E0SHE SAID SHE&WON'T HANG OUT&WITH A MURDERER./"
    stog.msg[3s] = "\\E3BUT..^1. HMM.../"
    stog.msg[4s] = "\\E5I DON'T REMEMBER&MURDERERING&ANYONE.../"
    stog.msg[5s] = "\\E3THOUGH I AM A&PRETTY BRUTAL&KIND OF GUY./"
    stog.msg[6s] = "\\E3THEN SHE SAID&SOMETHING ABOUT&WANTING TO.../"
    stog.msg[7s] = "\\E1FIGHT SOME KIND&OF BAD GUY./"
    stog.msg[8s] = "\\E3BUT SHE SEEMS&VERY..^1. WEAK&FROM SOMETHING./"
    stog.msg[9s] = "\\E5SHE STEPPED OUT&AND COLLAPSED IN&THE DOORWAY./"
    stog.msg[10s] = "\\E0SO I'M JUST&WAITING HERE IN&CASE SHE NEEDS ME./"
    stog.msg[11s] = "\\E3SINCE SHE HATES&BEING WAITED ON&HAND AND FOOT./"
    stog.msg[12s] = "\\E5I THINK WE'LL&HAVE TO HANG&OUT LATER.../%%"
    if !(> self.talkedto 0s) goto 0x000544
0x0004E4:
    stog.msg[0s] = "HEY^1, I.../"
    stog.msg[1s] = "\\E5REALLY DOUBT&WE'RE GOING TO&BE ABLE TO HANG./"
    stog.msg[2s] = "\\E3IT'S HARD TO&IMAGINE^1, BUT.../"
    stog.msg[3s] = "\\E0YOU'LL HAVE TO&SPEND TIME WITH&NOT ME./%%"
0x000544:
    push -5s
    if !(== 350s:flag 1s) goto 0x000664
0x000560:
    stog.msg[0s] = "HEY^1! READY TO&HANG OUT WITH&UNDYNE???/"
    stog.msg[1s] = "GREAT!!^1!&ME TOO!!!/"
    stog.msg[2s] = "\\E3HOWEVER^1, SHE'S&NOT HERE./"
    stog.msg[3s] = "\\E0NORMALLY SHE&RETURNS AT ABOUT&THIS TIME./"
    stog.msg[4s] = "\\E3SHE'S LATE&THOUGH.../"
    stog.msg[5s] = "\\E3AND SHE'S NOT&ANSWERING HER&PHONE./"
    stog.msg[6s] = "\\E0HOW STRANGE./"
    stog.msg[7s] = "I'LL JUST WAIT&HERE UNTIL SHE&GETS HOME./"
    stog.msg[8s] = "I'LL CALL YOU&WHEN SHE GETS&HERE^1, OKAY!?/%%"
    if !(> self.talkedto 0s) goto 0x000664
0x00064C:
    stog.msg[0s] = "NOPE!^1!&SHE ISN'T HERE&YET!!!/%%"
0x000664:
    push -5s
    if !(== 350s:flag 2s) goto 0x00079C
0x000680:
    stog.msg[0s] = "UNDYNE'S HOME^1,&BUT SHE ISN'T&FEELING WELL./"
    stog.msg[1s] = "\\E5I DON'T THINK WE&CAN HANG OUT./"
    stog.msg[2s] = "\\E3IT SEEMS LIKE SHE&CAUGHT HEAT-STROKE&OR SOMETHING./"
    stog.msg[3s] = "SOMEONE MUST HAVE&BROUGHT HER&BACK HOME.../"
    stog.msg[4s] = "\\E5BECAUSE SHE CAN&BARELY MOVE./"
    stog.msg[5s] = "\\E0BUT SHE IS&MUTTERING ABOUT&DESTROYING YOU./"
    stog.msg[6s] = "SO THAT'S A GOOD&VITAL SIGN./"
    stog.msg[7s] = "\\E3IN ANY CASE^1, I&DON'T THINK WE&CAN HANG OUT./"
    stog.msg[8s] = "\\E0I'M JUST WAITING&HERE IN CASE&SHE NEEDS ME./"
    stog.msg[9s] = "SO^1, I GUESS YOU&CAN RUN ALONG./%%"
    if !(> self.talkedto 0s) goto 0x00079C
0x000784:
    stog.msg[0s] = "UNDYNE IS SICK^1,&SO SHE CAN'T&PLAY TODAY./%%"
0x00079C:
    if !(< global.plot 122s) goto 0x00083C
0x0007B0:
    stog.msg[0s] = "HEY^1! READY TO&HANG OUT WITH&UNDYNE???/"
    stog.msg[1s] = "GREAT!!^1!&BECAUSE SHE'S NOT&EVEN HERE./"
    stog.msg[2s] = "BEING READY EARLY^1!&IT SHOWS HOW MUCH&YOU CARE!!/"
    stog.msg[3s] = "\\E3EVEN IF SHE'S&NOT HERE TO SEE&THAT./%%"
    if !(> self.talkedto 0s) goto 0x00083C
0x000824:
    stog.msg[0s] = "NOPE!^1!&SHE ISN'T HERE&YET!!!/%%"
0x00083C:
    if !(== self.d 0s) goto 0x00087C
0x000850:
    global.msc = 698s
    if !(> self.talkedto 0s) goto 0x00087C
0x000870:
    global.msc = 700s
0x00087C:
    if !(== self.room 68s) goto 0x000BB8
0x000890:
    stog.msg[0s] = "HELLO^1, MY FRIEND./"
    stog.msg[1s] = "WHAT BRINGS YOU&TO PAPYRUS TOWN?/%%"
    push -5s
    if !(== 354s:flag 0s) goto 0x00090C
0x0008DC:
    stog.msg[0s] = "HELLO..^1.&H-HOW ARE YOU^1,&MY F-FRIEND?/"
    stog.msg[1s] = "\\E5I'M FEELING VERY&NOT SUSPICIOUS&TODAY./%%"
0x00090C:
    push -5s
    if !(== 354s:flag 1s) goto 0x000970
0x000928:
    stog.msg[0s] = "HEY^1, I HAVE A&GREAT IDEA./"
    stog.msg[1s] = "LET'S HANG OUT&WITH UNDYNE&LATER./"
    stog.msg[2s] = "I'LL CALL YOU&WHEN I'M READY!/%%"
0x000970:
    if !(bool (instance_exists[]:int32 (var 1313s))) goto 0x000BB8
0x000988:
    stog.msg[0s] = "I'M SO GLAD YOU&AND UNDYNE ARE&FRIENDS NOW./"
    stog.msg[1s] = "YOU TWO GO&TOGETHER LIKE&PASTA AND BURNING!/%%"
    if !(> global.plot 175s) goto 0x000A44
0x0009CC:
    stog.msg[0s] = "OH^1, HEY.../"
    stog.msg[1s] = "\\E3YOU'RE LEAVING&SOON^1, RIGHT!?/"
    stog.msg[2s] = "\\E1DON'T COME HERE&TO SAY GOODBYE!!/"
    stog.msg[3s] = "\\E3GOODBYES AREN'T&ALLOWED IN MY&TOWN./"
    stog.msg[4s] = "\\E0JUST SEE-YOU-&LATERS./%%"
0x000A44:
    push -5s
    if !(== 493s:flag 8s) goto 0x000A90
0x000A60:
    stog.msg[0s] = "IT SEEMS UNDYNE&HAS SOMETHING&FOR YOU./"
    stog.msg[1s] = "SHE'S THE PERSON&THAT'S NOT ME./%%"
0x000A90:
    push -5s
    if !(== 493s:flag 9s) goto 0x000B3C
0x000AAC:
    stog.msg[0s] = "UNDYNE WRITES A&LOT OF LETTERS./"
    stog.msg[1s] = "\\E3BUT^1, SHE CAN NEVER&SEEM TO FIND THE&RIGHT WORDS./"
    stog.msg[2s] = "SO WHEN SHE GOES&TO DELIVER THEM&HERSELF.../"
    stog.msg[3s] = "SHE ALWAYS QUITS&SO SHE CAN GO&BACK AND REWRITE./"
    stog.msg[4s] = "\\E0THAT'S WHY SHE&ASKED YOU!!/"
    stog.msg[5s] = "BECAUSE YOU HAVE&NO STANDARDS!!!/%%"
0x000B3C:
    push -5s
    if !(== 493s:flag 10s) goto 0x000BB8
0x000B58:
    stog.msg[0s] = "ALPHYS SEEMS TO&HAVE DISAPPEARED./"
    stog.msg[1s] = "DON'T WORRY^1, THAT'S&NORMAL./"
    stog.msg[2s] = "YOU SHOULD GO&TO HER LAB./"
    stog.msg[3s] = "I'M SUPPOSED TO&PUT THESE&NUMBERS TOGETHER./%%"
0x000BB8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000BF8:
    exit
