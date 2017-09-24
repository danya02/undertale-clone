0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.room 224s) goto 0x000118
0x000050:
    if !(<= self.x (+ -10s (/ self.room_width (double 2s)))) goto 0x0000B4
0x00007C:
    push -5s
    if !(== 114s:flag 0s) goto 0x0000A8
0x000098:
    global.msc = 268s
    goto 0x0000B4
0x0000A8:
    global.msc = 272s
0x0000B4:
    if !(>= self.x (+ -10s (/ self.room_width (double 2s)))) goto 0x000118
0x0000E0:
    push -5s
    if !(== 115s:flag 0s) goto 0x00010C
0x0000FC:
    global.msc = 270s
    goto 0x000118
0x00010C:
    global.msc = 272s
0x000118:
    if !(== self.room 225s) goto 0x00015C
0x00012C:
    stog.msg[0s] = "* (It's a trash can.)/"
    stog.msg[1s] = "* (It's full of crumpled-up&  recipes for butterscotch&  pie.)/%%"
0x00015C:
    if !(== self.room 223s) goto 0x000188
0x000170:
    stog.msg[0s] = "* (It's a trophy.^1)&* (Number 1 Nose-Nuzzle&  Champs '98!)/%%"
0x000188:
    if !(== self.room 83s) goto 0x00020C
0x00019C:
    stog.msg[0s] = "* This is an Echo Flower^1.&* It repeats the last thing&  it heard^1, over and over.../%%"
    if !(> self.talkedto 0s) goto 0x0001E0
0x0001C8:
    stog.msg[0s] = "* Neat^1, huh?/%%"
0x0001E0:
    if !(== 1158.v 1s) goto 0x00020C
0x0001F4:
    stog.msg[0s] = "* Never trust a flower..^1.&* That's one of the constants&  of this world./%%"
0x00020C:
    if !(== self.room 89s) goto 0x00022C
0x000220:
    global.msc = 246s
0x00022C:
    if !(== self.room 85s) goto 0x00024C
0x000240:
    global.msc = 248s
0x00024C:
    if !(== self.room 94s) goto 0x0002C4
0x000260:
    stog.msg[0s] = "* This cheese has been here so&  long^1, a magical crystal has&  grown around it./"
    stog.msg[1s] = "* It's stuck to the table.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0002C4
0x0002AC:
    stog.msg[0s] = "* (Seems like the mouse has&  freed some of the cheese&  from the crystal somehow.)/%%"
0x0002C4:
    if !(== self.room 95s) goto 0x000434
0x0002D8:
    stog.msg[0s] = "* What's a star?/"
    stog.msg[1s] = "* Can you touch it?/"
    stog.msg[2s] = "* Can you eat it?/"
    stog.msg[3s] = "* Can you kill it?/"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "* Are you a star?/%%"
    push -5s
    if !(== 85s:flag 1s) goto 0x00039C
0x000384:
    stog.msg[0s] = "* What are you holding^1?&* Is that a star?/%%"
0x00039C:
    push -5s
    if !(== 7s:flag 1s) goto 0x0003E8
0x0003B8:
    stog.msg[0s] = "* We can go and see the&  real stars now.../"
    stog.msg[1s] = "* But I still don't know&  what those are./%%"
0x0003E8:
    push -5s
    if !(== 350s:flag 1s) goto 0x000434
0x000404:
    stog.msg[0s] = "* One of the stars faded out./"
    stog.msg[1s] = "* What does that mean...?/%%"
0x000434:
    if !(== self.room 96s) goto 0x000454
0x000448:
    global.msc = 250s
0x000454:
    if !(== self.room 98s) goto 0x000474
0x000468:
    global.msc = 252s
0x000474:
    if !(== self.sprite_index 1629s) goto 0x0006E0
