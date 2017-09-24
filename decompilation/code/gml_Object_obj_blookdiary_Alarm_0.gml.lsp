0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(> self.x 60s) goto 0x0000F8
0x000068:
    stog.msg[0s] = "* Dear Diary^1:&* Shyren's sister \"fell down\"&  recently./"
    stog.msg[1s] = "* It's sad^1.&* Without her sister to&  speak for her.../"
    stog.msg[2s] = "* She's become more&  reclusive than ever./"
    stog.msg[3s] = "* So I reached out to her^1,&  and told her.../"
    stog.msg[4s] = "* That she^1, Blooky^1, and I&  should all perform together&  sometime./"
    stog.msg[5s] = "* She seemed to like&  that idea./%%"
0x0000F8:
    if !(> self.x 95s) goto 0x00013C
0x00010C:
    stog.msg[0s] = "* Dearer Diary^1:&* I like to buy a new diary&  for every entry I make./"
    stog.msg[1s] = "* I love to collect diaries./%%"
0x00013C:
    if !(> self.x 120s) goto 0x0001F8
0x000150:
    stog.msg[0s] = "* Dearest Diary^1:&* Our cousin left the farm&  to become a training dummy./"
    stog.msg[1s] = "* That leaves just Blooky&  and I./"
    stog.msg[2s] = "* Blooky asked me if I was&  going to try to become&  corporeal^1, too./"
    stog.msg[3s] = "* They sounded so..^1.&* Resigned.../"
    stog.msg[4s] = "* Come on^1, Blooky^1.&* You know I'd never leave&  you behind./"
    stog.msg[5s] = "* And besides.../"
    stog.msg[6s] = "* I'd never find the kind&  of body I'm looking for^1,&  anyway./%%"
0x0001F8:
    if !(> self.x 145s) goto 0x0002B4
0x00020C:
    stog.msg[0s] = "* My Darling Diary^1:&* I met someone..^1.&* Interesting today./"
    stog.msg[1s] = "* Last week I posted that&  advertisement for my&  Human Fanclub./"
    stog.msg[2s] = "* Today was our first meeting./"
    stog.msg[3s] = "* Only one other person came./"
    stog.msg[4s] = "* Honestly^1, she's a dork^1.&* And she's obsessed with&  these awful cartoons./"
    stog.msg[5s] = "* But she's kind of funny^1,&  too..../"
    stog.msg[6s] = "* I want to see her again./%%"
0x0002B4:
    if !(> self.x 170s) goto 0x0002F8
0x0002C8:
    stog.msg[0s] = "* Diary... My dear:&* My diary collection is&  going fabulously./"
    stog.msg[1s] = "* I have like five now./%%"
0x0002F8:
    if !(> self.x 200s) goto 0x00039C
0x00030C:
    stog.msg[0s] = "* Dear Diary^1:&* She surpised me with&  something today./"
    stog.msg[1s] = "* Sketches of a body that&  she wants to create for&  me.../"
    stog.msg[2s] = "* A form beyond my wildest&  fantasies./"
    stog.msg[3s] = "* In a form like that^1, I&  could finally feel&  like... \"myself.\"/"
    stog.msg[4s] = "* After all^1, there's no&  way I can be a star&  the way I am now./"
    stog.msg[5s] = "* Sorry^1, Blooky^1.&* My dreams can't wait&  for anyone.../%%"
0x00039C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0003C4:
    exit
