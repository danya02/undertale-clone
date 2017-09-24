0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    push -5s
    if !(== 192s:flag 0s) goto 0x000754
0x000058:
    push -5s
    if !(> 41s:flag 0s) goto 0x0002BC
0x000074:
    stog.msg[0s] = "* hey^1, frisk^1, what's&  with that weird&  expression?/"
    call (scr_torface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "\\E2* Sans^1, did I tell you&  about the time Frisk&  flirted with me...?/"
    push -5s
    if !(> 42s:flag 0s) goto 0x0000F4
0x0000DC:
    stog.msg[3s] = "\\E8* And then asked to&  call me \"mother?\"/"
0x0000F4:
    push -5s
    if !(== 42s:flag 0s) goto 0x000128
0x000110:
    stog.msg[3s] = "\\E0* I felt so embarrassed&  for them./"
0x000128:
    call (scr_sansface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "\\E1* oh boy./"
    call (scr_papface[]:int32 (var 3s) (var 6s))
    stog.msg[7s] = "\\E3WOW^1, FRISK.../"
    stog.msg[8s] = "\\E0THIS REALLY PUTS&OUR RELATIONSHIP&IN A NEW LIGHT./"
    call (scr_sansface[]:int32 (var 2s) (var 9s))
    stog.msg[10s] = "\\E1* hey^1, tori^1, do you&  have any other&  embarrassing stories?/"
    call (scr_torface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "\\E0* Oh^1, do I ever!/"
    stog.msg[13s] = "\\E1* But, I think that&  story is one of the&  most unbelievable./"
    stog.msg[14s] = "\\E0* It is hard to think&  anyone would want to&  flirt with me./"
    call (scr_alface[]:int32 (var 0s) (var 15s))
    stog.msg[16s] = "\\E0* Ehehe.../"
    stog.msg[17s] = "\\E7* Ehehehe.../"
    stog.msg[18s] = "\\E1* AHA^1! AHAHAH^1!&* HA!^1! HA!!!/"
    stog.msg[19s] = "\\E2* Oh^1, Toriel^1.&* You have NO idea./%%"
0x0002BC:
    push -5s
    if !(== 41s:flag 0s) goto 0x0002F4
0x0002D8:
    push -5s
    push (> 42s:flag 0s)
    goto 0x0002F8
0x0002F4:
    push 0s
0x0002F8:
    if !pop goto 0x000560
0x0002FC:
    stog.msg[0s] = "\\E0* oh hey^1, what's up^1,&  frisk?/"
    stog.msg[1s] = "\\E2* we were just talking&  about you./"
    stog.msg[2s] = "\\E1* apparently you asked&  to call tori \"mom\" right&  after meeting her?/"
    call (scr_torface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "\\E1* Well^1, it was not&  RIGHT after./"
    stog.msg[5s] = "\\E0* It took a couple&  minutes./"
    call (scr_sansface[]:int32 (var 1s) (var 6s))
    stog.msg[7s] = "\\E0* frisk..^1.&* i gotta tell ya./"
    stog.msg[8s] = "\\E2* that's^1, uh^1, not the&  best way to get&  to know someone./"
    call (scr_papface[]:int32 (var 3s) (var 9s))
    stog.msg[10s] = "\\E3IT'S NOT???/"
    call (scr_undface[]:int32 (var 9s) (var 11s))
    stog.msg[12s] = "\\E9* Papyrus^1, we've been&  over this./"
    call (scr_papface[]:int32 (var 4s) (var 13s))
    stog.msg[14s] = "\\E4WHATEVER^1, MOM!!!/"
    call (scr_undface[]:int32 (var 1s) (var 15s))
    stog.msg[16s] = "\\E1* Don't talk back to&  me like that!/"
    stog.msg[17s] = "\\E6* Go to your room^1,&  Papyrus!/"
    call (scr_papface[]:int32 (var 5s) (var 18s))
    stog.msg[19s] = "\\E5OK^1, UNDYNE./"
    call (scr_undface[]:int32 (var 1s) (var 20s))
    stog.msg[21s] = "\\E1* Wait^1!&* Don't ACTUALLY go&  to your room!!/"
    call (scr_papface[]:int32 (var 7s) (var 22s))
    stog.msg[23s] = "\\E7I'M GETTING MIXED&  MESSAGES HERE!!!/%%"
0x000560:
    push -5s
    if !(== 41s:flag 0s) goto 0x000598
0x00057C:
    push -5s
    push (== 42s:flag 0s)
    goto 0x00059C
0x000598:
    push 0s
0x00059C:
    if !pop goto 0x000754
0x0005A0:
    stog.msg[0s] = "\\E0* frisk^1, tori was telling&  me how she made&  b'scotch pie for you./"
    call (scr_torface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "\\E0* Oh^1, I should bake it&  for everyone sometime!/"
    call (scr_asgface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "* .../"
    call (scr_alface[]:int32 (var 3s) (var 5s))
    stog.msg[6s] = "\\E3* (O-oh^1, that sounds&  REALLY good.)/"
    call (scr_papface[]:int32 (var 3s) (var 7s))
    stog.msg[8s] = "\\E3COOKING???/"
    stog.msg[9s] = "\\E0CAN I HELP?/"
    call (scr_undface[]:int32 (var 1s) (var 10s))
    stog.msg[11s] = "* Wait a second!!!/"
    stog.msg[12s] = "\\E6* Can I help too!?/"
    call (scr_torface[]:int32 (var 0s) (var 13s))
    stog.msg[14s] = "\\E0* Certainly^1!&* It would be fun to&  cook together!/"
    call (scr_alface[]:int32 (var 9s) (var 15s))
    stog.msg[16s] = "\\E9* (On second thought^1,&  maybe I'll o-order&  a pizza.)/%%"
0x000754:
    push -5s
    if !(>= 192s:flag 1s) goto 0x000808
0x000770:
    stog.msg[0s] = "\\E0* sorry..^1.&* i don't have time&  to talk^1, frisk./"
    stog.msg[1s] = "\\E1* i'm supposed to be&  working right now./"
    call (scr_papface[]:int32 (var 4s) (var 2s))
    stog.msg[3s] = "\\E4BUT YOU AREN'T&  WORKING!!!/"
    call (scr_sansface[]:int32 (var 2s) (var 4s))
    stog.msg[5s] = "\\E2* i know^1, and it's&  taking all my&  concentration./%%"
0x000808:
    push -5s
    stog.flag[(+ 192s:flag 1s)] = 192s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00086C:
    exit