0x000488:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a dirty sock with a&  series of notes on it.)/"
    stog.msg[1s] = "\\TP %"
    stog.msg[2s] = "SANS^1!&PLEASE PICK UP YOUR SOCK!/"
    stog.msg[3s] = "\\Ts %"
    stog.msg[4s] = "* ok./"
    stog.msg[5s] = "\\TP %"
    stog.msg[6s] = "DON'T PUT IT BACK DOWN^1!&MOVE IT!/"
    stog.msg[7s] = "\\Ts %"
    stog.msg[8s] = "* ok./"
    stog.msg[9s] = "\\TP %"
    stog.msg[10s] = "YOU MOVED IT TWO INCHES^1!&MOVE IT TO YOUR ROOM!/"
    stog.msg[11s] = "\\Ts %"
    stog.msg[12s] = "* ok./"
    stog.msg[13s] = "\\TP %"
    stog.msg[14s] = "AND DON'T BRING IT BACK!/"
    stog.msg[15s] = "\\Ts %"
    stog.msg[16s] = "* ok./"
    stog.msg[17s] = "\\TP %"
    stog.msg[18s] = "IT'S STILL HERE!/"
    stog.msg[19s] = "\\Ts %"
    stog.msg[20s] = "* didn't you just say not&  to bring it back to my&  room?/"
    stog.msg[21s] = "\\TP %"
    stog.msg[22s] = "FORGET IT!/%%"
0x0006E0:
    if !(== self.room 304s) goto 0x000700
0x0006F4:
    global.msc = 580s
0x000700:
    if !(== self.room 117s) goto 0x0007D4
0x000714:
    stog.msg[0s] = "* What^1.&* What^1?&* WHAT!?/"
    stog.msg[1s] = "* It's a living./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000790
0x000760:
    stog.msg[0s] = "* So^1, you helped get us&  all free.../"
    stog.msg[1s] = "* I guess I really acted&  like a dummy to you./%%"
0x000790:
    if !(>= (scr_murderlv[]:int32 ) 9s) goto 0x0007D4
0x0007A4:
    stog.msg[0s] = "* Sorry for acting like a&  dummy before./"
    stog.msg[1s] = "* You've really helped me&  out!!/%%"
0x0007D4:
    if !(== self.room 122s) goto 0x000864
0x0007E8:
    stog.msg[0s] = "* (It's a snail.)/"
    stog.msg[1s] = "* (For some reason^1, you can't&  help but wonder what it&  tastes like...)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000864
0x000834:
    stog.msg[0s] = "* (It's a snail.)/"
    stog.msg[1s] = "* (You wonder if Toriel has&  seen it.)/%%"
0x000864:
    if !(== self.room 91s) goto 0x0008F8
0x000878:
    stog.msg[0s] = "* Boo-hoo^1, boo-hoo./%%"
    push -5s
    if !(== 85s:flag 1s) goto 0x0008C4
0x0008AC:
    stog.msg[0s] = "* Boo-hoo^1, boo-hoo^1,&  umbrella boo-hoo./%%"
0x0008C4:
    push -5s
    if !(== 7s:flag 1s) goto 0x0008F8
0x0008E0:
    stog.msg[0s] = "* Boo-hoo^1, triumphant&  boo-hoo./%%"
0x0008F8:
    if !(== self.room 149s) goto 0x000AEC
0x00090C:
    stog.msg[0s] = "* We were hanging out&  when suddenly^1, a buncha puzzles&  reactivated out of nowhere./"
    stog.msg[1s] = "* This is a huge problem..^1.&* It rules^1! They've GOTTA&  cancel school over this!/%%"
    if !(> self.talkedto 0s) goto 0x000968
0x000950:
    stog.msg[0s] = "* Wait a second..^1.&* Auuuugh^1, it's summer vacation!/%%"
0x000968:
    push -5s
    if !(== 7s:flag 1s) goto 0x0009B4
0x000984:
    stog.msg[0s] = "* Hey^1, did you hear^1?&* The barrier's opened up!/"
    stog.msg[1s] = "* Now school HAS to be&  cancelled^1, right!?/%%"
0x0009B4:
    push -5s
    if !(== 425s:flag 1s) goto 0x000A00
0x0009D0:
    stog.msg[0s] = "* Why should we bother going&  to school^1, anyway...?/"
    stog.msg[1s] = "* This world's got no future./%%"
0x000A00:
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x000AEC
0x000A28:
    stog.msg[0s] = "* Finally!&* Someone turned off that laser!/"
    stog.msg[1s] = "* Now that we're free we can..^1.&* Well^1, uh^1, I guess we'll just&  keep standing here./%%"
    if !(> self.talkedto 0s) goto 0x000A84
0x000A6C:
    stog.msg[0s] = "* Hm^1?&* Nice try^1, but your loitering&  technique still needs work./%%"
0x000A84:
    push -5s
    if !(== 7s:flag 1s) goto 0x000AB8
0x000AA0:
    stog.msg[0s] = "* There will be lots of places&  to loiter on the surface^1,&  I bet./%%"
0x000AB8:
    push -5s
    if !(== 425s:flag 1s) goto 0x000AEC
