0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 36s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (A box of kids' shoes in&  a disparity of sizes.)/%%"
0x000080:
    if !(== self.room 224s) goto 0x0000D8
0x000094:
    stog.msg[0s] = "* (It's a drawing of a&  golden flower.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0000D8
0x0000C0:
    stog.msg[0s] = "\\R* My drawing./%%"
0x0000D8:
    if !(== self.room 35s) goto 0x000150
0x0000EC:
    stog.msg[0s] = "* (Definitely bigger than&  a twin-sized bed.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000150
0x000120:
    stog.msg[0s] = "* (Earlier^1, you identified&  this as bigger than a&  twin-sized bed.)/"
    stog.msg[1s] = "* (But now^1, you realize&  it's actually one size&  bigger than a double.)/%%"
0x000150:
    if !(== self.room 221s) goto 0x00017C
0x000164:
    stog.msg[0s] = "* The coals are still warm./%%"
0x00017C:
    if !(== self.room 223s) goto 0x0001A8
0x000190:
    stog.msg[0s] = "* (Macaroni art of a flower.^1)&* ('For King Dad!')/%%"
0x0001A8:
    if !(== self.room 34s) goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "* Inside the drawer are&  flower seeds and some&  broken crayons./%%"
0x0001D4:
    if !(== self.room 37s) goto 0x000200
0x0001E8:
    stog.msg[0s] = "* There is some white fur&  stuck in the drain./%%"
0x000200:
    if !(== self.room 225s) goto 0x00022C
0x000214:
    stog.msg[0s] = "* (There is some white fur&  stuck in the drain.)/%%"
0x00022C:
    if !(== self.room 74s) goto 0x0002B8
0x000240:
    stog.msg[0s] = "* Because they are made of&  magic^1, monsters' bodies are&  attuned to their SOUL./"
    stog.msg[1s] = "* If a monster doesn't want&  to fight^1, its defenses will&  weaken./"
    stog.msg[2s] = "* And the crueller the intentions&  of our enemies^1, the more&  their attacks will hurt us./"
    stog.msg[3s] = "* Therefore^1, if a being with&  a powerful SOUL struck with&  the desire to kill.../"
    stog.msg[4s] = "* Um^1, let's end the chapter&  here.../%%"
0x0002B8:
    if !(== self.room 45s) goto 0x0002E4
0x0002CC:
    stog.msg[0s] = "* ...!^1?&* There's a camera behind the&  sentry station./%%"
0x0002E4:
    if !(== self.room 48s) goto 0x000310
0x0002F8:
    stog.msg[0s] = "* ...!^1?&* There is a camera behind the..^1.&  \"sentry station.\"/%%"
0x000310:
    if !(== self.room 53s) goto 0x00033C
0x000324:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden inside&  this lump of snow./%%"
0x00033C:
    if !(== self.room 57s) goto 0x000368
0x000350:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden inside&  this tree./%%"
0x000368:
    if !(== self.room 59s) goto 0x000394
0x00037C:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden inside&  this tree./%%"
0x000394:
    if !(== self.room 61s) goto 0x0003C0
0x0003A8:
    stog.msg[0s] = "* ...!^1?&* There's a camera behind the&  sentry station./%%"
0x0003C0:
    if !(== self.room 67s) goto 0x0003EC
0x0003D4:
    stog.msg[0s] = "* ...!^1?&* There's a camera underneath&  the bridge./%%"
0x0003EC:
    if !(== self.room 68s) goto 0x000418
0x000400:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden in&  the trees here./%%"
0x000418:
    if !(== self.room 87s) goto 0x000444
0x00042C:
    stog.msg[0s] = "* When four Bridge Seeds align&  in the water^1, they will&  sprout./%%"
0x000444:
    if !(== self.room 88s) goto 0x000470
0x000458:
    stog.msg[0s] = "* If an error is made, the Bell&  Blossom can call Bridge Seeds&  back to where they started./%%"
0x000470:
    if !(== self.room 90s) goto 0x00049C
0x000484:
    stog.msg[0s] = "* WISHING ROOM/%%"
0x00049C:
    if !(== self.room 91s) goto 0x0004E0
0x0004B0:
    stog.msg[0s] = "* But humans have one weakness.&* Ironically, it is the strength&  of their SOUL./"
    stog.msg[1s] = "* Its power allows it to persist&  outside the human body, even&  after death./%%"
0x0004E0:
    if !(== self.room 101s) goto 0x000584
0x0004F4:
    stog.msg[0s] = "* There is only one exception./"
    stog.msg[1s] = "* The SOUL of a special species&  of monster called a&  \"Boss Monster.\"/"
    stog.msg[2s] = "* A Boss Monster's SOUL is&  strong enough to persist&  after death.../"
    stog.msg[3s] = "* If only for a few moments./"
    stog.msg[4s] = "* A human could absorb this&  SOUL.&* But this has never happened./"
    stog.msg[5s] = "* And now it never will./%%"
0x000584:
    if !(== self.room 126s) goto 0x0005E0
0x000598:
    stog.msg[0s] = "* But this cursed place has&  no entrances or exits./"
    stog.msg[1s] = "* There is no way a human&  could come here./"
    stog.msg[2s] = "* We will remain trapped&  down here forever./%%"
0x0005E0:
    if !(== self.room 76s) goto 0x000674
0x0005F4:
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x00065C
0x00060C:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "A CLASSIC IMAGE./"
    stog.msg[2s] = "IT ALWAYS REMINDS&ME OF WHAT'S&IMPORTANT IN LIFE./%%"
    goto 0x000674
0x00065C:
    stog.msg[0s] = "* (It's a painting of a&  cartoon bone.)/%%"
0x000674:
    if !(== self.room 117s) goto 0x0006A0
0x000688:
    stog.msg[0s] = "* (Seems like a nice tree.)/%%"
0x0006A0:
    if !(== self.room 77s) goto 0x0006C0
0x0006B4:
    global.msc = 561s
0x0006C0:
    if !(== self.room 123s) goto 0x0006EC
0x0006D4:
    stog.msg[0s] = "* (Whenever the girl moves her&  net^1, this bug scurries straight&  into it.)/%%"
0x0006EC:
    if !(== self.room 141s) goto 0x000778
0x000700:
    stog.msg[0s] = "* (Seems like the notes to&  something^1, but it's all&  written in chicken scratch.)/"
    stog.msg[1s] = "* (It seems like a walkthrough&  to a game^1, or...?)/%%"
    if !(< global.plot 126s) goto 0x000758
0x000744:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x00075C
0x000758:
    push 0s
0x00075C:
    if !pop goto 0x000778
0x000760:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000778:
    if !(== self.room 142s) goto 0x0007BC
0x00078C:
    stog.msg[0s] = "* (VHSes and DVDs of various&  cartoons.)/"
    stog.msg[1s] = "* (They are all labelled \"Human&  History.\")/%%"
0x0007BC:
    if !(== self.room 154s) goto 0x0008AC
0x0007D0:
    stog.msg[0s] = "* (It's a specifically-regular&  -sized sink.)/%%"
    if !(< global.plot 134s) goto 0x000814
0x0007FC:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000814:
    if !(bool (instance_exists[]:int32 (var 1173s))) goto 0x0008AC
0x00082C:
    global.typer = 27s
    stog.msg[0s] = "* THIS ISN'T A SHOW ABOUT&  WASHING YOUR HANDS, DARLING./"
    stog.msg[1s] = "* THAT'S ON WEDNESDAYS!/%%"
    if !(== global.plot 134s) goto 0x0008AC
0x00087C:
    stog.msg[0s] = "* THIS ISN'T A SHOW ABOUT&  WASHING YOUR HANDS, DARLING./"
    stog.msg[1s] = "* THAT'S ON WEDNESDAYS!/%%"
0x0008AC:
    if !(== self.room 118s) goto 0x000994
0x0008C0:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "* One time^1, Alphys's..^1.&* Uh^1, friend??^1?&* Came over here./"
    stog.msg[1s] = "\\E4* All he did was&  lie seductively&  on the piano.../"
    stog.msg[2s] = "\\E5* And fed himself&  grapes./"
    stog.msg[3s] = "\\E4* I don't really&  like that guy./"
    stog.msg[4s] = "\\E3* But I admire&  his lifestyle./%%"
    if !(> self.talkedto 0s) goto 0x000994
0x00097C:
    stog.msg[0s] = "* What^1?&* I'm not gonna&  serenade you./%%"
0x000994:
    if !(== self.room 245s) goto 0x000A6C
0x0009A8:
    stog.msg[0s] = "* ENTRY NUMBER 3/"
    stog.msg[1s] = "* But extracting a SOUL from&  a living monster would&  require incredible power.../"
    stog.msg[2s] = "* Besides being impractical^1,&  doing so would instantly&  destroy the SOUL's host./"
    stog.msg[3s] = "* And^1, unlike the persistent&  SOULs of humans.../"
    stog.msg[4s] = "* The SOULs of most monsters&  disappear immediately upon&  death./"
    stog.msg[5s] = "* If only I could make a&  monster's SOUL last.../%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x000A6C
0x000A54:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x000A6C:
    if !(== self.room 257s) goto 0x000A98
0x000A80:
    stog.msg[0s] = "* (There are a bunch of VHSes.^1)&* (Seems like it's mostly&  cartoons of some kind.)/%%"
0x000A98:
    if !(== self.room 258s) goto 0x000B5C
0x000AAC:
    stog.msg[0s] = "* ENTRY NUMBER 21/"
    stog.msg[1s] = "* i spend all my time at&  the garbage dump now/"
    stog.msg[2s] = "* it's my element/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x000B28
0x000B10:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x000B28:
    push -5s
    if !(== 490s:flag 0s) goto 0x000B5C
0x000B44:
    stog.msg[0s] = "* (It's too dark to see near&  the walls.)/%%"
0x000B5C:
    if !(== self.room 246s) goto 0x000B7C
0x000B70:
    global.msc = 829s
0x000B7C:
    if !(== self.room 78s) goto 0x000BA8
0x000B90:
    stog.msg[0s] = "* (It's a thank-you letter.^1)&* (It's addressed to Santa.)/%%"
0x000BA8:
    if !(== self.room 80s) goto 0x000C04
0x000BBC:
    stog.msg[0s] = "* (Blueprints.^1)&* (You can't read the symbols&  they're written in...)/"
    stog.msg[1s] = "* (... or maybe it's just the&  handwriting.)/"
    stog.msg[2s] = "* (Looks like they relate to&  some kind of strange machine.)/%%"
0x000C04:
    if !(== self.room 120s) goto 0x000C94
0x000C18:
    if !(bool (instance_exists[]:int32 (var 1132s))) goto 0x000C64
0x000C30:
    stog.msg[0s] = "* oh..^1. that's my tv.../"
    stog.msg[1s] = "* there's a show i like to&  watch on it..^1.&* sometimes.../%%"
    goto 0x000C94
0x000C64:
    stog.msg[0s] = "* (It's a spooky old TV.^1)&* (Most of the buttons are&  worn away...)/"
    stog.msg[1s] = "* (Though the channel changing&  buttons look good as new.)/%%"
0x000C94:
    if !(== self.room 266s) goto 0x000CC0
0x000CA8:
    stog.msg[0s] = "* (Rope.^1)&* (Looks like this dog does&  all its own stunts.)/%%"
0x000CC0:
    if !(== self.room 184s) goto 0x000CEC
0x000CD4:
    stog.msg[0s] = "* (It's some kind of TV show&  featuring Mettaton.)/%%"
0x000CEC:
    if !(== self.room 128s) goto 0x000D18
0x000D00:
    stog.msg[0s] = "* (Statue of tem..^1. very famus^1)&* (VERY!!!!!!!!!)/%%"
0x000D18:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000D58:
    exit
