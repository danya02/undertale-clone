0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.sprite_index 737s) goto 0x0000D4
0x00006C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 58s) (+ self.x 48s) global.faceemotion (var 835s))
0x0000D4:
    if (== self.sprite_index 722s) goto 0x0000FC
0x0000E8:
    push (== self.sprite_index 735s)
    goto 0x000100
0x0000FC:
    push 1s
0x000100:
    if !pop goto 0x00016C
0x000104:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 8s) (+ self.x 48s) global.faceemotion (var 835s))
0x00016C:
    if !(== self.con 0s) goto 0x000280
0x000180:
    self.dogsong = (caster_load[]:int32 (var "music/dogsong.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.6d) self.dogsong)
    stog.flag[20s] = 0s
    self.tobdog = (instance_create[]:int32 (var 602s) (var 240s) (var 640s))
    stog.y* = (- (int32 self.tobdog):y (int32 self.tobdog):sprite_height)
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    push -2s
    stog.hspeed* = (int32 self.tobdog)
    self.con = 1s
0x000280:
    push (int32 self.tobdog)
    if !(== self.con 1s) goto 0x000334
0x000294:
    if !(< (int32 self.tobdog):x 480s) goto 0x000334
0x0002B4:
    push 0s
    stog.hspeed* = (int32 self.tobdog)
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    push 834s
    stog.sprite_index* = (int32 self.tobdog)
    self.con = 2s
    stog.alarm[4s] = 50s
0x000334:
    if !(== self.con 3s) goto 0x000400
0x000348:
    global.faceemotion = 2s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.msc = 0s
    global.typer = 33s
    stog.msg[0s] = "And that's the&end of Hard&Mode!/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.con = 4s
0x000400:
    if !(== self.con 4s) goto 0x000480
0x000414:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000480
0x000430:
    self.con = 5s
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    stog.alarm[4s] = 20s
0x000480:
    if !(== self.con 6s) goto 0x000534
0x000494:
    global.typer = 8s
    stog.msg[0s] = "\\E1Eh??/"
    stog.msg[1s] = "\\E2You are ending&it NOW?/"
    stog.msg[2s] = "\\E1And on such a&dramatic moment...?/%%"
    global.faceemotion = 1s
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (+ self.x 120s))
    self.con = 7s
0x000534:
    if !(== self.con 7s) goto 0x000634
0x000548:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000634
0x000564:
    self.con = 8s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.msg[0s] = "That's the&difficult part./"
    stog.msg[1s] = "Not the bullets./"
    stog.msg[2s] = "\\M2But^1, accepting&that it's all&over.../%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x000634:
    if !(== self.con 8s) goto 0x000718
0x000648:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000718
0x000664:
    stog.flag[20s] = 1s
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    self.con = 9s
    global.faceemotion = 3s
    global.typer = 8s
    stog.msg[0s] = "But there WILL be&more^1, will there&not?/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (+ self.x 120s))
0x000718:
    if !(== self.con 9s) goto 0x00083C
0x00072C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x00083C
0x000748:
    self.con = 10s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.faceemotion = 2s
    global.typer = 33s
    stog.msg[0s] = "\\M1Maybe./"
    stog.msg[1s] = "\\M2Knowing the&answer is.../"
    stog.msg[2s] = "\\M2... HARD./"
    stog.msg[3s] = "\\E4.../%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x00083C:
    if !(== self.con 10s) goto 0x0008C8
0x000850:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x0008C8
0x00086C:
    global.faceemotion = 1s
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    self.con = 11s
    stog.alarm[4s] = 50s
0x0008C8:
    if !(== self.con 12s) goto 0x000914
0x0008DC:
    global.faceemotion = 0s
    self.sprite_index = 722s
    self.con = 13s
    stog.alarm[4s] = 50s
0x000914:
    if !(== self.con 14s) goto 0x000A18
0x000928:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000A18
0x000944:
    self.con = 14.1d
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Hey!/"
    stog.msg[1s] = "Aren't you&supposed&to be dying or&something?/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x000A18:
    if !(== self.con 14.1d) goto 0x000AF0
0x000A34:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000AF0
0x000A50:
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    self.con = 15s
    global.faceemotion = 0s
    global.typer = 8s
    stog.msg[0s] = "Well^1.&What is the point&of that now?/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (+ self.x 120s))
0x000AF0:
    if !(== self.con 15s) goto 0x000BD4
0x000B04:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000BD4
0x000B20:
    self.con = 16s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.flag[20s] = 0s
    stog.msg[0s] = "What will you do&instead...?/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x000BD4:
    if !(== self.con 16s) goto 0x000CBC
0x000BE8:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000CBC
0x000C04:
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    self.con = 17s
    global.faceemotion = 0s
    stog.msg[0s] = "Hmmm^1.&Perhaps I will&bake another pie./"
    stog.msg[1s] = "That last one ended&up a little burnt./%%"
    global.typer = 8s
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (+ self.x 120s))
0x000CBC:
    if !(== self.con 17s) goto 0x000DBC