0x000AD4:
    stog.msg[0s] = "* Loitering around..^1.&* What's the point?/%%"
0x000AEC:
    if !(== self.room 151s) goto 0x000D10
0x000B00:
    stog.msg[0s] = "* The way to work is blocked^1,&  so I had time to catch&  Mettaton's show on my phone.../"
    stog.msg[1s] = "* The special effects were&  amazing today^1!&* That human almost looked REAL!/%%"
    if !(> self.talkedto 0s) goto 0x000B5C
0x000B44:
    stog.msg[0s] = "* Of course^1, an experienced&  viewer like me knows CGI&  when they see it.../%%"
0x000B5C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000BA8
0x000B78:
    stog.msg[0s] = "* The barrier's opened up^1, so&  we don't have to go to&  work today./"
    stog.msg[1s] = "* I mean^1, sure^1, we're free^1,&  but it's the little&  things^1, you know?/%%"
0x000BA8:
    push -5s
    if !(== 425s:flag 1s) goto 0x000BF4
0x000BC4:
    stog.msg[0s] = "* That last episode had me&  really shaken.../"
    stog.msg[1s] = "* But Mettaton's OK^1.&* Everyone knows it's just CGI!/%%"
0x000BF4:
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x000D10
0x000C1C:
    stog.msg[0s] = "* Mettaton^1?&* Yeah^1, he's the most popular&  star in the underground!/"
    stog.msg[1s] = "* His fan club probably has&  at least two..^1. no^1, THREE&  dozen members!/%%"
    if !(> self.talkedto 0s) goto 0x000C78
0x000C60:
    stog.msg[0s] = "* And that's not even counting&  me!/%%"
0x000C78:
    push -5s
    if !(== 7s:flag 1s) goto 0x000CC4
0x000C94:
    stog.msg[0s] = "* Today^1, we all started as&  co-workers.../"
    stog.msg[1s] = "* Who knows what we'll be&  tomorrow?/%%"
0x000CC4:
    push -5s
    if !(== 425s:flag 1s) goto 0x000D10
0x000CE0:
    stog.msg[0s] = "* What a heartbreaker./"
    stog.msg[1s] = "* I bet his fanclub's almost&  doubled in size from that!/%%"
0x000D10:
    if !(== self.room 146s) goto 0x000D30
0x000D24:
    global.msc = 260s
0x000D30:
    if !(== self.room 161s) goto 0x000D50
0x000D44:
    global.msc = 262s
0x000D50:
    if !(== self.room 164s) goto 0x000DC8
0x000D64:
    stog.msg[0s] = "* (There's a piece of cheese&  inside this computerized&  laser-safe.)/"
    stog.msg[1s] = "* (The lasers have melted the&  edges of the cheese..^1.)&* (It's stuck to the table.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000DC8
0x000DB0:
    stog.msg[0s] = "* (Seems like the mouse hacked&  the safe and took the&  cheese out.)/%%"
0x000DC8:
    if !(== self.room 118s) goto 0x000E68
0x000DDC:
    global.facechoice = 5s
    global.faceemotion = 9s
    global.typer = 37s
    global.msc = 0s
    stog.msg[0s] = "* It's so nice to&  have you over!/"
    stog.msg[1s] = "* Why not take a&  seat at the&  table?/%%"
    if !(> self.talkedto 0s) goto 0x000E68
0x000E50:
    stog.msg[0s] = "* Sit at the freakin'&  table^1, you little&  nerd./%%"
0x000E68:
    if !(== self.room 170s) goto 0x000F88
0x000E7C:
    stog.msg[0s] = "* I..^1. I..^1. I ended up buying a&  donut.../"
    stog.msg[1s] = "* I..^1. I..^1. I didn't want to^1, but&  that girl..^1. even though I told&  her no^1, she.../"
    stog.msg[2s] = "* ... kept staring at me in this&  creepy way and licking her&  lips./"
    stog.msg[3s] = "* N..^1. now I'm outta cash./%%"
    if !(> self.talkedto 0s) goto 0x000F08
0x000EF0:
    stog.msg[0s] = "* Maybe I can sell it online&  and double my money back.../%%"
0x000F08:
    push -5s
    if !(== 7s:flag 1s) goto 0x000F54
0x000F24:
    stog.msg[0s] = "* On the surface^1, I won't&  buy any donuts from&  spiders./"
    stog.msg[1s] = "* That's my resolution./%%"
