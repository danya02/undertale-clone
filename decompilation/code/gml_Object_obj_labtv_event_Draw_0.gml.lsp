0x000000:
    if !(== self.myinteract 1s) goto 0x00003C
0x000014:
    if !(== global.interact 0s) goto 0x00003C
0x000028:
    push (== self.con 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    global.interact = 1s
    self.con = 1s
0x00005C:
    if !(== self.con 1s) goto 0x000150
0x000070:
    global.facechoice = 0s
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* (There's a VHS player with a&  few tapes picked out beside&  it...)/"
    stog.msg[1s] = "* (They seem to be labelled&  in a specific order.)/"
    stog.msg[2s] = "* (Will you watch one...?)/%%"
    if !(== self.talkedto 1s) goto 0x000108
0x0000F0:
    stog.msg[0s] = "* (Choose a tape to watch.)/%%"
0x000108:
    self.talkedto = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
    self.buffer = 5s
0x000150:
    if !(== self.con 2s) goto 0x000180
0x000164:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0009C8
0x000188:
    self.buffer = (- self.buffer 1s)
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 80s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 304s) -1s (+ (int32 self.view_current):view_yview 5s) -1s (+ (int32 self.view_current):view_xview 16s))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 77s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 301s) -1s (+ (int32 self.view_current):view_yview 8s) -1s (+ (int32 self.view_current):view_xview 19s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 50s))
    push (var "Tape 1")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 160s))
    push (var "Tape 2")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 50s))
    push (var "Tape 3")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 160s))
    push (var "Tape 4")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 50s))
    push (var "Tape 5")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 160s))
    push -1s
    push (+ (+ 0s:view_yview 20s) (* 20s self.hearty))
    call (draw_sprite[]:int32 -1s (+ (+ 0s:view_xview 30s) (* self.heartx 110s)) (var 0s) (var 49s))
    if !(< self.buffer 0s) goto 0x0009C8
0x000558:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x00059C
0x000570:
    if !(> self.hearty 0s) goto 0x00059C
0x000584:
    self.hearty = (- self.hearty 1s)
0x00059C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0006A0
0x0005B4:
    if !(< self.hearty 2s) goto 0x0006A0
0x0005C8:
    if !(== self.heartx 0s) goto 0x000634
0x0005DC:
    if !(== self.hearty 1s) goto 0x000608
0x0005F0:
    self.hearty = (+ self.hearty 1s)
0x000608:
    if !(== self.hearty 0s) goto 0x000634
0x00061C:
    self.hearty = (+ self.hearty 1s)
0x000634:
    if !(== self.heartx 1s) goto 0x0006A0
0x000648:
    if !(== self.hearty 1s) goto 0x000674
0x00065C:
    self.hearty = (+ self.hearty 1s)
0x000674:
    if !(== self.hearty 0s) goto 0x0006A0
0x000688:
    self.hearty = (+ self.hearty 1s)
0x0006A0:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000750
0x0006B8:
    if !(== self.heartx 0s) goto 0x000750
0x0006CC:
    if !(== self.hearty 0s) goto 0x0006F8
0x0006E0:
    self.heartx = (+ self.heartx 1s)
0x0006F8:
    if !(== self.hearty 1s) goto 0x000724
0x00070C:
    self.heartx = (+ self.heartx 1s)
0x000724:
    if !(== self.hearty 2s) goto 0x000750
0x000738:
    self.heartx = (+ self.heartx 1s)
0x000750:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000800
0x000768:
    if !(== self.heartx 1s) goto 0x000800
0x00077C:
    if !(== self.hearty 0s) goto 0x0007A8
0x000790:
    self.heartx = (- self.heartx 1s)
0x0007A8:
    if !(== self.hearty 1s) goto 0x0007D4
0x0007BC:
    self.heartx = (- self.heartx 1s)
0x0007D4:
    if !(== self.hearty 2s) goto 0x000800
0x0007E8:
    self.heartx = (- self.heartx 1s)
0x000800:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0009C8
0x000818:
    self.con = 100s
    if !(== self.heartx 0s) goto 0x00084C
0x000838:
    push (== self.hearty 0s)
    goto 0x000850
0x00084C:
    push 0s
0x000850:
    if !pop goto 0x000860
0x000854:
    self.con = 100s
0x000860:
    if !(== self.heartx 1s) goto 0x000888
0x000874:
    push (== self.hearty 0s)
    goto 0x00088C
0x000888:
    push 0s
