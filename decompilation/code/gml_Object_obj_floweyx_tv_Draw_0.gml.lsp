0x000000:
    if !(== self.tvmode 0s) goto 0x000358
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) self.anim (var 2207s))
    self.anim = (+ self.anim self.animspeed)
    if !(> self.anim (+ self.animchoice 1s)) goto 0x00014C
0x000138:
    self.animspeed = (- self.animspeed)
0x00014C:
    if !(< self.anim (- self.animchoice 1s)) goto 0x000180
0x00016C:
    self.animspeed = (- self.animspeed)
0x000180:
    self.animtimer = (+ self.animtimer 1s)
    if !(> self.animtimer 100s) goto 0x0002EC
0x0001AC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.8d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) (random[]:int32 (var 3s)) (var 2206s))
    self.animchoice = (round[]:int32 (random[]:int32 (var 100s)))
    self.anim = self.animchoice
    if !(> self.animtimer 106s) goto 0x0002EC
0x0002E0:
    self.animtimer = 0s
0x0002EC:
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
    self.siner = (+ self.siner 1s)
0x000358:
    if !(== self.tvmode 1s) goto 0x000544
0x00036C:
    stog.alarm[1s] = -1s
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 10s) (+ self.x 20s))
    call (draw_sprite_ext[]:int32 (+ 0.8d (sin[]:int32 (/ self.siner (double 2s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y 50s) (+ self.x 20s) (var 0s) (var 2257s))
    call (draw_sprite[]:int32 (+ (+ self.y 110s) (random[]:int32 (var 3s))) (+ (+ self.x 80s) (random[]:int32 (var 3s))) global.soul_rescue (var 2258s))
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
    self.siner = (+ self.siner 1s)
0x000544:
    if !(== self.tvmode 2s) goto 0x000638
0x000558:
    stog.alarm[1s] = -1s
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.2d) (+ self.y 50s) (+ self.x 26s) (random[]:int32 (var 3s)) (var 2206s))
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
0x000638:
    if !(== self.tvmode 3s) goto 0x000784
0x00064C:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 10s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ (+ self.y 90s) (* (sin[]:int32 (/ self.siner (double 8s))) 3s)) (+ self.x 80s) global.soul_rescue (var 2258s))
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
0x000784:
    if !(== self.tvmode 4s) goto 0x0008D4
0x000798:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) self.tt (var 2207s))
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
0x0008D4:
    if !(== self.tvmode 5s) goto 0x00097C
0x0008E8:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x00097C:
    if !(== self.tvmode 10s) goto 0x000A24
0x000990:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y 50s) (+ self.x 13s) self.tt (var 2205s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000A24:
    if !(== self.tvmode 11s) goto 0x000BA4
0x000A38:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 2.9d (random[]:int32 (var 0.1d))) (+ 2.9d (random[]:int32 (var 0.1d))) (+ (+ self.y 56s) (random[]:int32 (var 2s))) (+ (+ self.x 21s) (random[]:int32 (var 2s))) (floor[]:int32 global.faceemotion) (var 2196s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000BA4:
    if !(== self.tvmode 12s) goto 0x000D00
0x000BB8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) (var 35s) (var 2207s))
    self.anim4 = 0s
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
0x000D00:
    if !(== self.tvmode 13s) goto 0x000EF8
0x000D14:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_sprite_ext[]:int32 (- 1s self.anim4) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) (var 35s) (var 2207s))
    self.anim4 = (+ self.anim4 0.01d)
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index self.sprite_index)
    self.siner = (+ self.siner 1s)
0x000EF8:
    if !(== self.tvmode 18s) goto 0x00102C
0x000F0C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ self.y 65s) (+ self.x 25s) (var 0s) (var 2201s))
0x00102C:
    if !(== self.tvmode 19s) goto 0x00122C
0x001040:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ self.y 65s) (+ self.x 25s) (floor[]:int32 self.anim4) (var 2201s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    self.anim5 = (+ self.anim5 0.5d)
    if !(< self.anim4 6s) goto 0x0011E4
0x0011C4:
    self.anim4 = (+ self.anim4 0.5d)
0x0011E4:
    if !(> self.anim5 22s) goto 0x00122C
0x0011F8:
    if !(< self.anim4 15s) goto 0x00122C
0x00120C:
    self.anim4 = (+ self.anim4 0.5d)
0x00122C:
    if !(== self.tvmode 20s) goto 0x0013C0
0x001240:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) (double 2s))) 2s)) self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ self.y 65s) (+ self.x 25s) (floor[]:int32 self.anim3) (var 2202s))
    self.anim3 = (+ self.anim3 0.5d)