0x000F54:
    push -5s
    if !(== 425s:flag 1s) goto 0x000F88
0x000F70:
    stog.msg[0s] = "* .../%%"
0x000F88:
    if !(== self.room 206s) goto 0x000FA8
0x000F9C:
    global.msc = 264s
0x000FA8:
    if !(== self.room 207s) goto 0x000FC8
0x000FBC:
    global.msc = 266s
0x000FC8:
    if !(== self.room 238s) goto 0x000FF4
0x000FDC:
    stog.msg[0s] = "* (It's just a regular flower.)/%%"
0x000FF4:
    if !(== self.room 216s) goto 0x001020
0x001008:
    stog.msg[0s] = "* From now on^1, call me&  \"Jimmy Hotpants.\"/%%"
0x001020:
    if !(== self.room 139s) goto 0x00108C
0x001034:
    if !(< self.y 70s) goto 0x00108C
0x001048:
    stog.msg[0s] = "* .../%%"
    if !(> self.talkedto 0s) goto 0x00108C
0x001074:
    stog.msg[0s] = "* ... what?/%%"
0x00108C:
    if !(== self.room 251s) goto 0x0010B8
0x0010A0:
    stog.msg[0s] = "* (It's an empty dog food&  bowl.)/%%"
0x0010B8:
    if !(== self.room 78s) goto 0x0010FC
0x0010CC:
    stog.msg[0s] = "* (It's a treadmill.^1)&* (There's a message attached.)/"
    stog.msg[1s] = "* \"the truth is that you got&  owned^1, nerd......\"/%%"
0x0010FC:
    if !(== self.room 181s) goto 0x001128
0x001110:
    stog.msg[0s] = "* (... he seems happy.)/%%"
0x001128:
    if !(== self.room 48s) goto 0x001154
0x00113C:
    stog.msg[0s] = "* Sn..^1. ow..^1. y.../%%"
0x001154:
    if !(== self.room 119s) goto 0x0014B0
0x001168:
    global.typer = 27s
    global.facechoice = 8s
    push -5s
    if !(== 198s:flag 0s) goto 0x0012D4
0x00119C:
    stog.msg[0s] = "\\E0* There you are^1,&  Frisk-darling./"
    stog.msg[1s] = "\\E8* Feast your eyes^1!&* Dr. Alphys completed&  my wonderful new body./"
    stog.msg[2s] = "\\E7* Oooh^1!&* And did you hear^1?&* The barrier's OPEN!/"
    stog.msg[3s] = "\\E4* I can't wait to see&  the sun.../"
    stog.msg[4s] = "\\E5* ... the greatest&  spotlight of all!!/"
    stog.msg[5s] = "\\E9* Oh yes^1.&* I suppose I should thank&  you^1, too^1, darling./"
    stog.msg[6s] = "\\E2* Before fighting you^1,&  I had.../"
    stog.msg[7s] = "\\E4* Forgotten how fun it&  was to perform with&  others./"
    stog.msg[8s] = "\\E6* So I've been searching&  for HOT TALENTS to fill&  up my upcoming troupe./"
    stog.msg[9s] = "\\E0* So far^1, Shyren's agreed&  to be my back-up singer./"
    stog.msg[10s] = "\\E0* And Bl..^1.&* Napstablook^1, here^1, will&  be my sound mixer!/"
    stog.msg[11s] = "\\E2* The three of us&  performing together.../"
    stog.msg[12s] = "\\E4* It really feels overdue^1,&  doesn't it?/%%"
0x0012D4:
    push -5s
    if !(== 198s:flag 1s) goto 0x001428
0x0012F0:
    stog.msg[0s] = "\\E0* Frisk^1, darling^1.&* Can you help me with&  something?/"
    stog.msg[1s] = "\\E2* What kind of merchandise&  do you think humans&  would want to buy...?/"
    stog.msg[2s] = "\\E1* I've thought of a few&  ideas so far./"
    stog.msg[3s] = "\\E6* Buttons (with my face)&* Stickers (with my face)&* CDs (with my face)/"
    stog.msg[4s] = "\\E7* Posters (with my face)&* T-shirts (with my face)&* Underwear (with my face)/"
    stog.msg[5s] = "\\E9* ... and plush dolls of&  TORIEL./"
    stog.msg[6s] = "\\E8* But, you know^1.&* With my face instead&  of hers./"
    stog.msg[7s] = "\\E0* So what do you think?/"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* (...)/"
    stog.msg[10s] = "* (A yes or no prompt was not&  provided.)/"
    stog.msg[11s] = "\\TS \\F8 \\TM %"
    stog.msg[12s] = "\\E9* Fabulous^1!&* I completely agree!/%%"
