0x000000:
    if !(== self.t 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x001044
0x000030:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    self.t = 1s
    push -5s
    if !(== 368s:flag 1s) goto 0x000094
0x000088:
    self.donotcall = 1s
0x000094:
    if !(== self.room 161s) goto 0x0000F0
0x0000A8:
    global.msc = 754s
    push -5s
    if !(== 409s:flag 1s) goto 0x0000DC
0x0000D0:
    self.donotcall = 1s
0x0000DC:
    stog.flag[409s] = 1s
0x0000F0:
    if !(== self.room 165s) goto 0x000118
0x000104:
    push (== self.ax 0s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x000254
0x000120:
    push -5s
    if !(< 369s:flag 25s) goto 0x000248
0x00013C:
    push -5s
    if !(< 369s:flag 24s) goto 0x00016C
0x000158:
    push (== self.ax 0s)
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x0001AC
0x000174:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* oopswait how's the humnan&  doing/%%"
    stog.flag[369s] = 24s
0x0001AC:
    push -5s
    if !(< 369s:flag 25s) goto 0x0001DC
0x0001C8:
    push (== self.ax 0s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x000244
0x0001E4:
    push -5s
    if !(== 67s:flag 1s) goto 0x00020C
0x000200:
    self.donotcall = 1s
0x00020C:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* Top 10 Shows That Make You&  Forget To Do Your Frickin Job/%%"
    stog.flag[369s] = 25s
0x000244:
    goto 0x000254
0x000248:
    self.donotcall = 1s
0x000254:
    if !(== self.room 164s) goto 0x00027C
0x000268:
    push (== self.ax 0s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x000480
0x000284:
    push -5s
    if !(< 369s:flag 23s) goto 0x000474
0x0002A0:
    push -5s
    if !(< 369s:flag 21s) goto 0x0002D0
0x0002BC:
    push (== self.ax 0s)
    goto 0x0002D4
0x0002D0:
    push 0s
0x0002D4:
    if !pop goto 0x000328
0x0002D8:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* OMG? ppl think Mew Mew 2&  is better than Mew Mew 1?/"
    stog.msg[1s] = "* LOLLLLL that's a joke&  right.../%%"
    stog.flag[369s] = 21s
0x000328:
    push -5s
    if !(< 369s:flag 22s) goto 0x000358
0x000344:
    push (== self.ax 0s)
    goto 0x00035C
0x000358:
    push 0s
0x00035C:
    if !pop goto 0x0003C0
0x000360:
    push -5s
    if !(== 67s:flag 1s) goto 0x000388
0x00037C:
    self.donotcall = 1s
0x000388:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* omg... DONT THEY GET IT RUINS&  Mew Mew's ENTIRE CHARACTER ARC/%%"
    stog.flag[369s] = 22s
0x0003C0:
    push -5s
    if !(< 369s:flag 23s) goto 0x0003F0
0x0003DC:
    push (== self.ax 0s)
    goto 0x0003F4
0x0003F0:
    push 0s
0x0003F4:
    if !pop goto 0x000470
0x0003F8:
    push -5s
    if !(== 67s:flag 1s) goto 0x000420
0x000414:
    self.donotcall = 1s
0x000420:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* My Mew Mew 2 Review:/"
    stog.msg[1s] = "* Mew Mew Kissy Cutie 2 Is&  Neither Kissy Nor Cutie.&* Its Trash. 0 stars/%%"
    stog.flag[369s] = 23s
0x000470:
    goto 0x000480
0x000474:
    self.donotcall = 1s
0x000480:
    if !(== self.room 163s) goto 0x0004A8
0x000494:
    push (== self.ax 0s)
    goto 0x0004AC
0x0004A8:
    push 0s
0x0004AC:
    if !pop goto 0x000508
0x0004B0:
    push -5s
    if !(< 369s:flag 20s) goto 0x0004FC
0x0004CC:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* that's the last time i try&  to help with a puzzle lmao/%%"
    stog.flag[369s] = 20s
    goto 0x000508
0x0004FC:
    self.donotcall = 1s
0x000508:
    if !(== self.room 159s) goto 0x000530
0x00051C:
    push (== self.ax 0s)
    goto 0x000534
0x000530:
    push 0s
0x000534:
    if !pop goto 0x0007FC
0x000538:
    push -5s
    if !(< 369s:flag 19s) goto 0x0007F0
0x000554:
    push -5s
    if !(< 369s:flag 16s) goto 0x000584
0x000570:
    push (== self.ax 0s)
    goto 0x000588
0x000584:
    push 0s
0x000588:
    if !pop goto 0x0005DC
0x00058C:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS posted a picture.\\W &* dinner with the girlfriend ;)/"
    stog.msg[1s] = "* (It's a picture of a catgirl&  figurine next to a bowl of&  instant noodles.)/%%"
    stog.flag[369s] = 16s
0x0005DC:
    push -5s
    if !(< 369s:flag 17s) goto 0x00060C
0x0005F8:
    push (== self.ax 0s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x0006BC
0x000614:
    push -5s
    if !(== 67s:flag 1s) goto 0x00063C
0x000630:
    self.donotcall = 1s
0x00063C:
    self.ax = 1s
    stog.msg[0s] = "\\YCoolSkeleton95 posted a picture.\\W &* ARE WE POSTING HOT \"PICS???\"&* HERE IS ME AND MY COOL FRIEND/"
    stog.msg[1s] = "* (It's a picture of Papyrus&  flexing in front of a mirror.)&* (He is wearing sunglasses.)/"
    stog.msg[2s] = "* (Giant muscular biceps are&  pasted onto his arms.)/"
    stog.msg[3s] = "* (The biceps are also wearing&  sunglasses.)/%%"
    stog.flag[369s] = 17s
0x0006BC:
    push -5s
    if !(< 369s:flag 18s) goto 0x0006EC
0x0006D8:
    push (== self.ax 0s)
    goto 0x0006F0
0x0006EC:
    push 0s
0x0006F0:
    if !pop goto 0x000754
0x0006F4:
    push -5s
    if !(== 67s:flag 1s) goto 0x00071C
0x000710:
    self.donotcall = 1s
0x00071C:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* LOL, CoolSkeleton95!&* ... that's a joke^1, right?/%%"
    stog.flag[369s] = 18s
0x000754:
    push -5s
    if !(< 369s:flag 19s) goto 0x000784
0x000770:
    push (== self.ax 0s)
    goto 0x000788
0x000784:
    push 0s
0x000788:
    if !pop goto 0x0007EC
0x00078C:
    push -5s
    if !(== 67s:flag 1s) goto 0x0007B4
0x0007A8:
    self.donotcall = 1s
0x0007B4:
    self.ax = 1s
    stog.msg[0s] = "\\YCoolSkeleton95 updated status.\\W &* THE ONLY JOKE HERE^1, IS&  HOW STRONG MY MUSCLES ARE./%%"
    stog.flag[369s] = 19s
0x0007EC:
    goto 0x0007FC
0x0007F0:
    self.donotcall = 1s
0x0007FC:
    if !(== self.room 153s) goto 0x000868
0x000810:
    push -5s
    if !(< 369s:flag 13s) goto 0x00085C
0x00082C:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* whatever!!! i'll just explain&  it!!!/%%"
    stog.flag[369s] = 13s
    goto 0x000868
0x00085C:
    self.donotcall = 1s
0x000868:
    if !(== self.room 151s) goto 0x000890
0x00087C:
    push (== self.ax 0s)
    goto 0x000894
0x000890:
    push 0s
0x000894:
    if !pop goto 0x0008FC
0x000898:
    push -5s
    if !(< 369s:flag 12s) goto 0x0008F0
0x0008B4:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* wonder if it would be unfun&  if i explained the puzzle.../%%"
    stog.flag[369s] = 12s
    goto 0x0008FC
0x0008F0:
    self.donotcall = 1s
0x0008FC:
    if !(== self.room 148s) goto 0x000924
0x000910:
    push (== self.ax 0s)
    goto 0x000928
0x000924:
    push 0s
0x000928:
    if !pop goto 0x000A00
0x00092C:
    push -5s
    if !(< 369s:flag 11s) goto 0x0009F4
0x000948:
    push -5s
    if !(< 369s:flag 10s) goto 0x0009A0
0x000964:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* Oh My God i Forgot to Tell&  THem Where To Go/%%"
    stog.flag[369s] = 10s
    goto 0x0009F0
0x0009A0:
    stog.msg[0s] = "\\YALPHYS posted a picture.\\W &* CUte PIC OF ME RIGHT NOW ^0.^0 /"
    stog.msg[1s] = "* (It's a photo of a garbage can&  with several pink^1, glittery&  filters over it.)/%%"
    stog.flag[369s] = 11s
    self.ax = 1s
0x0009F0:
    goto 0x000A00
0x0009F4:
    self.donotcall = 1s
0x000A00:
    if !(== self.room 147s) goto 0x000A28
0x000A14:
    push (== self.ax 0s)
    goto 0x000A2C
0x000A28:
    push 0s
0x000A2C:
    if !pop goto 0x000B04
0x000A30:
    push -5s
    if !(< 369s:flag 9s) goto 0x000AF8
0x000A4C:
    push -5s
    if !(< 369s:flag 8s) goto 0x000ABC
0x000A68:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* OMG I DID IT!!!/"
    stog.msg[1s] = "* claws haven't shook like that&  since undyne called me to ask&  about the weather... v.v/%%"
    stog.flag[369s] = 8s
    goto 0x000AF4
0x000ABC:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* WAIT THERE'S NO WEATHER DOWN&  HERE WHY DID SHE CALL ME/%%"
    stog.flag[369s] = 9s
0x000AF4:
    goto 0x000B04
0x000AF8:
    self.donotcall = 1s
0x000B04:
    if !(== self.room 145s) goto 0x000B2C
0x000B18:
    push (== self.ax 0s)
    goto 0x000B30
0x000B2C:
    push 0s
0x000B30:
    if !pop goto 0x000C08
0x000B34:
    push -5s
    if !(< 369s:flag 7s) goto 0x000BFC
0x000B50:
    push -5s
    if !(< 369s:flag 6s) goto 0x000BA8
0x000B6C:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* I HATE USING THE PHONE I DON'T&  WANT TO DO THIS LMAO ^0.^0 /%%"
    stog.flag[369s] = 6s
    goto 0x000BF8
0x000BA8:
    self.ax = 1s
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* omg ive had my claw over&  the last digit for 5 minutes/"
    stog.msg[1s] = "* omg i'm just gonna do it&* i'm just gonna call!!!!/%%"
    stog.flag[369s] = 7s
0x000BF8:
    goto 0x000C08
0x000BFC:
    self.donotcall = 1s
0x000C08:
    if !(== self.room 143s) goto 0x000C38
0x000C1C:
    push -5s
    push (> 369s:flag 3s)
    goto 0x000C3C
0x000C38:
    push 0s
0x000C3C:
    if !pop goto 0x000C4C
0x000C40:
    self.donotcall = 1s
0x000C4C:
    if !(== self.room 144s) goto 0x000C7C
0x000C60:
    push -5s
    push (> 369s:flag 4s)
    goto 0x000C80
0x000C7C:
    push 0s
0x000C80:
    if !pop goto 0x000C90
0x000C84:
    self.donotcall = 1s
0x000C90:
    if !(== self.room 144s) goto 0x000CC0
0x000CA4:
    push -5s
    push (== 369s:flag 4s)
    goto 0x000CC4
0x000CC0:
    push 0s
0x000CC4:
    if !pop goto 0x000CF4
0x000CC8:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* gonna call them in a&  minute!!! =^0.^0=/%%"
    stog.flag[369s] = 5s
0x000CF4:
    if !(== self.room 143s) goto 0x000D24
0x000D08:
    push -5s
    push (== 369s:flag 3s)
    goto 0x000D28
0x000D24:
    push 0s
0x000D28:
    if !pop goto 0x000D58
0x000D2C:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* for now i gotta call up the&  human and guide them =^0.^0=/%%"
    stog.flag[369s] = 4s
0x000D58:
    if !(== self.room 143s) goto 0x000D88
0x000D6C:
    push -5s
    push (== 369s:flag 2s)
    goto 0x000D8C
0x000D88:
    push 0s
0x000D8C:
    if !pop goto 0x000DBC
0x000D90:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* well i know she's unbeatable&  i'll ask her abt it later ^0.^0 /%%"
    stog.flag[369s] = 3s
0x000DBC:
    if !(== self.room 143s) goto 0x000DEC
0x000DD0:
    push -5s
    push (< 369s:flag 2s)
    goto 0x000DF0
0x000DEC:
    push 0s
0x000DF0:
    if !pop goto 0x000E20
0x000DF4:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* just realized i didn't watch&  undyne fight the human v.v/%%"
    stog.flag[369s] = 2s
0x000E20:
    if !(== self.room 97s) goto 0x000E50
0x000E34:
    push -5s
    push (< 354s:flag 1s)
    goto 0x000E54
0x000E50:
    push 0s
0x000E54:
    if !pop goto 0x000EDC
0x000E58:
    stog.msg[0s] = " "
    stog.flag[354s] = 1s
    call (instance_create[]:int32 (var 1339s) (var 40s) (var 380s))
    global.msc = 632s
    push -5s
    if !(== 368s:flag 1s) goto 0x000EDC
0x000ED0:
    self.donotcall = 1s
0x000EDC:
    if !(== self.room 162s) goto 0x000F04
0x000EF0:
    push (< global.plot 141s)
    goto 0x000F08
0x000F04:
    push 0s
0x000F08:
    if !pop goto 0x000FA8
0x000F0C:
    push -5s
    if !(== 404s:flag 0s) goto 0x000F40
0x000F28:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* (PIC OF ME GIVING A THUMBS UP&  AS I BACKFLIP INTO THE SUN)/%%"
0x000F40:
    push -5s
    if !(== 404s:flag 1s) goto 0x000F74
0x000F5C:
    stog.msg[0s] = "\\YALPHYS updated status.\\W &* OH MY GOD HOW DID THAT EVEN&  END UP WORKING LMAO/%%"
0x000F74:
    global.plot = 141s
    push -5s
    if !(== 368s:flag 1s) goto 0x000FA8
0x000F9C:
    self.donotcall = 1s
0x000FA8:
    if !(== self.donotcall 0s) goto 0x000FD0
0x000FBC:
    call (snd_play[]:int32 (var 103s))
0x000FD0:
    if !(== self.donotcall 0s) goto 0x001044
0x000FE4:
    self.mb = (instance_create[]:int32 (var 1338s) (- 1570.y 10s) 1570.x)
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    global.interact = 1s
0x001044:
    exit
