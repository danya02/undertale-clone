0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 224s) goto 0x0000AC
0x000068:
    stog.msg[0s] = "* (There are a lot of striped&  shirts in here.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0000AC
0x000094:
    stog.msg[0s] = "* Our clothes./%%"
0x0000AC:
    if !(== self.room 223s) goto 0x00017C
0x0000C0:
    stog.msg[0s] = "* (It's ASGORE's journal.)&* (All the current page says&  is 'Nice day today!')/"
    stog.msg[1s] = "* (The ink is still almost wet.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000124
0x00010C:
    stog.msg[1s] = "* (The ink's dry now.)/%%"
0x000124:
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000150
0x000138:
    stog.msg[0s] = "* The entries are always the&  same./%%"
0x000150:
    if !(< self.x 208s) goto 0x00017C
0x000164:
    stog.msg[0s] = "* (It's just a chair.)/%%"
0x00017C:
    if !(== self.room 59s) goto 0x00019C
0x000190:
    global.msc = 696s
0x00019C:
    if !(== self.room 141s) goto 0x00024C
0x0001B0:
    stog.msg[0s] = "* (It's a teacup shaped like&  a yellow lizard.^1)&* (It's full of soda.)/%%"
    if !(< global.plot 126s) goto 0x0001F0
0x0001DC:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x000210
0x0001F8:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000210:
    if !(>= self.y 125s) goto 0x000238
0x000224:
    push (> self.x 800s)
    goto 0x00023C
0x000238:
    push 0s
0x00023C:
    if !pop goto 0x00024C
0x000240:
    global.msc = 827s
0x00024C:
    if !(== self.room 142s) goto 0x00036C
0x000260:
    if !(< self.x 130s) goto 0x0002A4
0x000274:
    stog.msg[0s] = "* (It's a promo poster for&  Mettaton's TV premiere.)/"
    stog.msg[1s] = "* (On the flap it says \"Thank&  you for making my dreams&  come true.\")/%%"
0x0002A4:
    if !(< self.x 204s) goto 0x0002CC
0x0002B8:
    push (> self.x 144s)
    goto 0x0002D0
0x0002CC:
    push 0s
0x0002D0:
    if !pop goto 0x000304
0x0002D4:
    stog.msg[0s] = "* (An incredible invention.)/"
    stog.msg[1s] = "* (When not in use^1, this bed&  folds into an extremely-&  easy-to-draw box.)/%%"
0x000304:
    if !(< self.x 575s) goto 0x00032C
0x000318:
    push (> self.x 474s)
    goto 0x000330
0x00032C:
    push 0s
0x000330:
    if !pop goto 0x00034C
0x000334:
    stog.msg[0s] = "* (Pink goop drips from this&  strange machine.)/%%"
0x00034C:
    if !(> self.x 575s) goto 0x00036C
0x000360:
    global.msc = 647s
0x00036C:
    if !(== self.room 102s) goto 0x0003B0
0x000380:
    stog.msg[0s] = "* A haunting song echoes&  down the corridor...&* Won't you play along?/"
    stog.msg[1s] = "* Only the first 8 are fine./%%"
0x0003B0:
    if !(== self.room 91s) goto 0x0003F4
0x0003C4:
    stog.msg[0s] = "* (It's an illustration of a&  strange creature...)/"
    stog.msg[1s] = "* (There's something very&  unsettling about this drawing.)/%%"
0x0003F4:
    if !(== self.room 74s) goto 0x000450
0x000408:
    stog.msg[0s] = "* Love^1, hope^1, compassion..^1.&* This is what people say&  monster SOULs are made of./"
    stog.msg[1s] = "* But the absolute nature of&  \"SOUL\" is unknown./"
    stog.msg[2s] = "* After all^1, humans have proven&  their SOULs don't need these&  things to exist./%%"
0x000450:
    if !(== self.room 118s) goto 0x000494
0x000464:
    stog.msg[0s] = "* (There's a silverware drawer.^1)&* (It has forks^1, spoons^1,&  knives...)/"
    stog.msg[1s] = "* (... tiny swords^1, axes^1,&  spears^1, nunchucks...)/%%"
0x000494:
    if !(== self.room 118s) goto 0x0004BC
0x0004A8:
    push (< self.x 80s)
    goto 0x0004C0
0x0004BC:
    push 0s
0x0004C0:
    if !pop goto 0x000518
0x0004C4:
    global.facechoice = 5s
    global.faceemotion = 4s
    global.typer = 37s
    stog.msg[0s] = "* I can't believe he&  leapt through the&  window like that./"
    stog.msg[1s] = "\\E6* Normally he NAILS&  the landing./%%"
0x000518:
    if !(== self.room 138s) goto 0x000604
0x00052C:
    stog.msg[0s] = "* (Small puddle forming.)/%%"
    push -5s
    if !(> 353s:flag 7s) goto 0x000578
0x000560:
    stog.msg[0s] = "* (Medium puddle forming.)/%%"
0x000578:
    push -5s
    if !(> 353s:flag 15s) goto 0x0005AC
0x000594:
    stog.msg[0s] = "* (Large puddle forming.)/%%"
0x0005AC:
    push -5s
    if !(> 353s:flag 15s) goto 0x0005E4
0x0005C8:
    push -5s
    push (== 7s:flag 1s)
    goto 0x0005E8
0x0005E4:
    push 0s
0x0005E8:
    if !pop goto 0x000604
0x0005EC:
    stog.msg[0s] = "* (A small tree is growing in&  the puddle.)/%%"
0x000604:
    if !(== self.room 141s) goto 0x000654
0x000618:
    if !(> self.x 828s) goto 0x000654
0x00062C:
    if !(< self.x 868s) goto 0x000654
0x000640:
    push (< self.y 90s)
    goto 0x000658
0x000654:
    push 0s
0x000658:
    if !pop goto 0x000674
0x00065C:
    stog.msg[0s] = "* (It's a bathroom sign.)/%%"
0x000674:
    if !(== self.room 78s) goto 0x000734
0x000688:
    if !(< self.x 128s) goto 0x00071C
0x00069C:
    push -5s
    if !(< 497s:flag 3s) goto 0x000700
0x0006B8:
    stog.msg[0s] = "* (Inside the drawer is a silver&  key.)/"
    stog.msg[1s] = "* (You put it on your keychain.)/%%"
    stog.flag[497s] = 3s
    goto 0x000718
0x000700:
    stog.msg[0s] = "* (Clothes and trombones are&  shoved in haphazardly.)/%%"
0x000718:
    goto 0x000734
0x00071C:
    stog.msg[0s] = "* (It appears to be a self-&  sustaining tornado made of&  trash.)/%%"
0x000734:
    if !(== self.room 154s) goto 0x000760
0x000748:
    stog.msg[0s] = "* (It's glued to the table.)/%%"
0x000760:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000788:
    exit