0x001428:
    push -5s
    if !(>= 198s:flag 2s) goto 0x00148C
0x001444:
    stog.msg[0s] = "\\E2* Oh^1, Frisk^1.&* Why don't you go see&  how Alphys is doing?/"
    stog.msg[1s] = "\\E1* Since the flash of light&  she's been working hard&  to set everything right./"
    stog.msg[2s] = "\\E0* Ha-Ha^1.&* About time^1, huh?/%%"
0x00148C:
    push -5s
    stog.flag[(+ 198s:flag 1s)] = 198s
0x0014B0:
    if !(== self.room 266s) goto 0x0014F4
0x0014C4:
    stog.msg[0s] = "* (By barking with text-to-speech&  on^1, the dog accidentally&  programmed a whole game.)/"
    stog.msg[1s] = "* (Hmmm..^1. seems fine.)/%%"
0x0014F4:
    if !(== self.room 184s) goto 0x001928
0x001508:
    stog.msg[0s] = "* Blub blub..^1.&* You'll have to reserve a&  table to eat here./"
    stog.msg[1s] = "* You'll also need to reserve&  your chair^1, your silverware^1,&  your food^1, your.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x00156C
0x001554:
    stog.msg[0s] = "* Blub blub..^1.&* Now we can live life&  without reservations./%%"
0x00156C:
    push -5s
    if !(== 425s:flag 1s) goto 0x0015D0
0x001588:
    stog.msg[0s] = "* Blub blub..^1.&* Mettaton isn't here to press&  his face into the steaks./"
    stog.msg[1s] = "* He told me that if he ever&  disappeared^1, we could use&  my face instead.../"
    stog.msg[2s] = "* But^1, I'm nervous^1.&* What if my face doesn't&  taste very good...?/%%"
0x0015D0:
    if !(< self.x 120s) goto 0x0016DC
0x0015E4:
    stog.msg[0s] = "* As I came in^1, I realized I&  forgot to make a reservation./"
    stog.msg[1s] = "* But I didn't want to look&  like I messed up^1.&* So I kept walkin' in anyway./"
    stog.msg[2s] = "* Now I'm just..^1. kinda..^1.&* Consuming dew off this ficus./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001690
0x001648:
    stog.msg[0s] = "* Oh^1, we're all free?/"
    stog.msg[1s] = "* Oh..^1.&* Guess I can..^1.&* Stop lickin' this ficus./"
    stog.msg[2s] = "* ... but I don't want to look&  like I messed up^1, so&  I'll keep going.../%%"
0x001690:
    push -5s
    if !(== 425s:flag 1s) goto 0x0016DC
0x0016AC:
    stog.msg[0s] = "* What would Mettaton think if&  he saw me licking this&  plant of his...?/"
    stog.msg[1s] = "* Eh..^1. who cares./%%"
0x0016DC:
    if !(> self.y 120s) goto 0x001928
0x0016F0:
    if !(> self.x 600s) goto 0x001718
0x001704:
    push (< self.x 660s)
    goto 0x00171C
0x001718:
    push 0s
0x00171C:
    if !pop goto 0x001800
0x001720:
    stog.msg[0s] = "* I work at the CORE^1.&* The inside is a maze made of&  swappable parts.../"
    stog.msg[1s] = "* That means we can shuffle the&  layout at will./"
    stog.msg[2s] = "* Boy^1, was today a FUN day^1!&* I sure love PUZZLE!!!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0017B4
0x001784:
    stog.msg[0s] = "* So^1, if we're leaving^1, will&  my job...?/"
    stog.msg[1s] = "* Ugh^1, and I just got a raise^1!&* Well^1, guess every apple has&  its CORE^1, heheh./%%"
0x0017B4:
    push -5s
    if !(== 425s:flag 1s) goto 0x001800
0x0017D0:
    stog.msg[0s] = "* Today^1, we received the&  promise of a lot of money&  from a strange source./"
    stog.msg[1s] = "* It may not be kosher^1, but..^1.&* Whew^1! I love puzzle!/%%"
0x001800:
    if !(> self.x 510s) goto 0x001828
0x001814:
    push (< self.x 540s)
    goto 0x00182C
0x001828:
    push 0s
0x00182C:
    if !pop goto 0x001928