0x000CD0:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000DBC
0x000CEC:
    self.con = 18s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.msg[0s] = "\\E2I thought it was&good./"
    stog.msg[1s] = "\\E1Theoretically./"
    stog.msg[2s] = "\\E4It's not like I&ate it all while&you were&fighting./%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x000DBC:
    if !(== self.con 18s) goto 0x000E48
0x000DD0:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000E48
0x000DEC:
    push 0s
    stog.image_speed* = (int32 self.tobdog)
    push 0s
    stog.image_index* = (int32 self.tobdog)
    global.faceemotion = 1s
    self.con = 19s
    stog.alarm[4s] = 90s
0x000E48:
    if !(== self.con 20s) goto 0x000E88
0x000E5C:
    self.hspeed = -3s
    self.con = 21s
    stog.alarm[4s] = 180s
0x000E88:
    if !(== self.con 22s) goto 0x000F58
0x000E9C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x000F58
0x000EB8:
    self.con = 23s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.msg[0s] = "Hey^1! Hey^1!&Can I have some&pie!/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x000F58:
    if !(== self.con 23s) goto 0x001020
0x000F6C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001020
0x000F88:
    push -4s
    stog.hspeed* = (int32 self.tobdog)
    push 1520s
    stog.sprite_index* = (int32 self.tobdog)
    self.con = 24s
    global.faceemotion = 0s
    global.typer = 8s
    stog.msg[0s] = "You are just going&to eat it all.../%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (var 0s))
0x001020:
    if !(>= self.con 24s) goto 0x001048
0x001034:
    push (< self.con 28s)
    goto 0x00104C
0x001048:
    push 0s
0x00104C:
    if !pop goto 0x001088
0x001050:
    if !(<= (int32 self.tobdog):x 320s) goto 0x001088
0x001070:
    push 0s
    stog.hspeed* = (int32 self.tobdog)
0x001088:
    if !(== self.con 24s) goto 0x001158
0x00109C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001158
0x0010B8:
    self.con = 25s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.msg[0s] = "I can helllp!!!/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 230s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x001158:
    if !(== self.con 25s) goto 0x0011F0
0x00116C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x0011F0
0x001188:
    self.con = 26s
    global.faceemotion = 0s
    global.typer = 8s
    stog.msg[0s] = "Snoring on the&floor is NOT help./%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.y 30s) (var 0s))
0x0011F0:
    if !(== self.con 26s) goto 0x001308