0x0013C0:
    if !(== self.tvmode 21s) goto 0x00153C
0x0013D4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ (+ self.y 65s) (sin[]:int32 (/ self.siner (double 3s)))) (+ self.x 25s) (var 0s) (var 2204s))
0x00153C:
    if !(== self.tvmode 22s) goto 0x001698
0x001550:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ (+ self.y 65s) (random[]:int32 (var 2s))) (+ (+ self.x 25s) (random[]:int32 (var 2s))) global.faceemotion (var 2203s))
0x001698:
    if !(== self.tvmode 24s) goto 0x0018AC
0x0016AC:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 (/ (- self.anim6 30s) (double 30s)))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.anim6 = (+ self.anim6 1s)
    call (draw_sprite_ext[]:int32 (/ (- self.anim6 30s) (double 30s)) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ self.y 65s) (+ self.x 25s) (var 0s) (var 2201s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x0018AC:
    if !(== self.tvmode 25s) goto 0x00197C
0x0018C0:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x00197C:
    if !(== self.tvmode 26s) goto 0x001B90
0x001990:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 (/ (- self.anim6 11s) (double 10s)))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 140s) (+ self.x 160s) (+ self.y 50s) (+ self.x 20s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.anim6 = (+ self.anim6 1s)
    call (draw_sprite_ext[]:int32 (/ (- self.anim6 11s) (double 10s)) (var 16777215) (var 0s) (var 1s) (var 1.3d) (+ self.y 65s) (+ self.x 25s) (var 11s) (var 2201s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x001B90:
    if !(== self.tvmode 99s) goto 0x001D28
0x001BA4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) self.anim (var 2207s))
    call (draw_sprite[]:int32 (- (+ self.y (random[]:int32 (var 3s))) (random[]:int32 (var 3s))) (- (+ self.x (random[]:int32 (var 3s))) (random[]:int32 (var 3s))) self.image_index self.sprite_index)
    self.anim = (+ self.anim 0.5d)
0x001D28:
    if !(== self.tvmode 100s) goto 0x001EB8
0x001D3C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.9d) (random[]:int32 (var 0.1d))) (+ (+ self.y 50s) (random[]:int32 (var 4s))) (+ (+ self.x 20s) (random[]:int32 (var 4s))) self.anim (var 2207s))
    call (draw_sprite[]:int32 (- (+ self.y (random[]:int32 (var 5s))) (random[]:int32 (var 5s))) (- (+ self.x (random[]:int32 (var 5s))) (random[]:int32 (var 5s))) self.image_index self.sprite_index)
    self.anim = (+ self.anim 1s)
0x001EB8:
    if !(> self.overnoiser 0s) goto 0x001F88
0x001ECC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1.2d) (+ self.y 50s) (+ self.x 26s) (random[]:int32 (var 3s)) (var 2206s))
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    self.overnoiser = (- self.overnoiser 1s)
0x001F88:
    if !(> self.shudder 0s) goto 0x002100
0x001F9C:
    self.shuddercounter = (+ self.shuddercounter 1s)
    if !(> self.shuddercounter 0s) goto 0x0020E0
0x001FC8:
    if !(== self.flasheron 1s) goto 0x002040
0x001FDC:
    call (draw_sprite[]:int32 (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) self.x self.image_index (var 2273s))
    self.flasheron = 0s
    goto 0x00204C
0x002040:
    self.flasheron = 1s
0x00204C:
    self.x = (- (+ self.remx (random[]:int32 self.shudder)) (random[]:int32 self.shudder))
    self.y = (- (+ self.ystart (random[]:int32 self.shudder)) (random[]:int32 self.shudder))
    self.shudder = (- self.shudder 2s)
    self.shuddercounter = 0s
0x0020E0:
    if !(< self.shudder 1s) goto 0x002100
0x0020F4:
    self.shudder = 0s
0x002100:
    exit