0x001830:
    stog.msg[0s] = "* Originally^1, we dug mazes&  with puzzles in order to&  foil human attacks./"
    stog.msg[1s] = "* But now^1, building things&  winding and confusing...^1.&* It's some awful tradition./"
    stog.msg[2s] = "* You can't go (ugh) two feet&  without being up to your&  armpits in puzzles./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0018C4
0x001894:
    stog.msg[0s] = "* The surface world..^1.&* Really!/"
    stog.msg[1s] = "* Maybe I'll be able to&  go two feet without running&  into a puzzle./%%"
0x0018C4:
    push -5s
    if !(== 425s:flag 1s) goto 0x001928
0x0018E0:
    stog.msg[0s] = "* One thing I can say.../"
    stog.msg[1s] = "* I respect Mettaton for not&  putting any puzzles here./"
    stog.msg[2s] = "* At another hotel^1, I had&  to find 12 magic keys just to&  unlock the shower./%%"
0x001928:
    if !(== self.room 178s) goto 0x0019EC
0x00193C:
    stog.msg[0s] = "* Mettaton looked really..^1.&* Really cool in that dress./"
    stog.msg[1s] = "* It sort of makes me feel like&  I could wear one^1, too!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0019B8
0x001988:
    stog.msg[0s] = "* Mettaton..^1.!&* He recognized my voice from&  when I called in^1, and.../"
    stog.msg[1s] = "* He..^1. he gave me his dress^1!&* I'm so...^1!&* Ha ha ha!/%%"
0x0019B8:
    push -5s
    if !(== 425s:flag 1s) goto 0x0019EC
0x0019D4:
    stog.msg[0s] = "* Please don't talk to me^1.&* I am feeling discouraged&  about something./%%"
0x0019EC:
    if !(== self.room 183s) goto 0x001B10
0x001A00:
    stog.msg[0s] = "* Welcome to MTT Resort - &* Hotland's biggest apartment-&  building-turned-hotel!/"
    stog.msg[1s] = "* Whether you're here for a night&  or still live here^1, MTT Resort&  prides itself on a great stay!/"
    stog.msg[2s] = "* Just passing through...^1? Nice^1!&* MTT Resort prides itself on&  being passed through!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001A94
0x001A64:
    stog.msg[0s] = "* Sorry - the resort's shutting&  down./"
    stog.msg[1s] = "* But I think you'll find it's&  still great to pass through!/%%"
0x001A94:
    push -5s
    if !(== 425s:flag 1s) goto 0x001B10
0x001AB0:
    stog.msg[0s] = "* Welcome to MTT Resort^1!&* Have you seen Mettaton?/"
    stog.msg[1s] = "* He hasn't come by lately^1.&* I have a lot of respect for&  that man./"
    stog.msg[2s] = "* I had trouble getting a job&  because I am so pointy and&  angular./"
    stog.msg[3s] = "* But^1, being a rectangle^1, he&  understood my struggles./%%"
0x001B10:
    if !(== self.room 158s) goto 0x001C64
0x001B24:
    if !(> self.x 170s) goto 0x001C4C
0x001B38:
    stog.msg[0s] = "* I love hot dogs!/"
    stog.msg[1s] = "* Hey..^1.&* Isn't it weird there's&  SNOW on that guy's roof?/"
    stog.msg[2s] = "* ... guess he's just too lazy&  to clean it off./%%"
    if !(~ (bool (instance_exists[]:int32 (var 1022s)))) goto 0x001BE4
0x001B9C:
    stog.msg[0s] = "* I love hot dogs!/"
    stog.msg[1s] = "* But the hot dog guy left..^1.&* Even though all of his&  stuff is still here./"
    stog.msg[2s] = "* ... guess he's just too lazy&  to clean it away./%%"
0x001BE4:
    push -5s
    if !(== 7s:flag 1s) goto 0x001C48
0x001C00:
    stog.msg[0s] = "* I wanted another hot dog^1.&* But the hot dog guy never&  came back./"
    stog.msg[1s] = "* Besides that^1?&* Today was fine./"
    stog.msg[2s] = "* Count your blessings^1.&* Even if you don't get a&  second hot dog./%%"
0x001C48:
    goto 0x001C64
0x001C4C:
    stog.msg[0s] = "* Toasty bun!/%%"
0x001C64:
    if !(== self.room 128s) goto 0x001C90
0x001C78:
    stog.msg[0s] = "* (It's hard-boiled.)/%%"
0x001C90:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x001CD0:
    exit