0x001204:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001308
0x001220:
    self.con = 27s
    push 0.2d
    stog.image_speed* = (int32 self.tobdog)
    global.typer = 33s
    stog.msg[0s] = "I'm not snoring^1,&I'm cheering you&on in my sleep!!/"
    stog.msg[1s] = ".../"
    stog.msg[2s] = "Oh^1, you're still&here?/"
    stog.msg[3s] = "Don't you have&anything better&to do?/%%"
    call (scr_blcon[]:int32 (var 0s) (- (int32 self.tobdog):y 120s) (var 230s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x001308:
    if !(== self.con 27s) goto 0x0013BC
0x00131C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x0013BC
0x001338:
    call (caster_stop[]:int32 self.dogsong)
    self.in = (caster_load[]:int32 (var "music/intronoise.ogg"))
    self.mode = (caster_load[]:int32 (var "music/mode.ogg"))
    self.con = 28s
    push -4s
    stog.hspeed* = (int32 self.tobdog)
    stog.alarm[4s] = 210s
0x0013BC:
    if !(== self.con 29s) goto 0x001430
0x0013D0:
    call (caster_play[]:int32 (var 1s) (var 1s) self.in)
    self.draw_u = 1s
    self.depth = -40000
    self.con = 30s
    stog.alarm[4s] = 90s
0x001430:
    if !(== self.con 31s) goto 0x00149C
0x001444:
    call (caster_play[]:int32 (var 1s) (var 0.9d) self.mode)
    self.draw_u = 2s
    self.con = 32s
    stog.alarm[4s] = 90s
0x00149C:
    if !(== self.con 33s) goto 0x001510
0x0014B0:
    call (caster_play[]:int32 (var 1.2d) (var 0.8d) self.mode)
    self.draw_u = 3s
    self.con = 34s
    stog.alarm[4s] = 90s
0x001510:
    if !(== self.con 35s) goto 0x001584
0x001524:
    call (caster_play[]:int32 (var 1.6d) (var 0.7d) self.mode)
    self.draw_u = 4s
    self.con = 36s
    stog.alarm[4s] = 90s
0x001584:
    if !(== self.con 37s) goto 0x001604
0x001598:
    call (caster_play[]:int32 (var 2.2d) (var 0.6d) self.mode)
    self.draw_u = 5s
    self.con = 38s
    stog.alarm[4s] = 600s
    global.faceemotion = 0s
0x001604:
    if !(== self.con 39s) goto 0x001668
0x001618:
    self.draw_f = 1s
    self.fx = 280s
    self.fy = 340s
    self.famt = 0s
    self.con = 40s
    stog.alarm[4s] = 90s
0x001668:
    if !(== self.con 41s) goto 0x001800
0x00167C:
    global.typer = 6s
    stog.msg[0s] = "\\E0Hey./"
    stog.msg[1s] = "\\E3What's the hold&up!?/"
    stog.msg[2s] = "\\E9Shouldn't she be&dead by now!?/"
    stog.msg[3s] = "\\E1I've been waiting&in that room for.../"
    stog.msg[4s] = "\\E6.../"
    stog.msg[5s] = "\\E7... Hard mode...?/"
    stog.msg[6s] = "\\E0Gee^1, you better&take a picture./"
    stog.msg[7s] = "People are gonna&think you're REALLY&cool./"
    stog.msg[8s] = "\\E9... NOT!/"
    stog.msg[9s] = "\\E8Golly^1, talk about&a tryhard./"
    stog.msg[10s] = "PA^1. THE^1. TIC./%%"
    call (scr_blcon[]:int32 (var 0s) self.fy (+ self.fx 90s))
    pushenv 782s 0x0017D4
0x0017C4:
    self.depth = -42100
0x0017D4:
    popenv 0x0017C4
0x0017D8:
    push -42000
    stog.depth* = (int32 self.blcon)
    self.con = 42s
0x001800:
    if !(== self.con 42s) goto 0x001864
0x001814:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001864
0x001830:
    global.faceemotion = 0s
    self.con = 42.1d
    stog.alarm[4s] = 150s
0x001864:
    if !(== self.con 43.1d) goto 0x001908
0x001880:
    stog.msg[0s] = "\\E0Uh^1, so^1, are you&gonna keep going^1,&or...?/%%"
    call (scr_blcon[]:int32 (var 0s) self.fy (+ self.fx 90s))
    pushenv 782s 0x0018DC
0x0018CC:
    self.depth = -42100
0x0018DC:
    popenv 0x0018CC
0x0018E0:
    push -42000
    stog.depth* = (int32 self.blcon)
    self.con = 44s
0x001908:
    if !(== self.con 44s) goto 0x0019D0
0x00191C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x0019D0
0x001938:
    global.faceemotion = 1s
    self.con = 45s
    global.typer = 8s
    stog.msg[0s] = "It's over./%%"
    call (scr_blcon[]:int32 (var 0s) self.fy (var 0s))
    pushenv 782s 0x0019B0
0x0019A0:
    self.depth = -42100
0x0019B0:
    popenv 0x0019A0
0x0019B4:
    push -42000
    stog.depth* = (int32 self.blcon)
0x0019D0:
    if !(== self.con 45s) goto 0x001A20
0x0019E4:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001A20
0x001A00:
    self.con = 46s
    stog.alarm[4s] = 30s
0x001A20:
    if !(== self.con 47s) goto 0x001B28
0x001A34:
    global.typer = 6s
    stog.msg[0s] = "\\E8Hahaha^1!&I KNEW that!/"
    stog.msg[1s] = "Why does everyone&have to be so&condescending!?/"
    stog.msg[2s] = "\\E1.../"
    stog.msg[3s] = "\\E8So what's YOUR&excuse^1?&Sitting around&here...?/"
    stog.msg[4s] = "\\E0Don't you have&anything better to%%"
    call (scr_blcon[]:int32 (var 0s) self.fy (+ self.fx 90s))
    pushenv 782s 0x001AFC
0x001AEC:
    self.depth = -42100
0x001AFC:
    popenv 0x001AEC
0x001B00:
    push -42000
    stog.depth* = (int32 self.blcon)
    self.con = 48s
0x001B28:
    if !(== self.con 48s) goto 0x001BE4
0x001B3C:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001BE4
0x001B58:
    self.con = 50s
    global.typer = 33s
    stog.msg[0s] = "I already said&that./%%"
    call (scr_blcon[]:int32 (var 0s) self.fy (var 0s))
    pushenv 782s 0x001BC4
0x001BB4:
    self.depth = -42100
0x001BC4:
    popenv 0x001BB4
0x001BC8:
    push -42000
    stog.depth* = (int32 self.blcon)
0x001BE4:
    if !(== self.con 50s) goto 0x001C34
0x001BF8:
    if !(~ (bool (instance_exists[]:int32 self.blcon))) goto 0x001C34
0x001C14:
    self.con = 51s
    stog.alarm[4s] = 120s
0x001C34:
    if !(== self.con 52s) goto 0x001C80
0x001C48:
    self.draw_f = 3s
    self.con = 53s
    stog.alarm[4s] = 180s
    self.blk = 0s
0x001C80:
    if !(> self.draw_u 0s) goto 0x001F8C
0x001C94:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_halign[]:int32 (var 1s))
    if !(>= self.draw_u 1s) goto 0x001D5C
0x001D04:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var -60s) (var 0s) (var 0s) (var 0s))
0x001D5C:
    if !(>= self.draw_u 2s) goto 0x001DD8