0x00088C:
    if !pop goto 0x0008A8
0x000890:
    self.con = 10s
    self.nextcon = 20s
0x0008A8:
    if !(== self.heartx 0s) goto 0x0008D0
0x0008BC:
    push (== self.hearty 1s)
    goto 0x0008D4
0x0008D0:
    push 0s
0x0008D4:
    if !pop goto 0x0008F0
0x0008D8:
    self.con = 10s
    self.nextcon = 30s
0x0008F0:
    if !(== self.heartx 1s) goto 0x000918
0x000904:
    push (== self.hearty 1s)
    goto 0x00091C
0x000918:
    push 0s
0x00091C:
    if !pop goto 0x000938
0x000920:
    self.con = 10s
    self.nextcon = 40s
0x000938:
    if !(== self.heartx 0s) goto 0x000960
0x00094C:
    push (== self.hearty 2s)
    goto 0x000964
0x000960:
    push 0s
0x000964:
    if !pop goto 0x000980
0x000968:
    self.con = 10s
    self.nextcon = 50s
0x000980:
    if !(== self.heartx 1s) goto 0x0009A8
0x000994:
    push (== self.hearty 2s)
    goto 0x0009AC
0x0009A8:
    push 0s
0x0009AC:
    if !pop goto 0x0009C8
0x0009B0:
    self.con = 10s
    self.nextcon = 60s
0x0009C8:
    if !(== self.con 10s) goto 0x000A44
0x0009DC:
    self.ivol = (caster_get_volume[]:int32 global.currentsong)
    self.vol = self.ivol
    self.alph = 0s
    call (snd_play[]:int32 (var 108s))
    self.con = 11s
    stog.alarm[4s] = 15s
0x000A44:
    if !(== self.con 12s) goto 0x000A78
0x000A58:
    self.con = 13s
    stog.alarm[4s] = 40s
0x000A78:
    if !(== self.con 13s) goto 0x000B2C
0x000A8C:
    if !(> self.vol 0s) goto 0x000AC4
0x000AA0:
    self.vol = (- self.vol 0.04d)
    goto 0x000AD0
0x000AC4:
    self.vol = 0s
0x000AD0:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    self.alph = (+ self.alph 0.04d)
    if !(> self.alph 1s) goto 0x000B2C
0x000B20:
    self.alph = 1s
0x000B2C:
    if !(== self.con 14s) goto 0x000B64
0x000B40:
    call (caster_pause[]:int32 global.currentsong)
    self.con = self.nextcon
0x000B64:
    if !(== self.con 20s) goto 0x000BD4
