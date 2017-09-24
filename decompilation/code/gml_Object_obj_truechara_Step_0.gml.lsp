0x000000:
    if !(== self.con 1s) goto 0x0000A4
0x000014:
    global.msc = 0s
    global.typer = 104s
    stog.msg[0s] = "Greetings./"
    stog.msg[1s] = (+ (+ "I^2 am " global.charname) "./%%")
    call (instance_create[]:int32 (var 782s) (var 320s) (var 220s))
    self.con = 2s
0x0000A4:
    if !(== self.con 2s) goto 0x0000D4
0x0000B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x000120
0x0000DC:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.ch_sfx1)
    self.con = 3s
    stog.alarm[4s] = 60s
0x000120:
    if !(== self.con 4s) goto 0x000678
0x000134:
    global.msc = 0s
    global.typer = 104s
    stog.msg[0s] = "Thank you./"
    stog.msg[1s] = "Your power awakened&me from death./"
    stog.msg[2s] = "My \"human soul.\"/"
    stog.msg[3s] = "My \"determination.\"/"
    stog.msg[4s] = "They were not mine^1,&but YOURS./"
    stog.msg[5s] = "At first^1, I&was so confused./"
    stog.msg[6s] = "Our plan had failed^1,&hadn't it?/"
    stog.msg[7s] = "Why was I brought&back to life?/"
    stog.msg[8s] = ".../"
    stog.msg[9s] = "You./"
    stog.msg[10s] = "With your guidance./"
    stog.msg[11s] = "I realized the purpose&of my reincarnation./"
    stog.msg[12s] = "Power./"
    stog.msg[13s] = "Together^1, we eradicated&the enemy and became&strong./"
    stog.msg[14s] = "HP. ATK. DEF.&GOLD. EXP. LV./"
    stog.msg[15s] = "Every time a number&increases^1, that&feeling.../"
    stog.msg[16s] = "That's me./"
    stog.msg[17s] = (+ (+ "\"" global.charname) ".\"/")
    stog.msg[18s] = "Now./"
    stog.msg[19s] = "Now, we have reached&the absolute./"
    stog.msg[20s] = "There is nothing&left for us here./"
    stog.msg[21s] = "Let us erase this&pointless world^1, and&move on to the next./%%"
    if !(bool (file_exists[]:int32 (var "system_information_963"))) goto 0x000648
0x000390:
    stog.msg[0s] = (+ (+ "\"" global.charname) ".\"/")
    stog.msg[1s] = "The demon that comes&when people call&its name./"
    stog.msg[2s] = "It doesn't matter when./"
    stog.msg[3s] = "It doesn't matter where./"
    stog.msg[4s] = "Time after time,&I will appear./"
    stog.msg[5s] = "And, with your help./"
    stog.msg[6s] = "We will eradicate the&enemy and become&strong./"
    stog.msg[7s] = "HP. ATK. DEF.&GOLD. EXP. LV./"
    stog.msg[8s] = "Every time a number&increases^1, that&feeling.../"
    stog.msg[9s] = "That's me./"
    stog.msg[10s] = (+ (+ "\"" global.charname) ".\"/")
    stog.msg[11s] = ".../"
    stog.msg[12s] = "But./"
    stog.msg[13s] = "You and I are not&the same^1, are we?/"
    stog.msg[14s] = "This SOUL resonates&with a strange&feeling./"
    stog.msg[15s] = "There is a reason&you continue to&recreate this world./"
    stog.msg[16s] = "There is a reason&you continue to&destroy it./"
    stog.msg[17s] = "You./"
    stog.msg[18s] = "You are wracked with&a perverted&sentimentality./"
    stog.msg[19s] = "Hmm./"
    stog.msg[20s] = "I cannot understand&these feelings&any more./"
    stog.msg[21s] = "Despite this./"
    stog.msg[22s] = "I feel obligated to&suggest./"
    stog.msg[23s] = "Should you choose to&create this world&once more./"
    stog.msg[24s] = "Another path would&be better suited./"
    stog.msg[25s] = "Now, partner./"
    stog.msg[26s] = "Let us send this&world back into the&abyss./%%"
0x000648:
    call (instance_create[]:int32 (var 782s) (var 320s) (var 150s))
    self.con = 5s
0x000678:
    if !(== self.con 5s) goto 0x0006A8
0x00068C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006AC
0x0006A8:
    push 0s
0x0006AC:
    if !pop goto 0x0006D0
0x0006B0:
    self.con = 6s
    stog.alarm[4s] = 30s
0x0006D0:
    if !(== self.con 7s) goto 0x0006FC
0x0006E4:
    self.con = 8s
    self.choicer = 1s
0x0006FC:
    if !(== self.con 20s) goto 0x000788
0x000710:
    global.msc = 0s
    global.typer = 104s
    stog.msg[0s] = "Right^1. You are a&great partner./"
    stog.msg[1s] = "We'll be together&forever^1, won't we?/%%"
    self.con = 22s
    call (instance_create[]:int32 (var 782s) (var 320s) (var 150s))
0x000788:
    if !(== self.con 22s) goto 0x0007B4