0x001D70:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text_transformed[]:int32 (var 20s) (var 3s) (var 3s) (var "HARD MODE") (var 140s) (var 320s))
0x001DD8:
    if !(>= self.draw_u 3s) goto 0x001E68
0x001DEC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1.5d) (var 1.5d) (var "Coming...") (var 230s) (var 320s))
0x001E68:
    if !(>= self.draw_u 4s) goto 0x001EE8
0x001E7C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "Maybe,") (var 270s) (var 320s))
0x001EE8:
    if !(>= self.draw_u 5s) goto 0x001F78
0x001EFC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text_transformed[]:int32 (var 0s) (var 0.5d) (var 0.5d) (var "Eh. don't count on it.") (var 305s) (var 320s))
0x001F78:
    call (draw_set_halign[]:int32 (var 0s))
0x001F8C:
    if !(== self.draw_f 1s) goto 0x002040
0x001FA0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.fy self.fx (floor[]:int32 self.famt) (var 623s))
    self.famt = (+ self.famt 0.5d)
    if !(>= self.famt 8s) goto 0x002040
0x002034:
    self.draw_f = 2s
0x002040:
    if !(== self.draw_f 2s) goto 0x002104
0x002054:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.fy self.fx (var 8s) (var 623s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.fy self.fx global.faceemotion (var 646s))
0x002104:
    if !(== self.draw_f 3s) goto 0x0021B8
0x002118:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.fy self.fx (floor[]:int32 self.famt) (var 623s))
    self.famt = (- self.famt 0.5d)
    if !(<= self.famt 0s) goto 0x0021B8
0x0021AC:
    self.draw_f = 4s
0x0021B8:
    if !(== self.con 54s) goto 0x00228C
0x0021CC:
    call (draw_set_alpha[]:int32 self.blk)
    self.blk = (+ self.blk 0.01d)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(> self.blk 1.8d) goto 0x002278
0x002264:
    call (room_goto[]:int32 (var 323s))
0x002278:
    call (draw_set_alpha[]:int32 (var 1s))
0x00228C:
    exit