0x000B78:
    self.hh = (caster_load[]:int32 (var "music/house2.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.7d) self.hh)
    self.con = 21s
0x000BD4:
    if !(== self.con 21s) goto 0x000F14
0x000BE8:
    global.msc = 0s
    global.typer = 4s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* Psssst^1.&* Gorey^1, wake up. \\Ta/"
    stog.msg[1s] = "* Mmm^1?&* What is it^1, dear?/"
    stog.msg[2s] = "* ... err^1, and why do you&  have that video camera? \\TT/"
    stog.msg[3s] = "* Shush^1!&* I want to get your&  reaction./"
    stog.msg[4s] = "* Gorey^1, dearest^1.&* What is my favorite&  vegetable?\\Ta/"
    stog.msg[5s] = "* Hmmm..^1.&* Carrots^1, right?\\TT/"
    stog.msg[6s] = "* No no no^1!&* My FAVORITE vegetable is.../"
    stog.msg[7s] = "* Eda-MOM-e./"
    stog.msg[8s] = "* ... get it???\\Ta/"
    stog.msg[9s] = "* .../"
    stog.msg[10s] = "* Go back to bed^1, dear.\\TT/"
    stog.msg[11s] = "* No no!^1!&* Not yet^1!&* Hee hee hee./"
    stog.msg[12s] = "* Now^1, If I were a dog^1,&  what breed of dog would&  I be?\\Ta/"
    stog.msg[13s] = "* Hmmm..^1. I don't know^1, honey^1.&* What kind of dog would&  you be?\\TT/"
    stog.msg[14s] = "* I would be.../"
    stog.msg[15s] = "* A MOMERANIAN.\\Ta/"
    stog.msg[16s] = "* Hohoho!/"
    stog.msg[17s] = "* You sure are excited to&  have this child./"
    stog.msg[18s] = "* You know^1, if you keep&  making jokes like&  this.../"
    stog.msg[19s] = "* One day^1, you could be.../"
    stog.msg[20s] = "* ... a famous MOMedian.\\TT/"
    stog.msg[21s] = "* .../"
    stog.msg[22s] = "* Well^1, I am going to bed.\\Ta/"
    stog.msg[23s] = "* Hey^1!&* Come on^1, Tori^1!&* That one was funny!\\TT/"
    stog.msg[24s] = "* Hahaha^1, I know^1.&* I am just teasing you./"
    stog.msg[25s] = "* Goodnight^1, dear.\\Ta/"
    stog.msg[26s] = "* Goodnight, honey.\\TT/"
    stog.msg[27s] = "* .../"
    stog.msg[28s] = "* Oh dear^1, perhaps it is too&  dark in here for the&  video to come out.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.hhvol = 0.7d
    self.con = 22s
0x000F14:
    if !(== self.con 22s) goto 0x000F44
0x000F28:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F48
0x000F44:
    push 0s
0x000F48:
    if !pop goto 0x000FBC
0x000F4C:
    self.hhvol = (- self.hhvol 0.04d)
    call (caster_set_volume[]:int32 self.hhvol self.hh)
    if !(<= self.hhvol 0s) goto 0x000FBC
0x000F9C:
    call (caster_free[]:int32 self.hh)
    self.con = 90s
0x000FBC:
    if !(== self.con 30s) goto 0x00102C
0x000FD0:
    self.hh = (caster_load[]:int32 (var "music/birdnoise.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.9d) self.hh)
    self.con = 31s
0x00102C:
    if !(== self.con 31s) goto 0x00115C
0x001040:
    global.msc = 0s
    global.typer = 76s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = (+ (+ "* Okay^1, " global.charname) "^1, are you ready?/")
    stog.msg[1s] = "* Do your creepy face!/"
    stog.msg[2s] = "* AHHHHH!^1!&* Hee hee hee!/"
    stog.msg[3s] = "* Oh^1!&* Wait^1!&* I had the lens cap on.../"
    stog.msg[4s] = "* What!^1?&* You're not gonna do it&  again...?/"
    stog.msg[5s] = "* Come on^1, quit tricking me^1!&* Haha!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.hhvol = 0.7d
    self.con = 32s
0x00115C:
    if !(== self.con 32s) goto 0x00118C
0x001170:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001190
0x00118C:
    push 0s
0x001190:
    if !pop goto 0x001204
0x001194:
    self.hhvol = (- self.hhvol 0.04d)
    call (caster_set_volume[]:int32 self.hhvol self.hh)
    if !(<= self.hhvol 0s) goto 0x001204
0x0011E4:
    call (caster_free[]:int32 self.hh)
    self.con = 90s
0x001204:
    if !(== self.con 40s) goto 0x001274
0x001218:
    self.hh = (caster_load[]:int32 (var "music/birdnoise.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.9d) self.hh)
    self.con = 41s
0x001274:
    if !(== self.con 41s) goto 0x001434
0x001288:
    global.msc = 0s
    global.typer = 76s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = (+ (+ "* Howdy^1, " global.charname) "^1!&* Smile for the camera!/")
    stog.msg[1s] = "* Ha^1, this time I got YOU^1!&* I left the cap on..^1.&* ON PURPOSE!/"
    stog.msg[2s] = "* Now you're smiling for&  noooo reason^1!&* Hee hee hee!/"
    stog.msg[3s] = "* What^1?&* Oh^1, yeah^1, I remember./"
    stog.msg[4s] = "* When we tried to make&  butterscotch pie for Dad^1,&  right?/"
    stog.msg[5s] = "* The recipe asked for cups&  of butter.../"
    stog.msg[6s] = "* But we accidentally put&  in buttercups instead./"
    stog.msg[7s] = "* Yeah^1!&* Those flowers got him&  really sick./"
    stog.msg[8s] = "* I felt so bad^1.&* We made Mom really upset./"
    stog.msg[9s] = "* I should have laughed it&  off^1, like you did.../"
    stog.msg[10s] = "* Um^1, anyway^1, where are you&  going with this?/"
    stog.msg[11s] = "* Huh^1?&* Turn off the camera...^1?&* OK./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.hhvol = 0.7d
    self.con = 42s
0x001434:
    if !(== self.con 42s) goto 0x001464
0x001448:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001468
0x001464:
    push 0s
0x001468:
    if !pop goto 0x0014DC
0x00146C:
    self.hhvol = (- self.hhvol 0.04d)
    call (caster_set_volume[]:int32 self.hhvol self.hh)
    if !(<= self.hhvol 0s) goto 0x0014DC
0x0014BC:
    call (caster_free[]:int32 self.hh)
    self.con = 90s
0x0014DC:
    if !(== self.con 50s) goto 0x001544
0x0014F0:
    self.hh = (caster_load[]:int32 (var "music/birdnoise.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) self.hh)
    self.con = 51s
0x001544:
    if !(== self.con 51s) goto 0x0016A4
0x001558:
    global.msc = 0s
    global.typer = 76s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = (+ (+ "* I..^1. I don't like this idea^1,&  " global.charname) "./")
    stog.msg[1s] = "* Wh.^1. what^1?&* N-no, I'm not.../"
    stog.msg[2s] = "* ... big kids don't cry./"
    stog.msg[3s] = "* Yeah^1, you're right./"
    stog.msg[4s] = (+ (+ "* No^1!&* I'd never doubt you^1, " global.charname) "..^1.&* Never!/")
    stog.msg[5s] = "* Y..^1. yeah^1!&* We'll be strong^1!&* We'll free everyone./"
    stog.msg[6s] = "* I'll go get the flowers./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.hhvol = 0.7d
    self.con = 52s
0x0016A4:
    if !(== self.con 52s) goto 0x0016D4
0x0016B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016D8
0x0016D4:
    push 0s
0x0016D8:
    if !pop goto 0x00174C
0x0016DC:
    self.hhvol = (- self.hhvol 0.04d)
    call (caster_set_volume[]:int32 self.hhvol self.hh)
    if !(<= self.hhvol 0s) goto 0x00174C
0x00172C:
    call (caster_free[]:int32 self.hh)
    self.con = 90s
0x00174C:
    if !(== self.con 60s) goto 0x0017BC
0x001760:
    self.hh = (caster_load[]:int32 (var "music/oogloop.ogg"))
    call (caster_loop[]:int32 (var 0.6d) (var 0.7d) self.hh)
    self.con = 61s
0x0017BC:
    if !(== self.con 61s) goto 0x00197C
0x0017D0:
    global.msc = 0s
    global.typer = 4s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = (+ (+ "* " global.charname) "..^1.&* Can you hear me^1?&* We want you to wake up...\\Ta/")
    stog.msg[1s] = (+ (+ "* " global.charname) "^1!&* You have to stay determined!/")
    stog.msg[2s] = "* You can't give up..^1.&* You are the future of humans&  and monsters...\\TR/"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = (+ (+ "* Psst... " global.charname) "..^1.&* Please..^1. wake up.../")
    stog.msg[5s] = "* I don't like this plan&  anymore./"
    stog.msg[6s] = "* I..^1. I.../"
    stog.msg[7s] = "* ..^1. no^1, I said..^1.&* I said I'd never doubt you./"
    stog.msg[8s] = "* Six^1, right^1?&* We just have to get six.../"
    stog.msg[9s] = "* And we'll do it together^1,&  right?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.hhvol = 0.7d
    self.con = 62s
0x00197C:
    if !(== self.con 62s) goto 0x0019AC
0x001990:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0019B0
0x0019AC:
    push 0s
0x0019B0:
    if !pop goto 0x001A24
0x0019B4:
    self.hhvol = (- self.hhvol 0.04d)
    call (caster_set_volume[]:int32 self.hhvol self.hh)
    if !(<= self.hhvol 0s) goto 0x001A24
0x001A04:
    call (caster_free[]:int32 self.hh)
    self.con = 90s
0x001A24:
    if !(== self.con 90s) goto 0x001B00
0x001A38:
    call (caster_resume[]:int32 global.currentsong)
    if !(< self.vol self.ivol) goto 0x001A88
0x001A64:
    self.vol = (+ self.vol 0.05d)
    goto 0x001A98
0x001A88:
    self.vol = self.ivol
0x001A98:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    self.alph = (- self.alph 0.05d)
    if !(< self.alph 0s) goto 0x001B00
0x001AE8:
    self.alph = 0s
    self.con = 100s
0x001B00:
    if !(== self.con 100s) goto 0x001B44
0x001B14:
    self.con = 0s
    self.myinteract = 0s
    global.interact = 0s
    global.facing = 0s
0x001B44:
    if !(> self.alph 0s) goto 0x001BC8
0x001B58:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.alph)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x001BC8:
    exit