0x00079C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0007B8
0x0007B4:
    push 0s
0x0007B8:
    if !pop goto 0x0007DC
0x0007BC:
    if !(== 782.stringno 1s) goto 0x0007DC
0x0007D0:
    self.sprite_index = 654s
0x0007DC:
    if !(== self.con 22s) goto 0x00080C
0x0007F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000810
0x00080C:
    push 0s
0x000810:
    if !pop goto 0x000820
0x000814:
    self.con = 60s
0x000820:
    if !(== self.con 30s) goto 0x000988
0x000834:
    global.msc = 0s
    global.typer = 104s
    stog.msg[0s] = "No...?/"
    stog.msg[1s] = "Hmm.../"
    stog.msg[2s] = "How curious./"
    stog.msg[3s] = "You must have&misunderstood./"
    stog.msg[4s] = "SINCE WHEN WERE YOU&THE ONE IN CONTROL?/%%"
    if !(bool (file_exists[]:int32 (var "system_information_963"))) goto 0x000958
0x0008E0:
    stog.msg[0s] = "No...?/"
    stog.msg[1s] = "Hmm...&This feeling you have./"
    stog.msg[2s] = "This is what I&spoke of./"
    stog.msg[3s] = "Unfortunately,&regarding this.../"
    stog.msg[4s] = "YOU MADE YOUR CHOICE&LONG AGO./%%"
0x000958:
    self.con = 31s
    call (instance_create[]:int32 (var 782s) (var 320s) (var 150s))
0x000988:
    if !(== self.con 31s) goto 0x0009B4
0x00099C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0009B8
0x0009B4:
    push 0s
0x0009B8:
    if !pop goto 0x0009DC
0x0009BC:
    if !(== 782.stringno 4s) goto 0x0009DC
0x0009D0:
    self.sprite_index = 654s
0x0009DC:
    if !(== self.con 31s) goto 0x000A0C
0x0009F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A10
0x000A0C:
    push 0s
0x000A10:
    if !pop goto 0x000A20
0x000A14:
    self.con = 40s
0x000A20:
    if !(== self.con 40s) goto 0x000B44
0x000A34:
    call (caster_stop[]:int32 (var -3s))
    call (caster_play[]:int32 (var 0.95d) (var 1s) self.ch_sfx2)
    self.sprite_index = 655s
    self.image_speed = 0.5d
    self.con = 41s
    self.flashred = 1s
    stog.alarm[4s] = 120s
    self.wx = 0s
    self.wy = 0s
    if !(== global.osflavor 1s) goto 0x000B44
0x000AEC:
    call (window_set_fullscreen[]:int32 (var 0s))
    call (window_set_caption[]:int32 (var " "))
    call (window_center[]:int32 )
    self.wx = (window_get_x[]:int32 )
    self.wy = (window_get_y[]:int32 )
0x000B44:
    if !(== self.con 41s) goto 0x000CF0
0x000B58:
    self.x = (- (+ (/ self.room_width (double 2s)) (random[]:int32 (var 4s))) (random[]:int32 (var 4s)))
    self.y = (- (+ (/ self.room_height (double 2s)) (random[]:int32 (var 4s))) (random[]:int32 (var 4s)))
    self.image_xscale = (+ self.image_xscale 0.08d)
    self.image_yscale = (+ self.image_yscale 0.08d)
    if !(== global.osflavor 1s) goto 0x000CF0
0x000C34:
    call (window_set_position[]:int32 (- (+ self.wy (random[]:int32 (+ (/ self.redsiner (double 4s)) 4s))) (random[]:int32 (+ (/ self.redsiner (double 4s)) 4s))) (- (+ self.wx (random[]:int32 (+ (/ self.redsiner (double 4s)) 4s))) (random[]:int32 (+ (/ self.redsiner (double 4s)) 4s))))
0x000CF0:
    if !(== self.con 42s) goto 0x000D3C
0x000D04:
    self.con = 60s
    if !(== global.osflavor 1s) goto 0x000D30
0x000D24:
    call (window_center[]:int32 )
0x000D30:
    self.flashred = 0s
0x000D3C:
    if !(== self.con 60s) goto 0x000E3C
0x000D50:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 44s))
    self.image_speed = 0s
    self.image_index = 0s
    self.sprite_index = 757s
    self.image_xscale = 5s
    self.image_yscale = 5s
    self.y = (- (/ self.room_height (double 2s)) (/ self.sprite_height (double 2s)))
    self.x = (- (/ self.room_width (double 2s)) (/ self.sprite_width (double 2s)))
    self.image_speed = 0.1d
    self.con = 61s
0x000E3C:
    if !(== self.con 61s) goto 0x000E98
0x000E50:
    if !(>= self.image_index 5.5d) goto 0x000E98
0x000E6C:
    self.visible = 0s
    self.con = 62s
    stog.alarm[4s] = 40s
0x000E98:
    if !(== self.con 63s) goto 0x000EF0
0x000EAC:
    call (snd_play[]:int32 (var 51s))
    call (instance_create[]:int32 (var 495s) (var 0s) (var 0s))
    self.con = 64s
0x000EF0:
    exit
