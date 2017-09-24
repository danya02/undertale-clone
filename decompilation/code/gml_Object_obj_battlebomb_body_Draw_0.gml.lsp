0x000000:
    self.got = 0s
    push (var 0s)
    if !(bool (collision_rectangle[]:int32 (var 0s) self.object_index -5s (- 2s:idealborder 10s) (+ 320s self.coolwidth) (var 80s) (- 320s self.coolwidth))) goto 0x0000C4
0x000074:
    self.blenda = 65535
    if !(== self.defuse 1s) goto 0x0000A8
0x000098:
    self.blenda = 65280
0x0000A8:
    self.blendb = 65280
    self.got = 1s
0x0000C4:
    self.dd = 0s
    if !(== self.flash 1s) goto 0x000234
0x0000E4:
    self.flasher = (+ self.flasher 1s)
    if !(== self.flasher 1s) goto 0x000184
0x000110:
    if !(== self.defuse 0s) goto 0x000138
0x000124:
    call (snd_play[]:int32 (var 31s))
0x000138:
    if !(== self.defuse 1s) goto 0x000184
0x00014C:
    call (snd_play[]:int32 (var 30s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
0x000184:
    if (== self.flasher 1s) goto 0x0001E8
0x000198:
    if (== self.flasher 2s) goto 0x0001E8
0x0001AC:
    if (== self.flasher 3s) goto 0x0001E8
0x0001C0:
    if (== self.flasher 4s) goto 0x0001E8
0x0001D4:
    push (== self.flasher 5s)
    goto 0x0001EC
0x0001E8:
    push 1s
0x0001EC:
    if !pop goto 0x0001FC
0x0001F0:
    self.dd = 1s
0x0001FC:
    if !(> self.flasher 16s) goto 0x000234
0x000210:
    self.flasher = 0s
    self.flash = 0s
    self.dd = 0s
0x000234:
    call (draw_set_color[]:int32 self.blendb)
    if !(== self.dd 1s) goto 0x0002B0
0x00025C:
    push (var 0s)
    call (draw_rectangle[]:int32 -5s (- 2s:idealborder 10s) (+ 320s self.coolwidth) (var 80s) (- 320s self.coolwidth))
0x0002B0:
    if !(== self.dd 0s) goto 0x000318
0x0002C4:
    push (var 1s)
    call (draw_rectangle[]:int32 -5s (- 2s:idealborder 10s) (+ 320s self.coolwidth) (var 80s) (- 320s self.coolwidth))
0x000318:
    push (var 1s)
    call (draw_rectangle[]:int32 -5s (- 2s:idealborder 12s) (+ (+ 320s self.coolwidth) 2s) (var 82s) (- (- 320s self.coolwidth) 2s))
    push (var 1s)
    call (draw_rectangle[]:int32 -5s (- 2s:idealborder 14s) (+ (+ 320s self.coolwidth) 4s) (var 84s) (- (- 320s self.coolwidth) 4s))
    call (draw_sprite_ext[]:int32 (var 1s) self.blenda (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) self.blendb (var 0s) (var 2s) (var 2s) (var 30s) (var 320s) (var 0s) (var 491s))
    self.blenda = 16777215
    self.blendb = 32768
    if !(== self.type 0s) goto 0x00055C
0x0004BC:
    if !(== self.hspeed 0s) goto 0x0004E0
0x0004D0:
    self.hspeed = self.myspeed
0x0004E0:
    if !(> self.x 560s) goto 0x000520
0x0004F4:
    self.x = (- self.x 15s)
    self.hspeed = (- self.myspeed)
0x000520:
    if !(< self.x 20s) goto 0x00055C
0x000534:
    self.x = (+ self.x 15s)
    self.hspeed = self.myspeed
0x00055C:
    if !(== self.type 1s) goto 0x0006A4
0x000570:
    self.myspeed = 4s
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 3s))) 3s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 4s))) 3s))
    if !(== self.hspeed 0s) goto 0x000628
0x000618:
    self.hspeed = self.myspeed
0x000628:
    if !(> self.x 400s) goto 0x000668
0x00063C:
    self.x = (- self.x 6s)
    self.hspeed = (- self.myspeed)
0x000668:
    if !(< self.x 180s) goto 0x0006A4
0x00067C:
    self.x = (+ self.x 6s)
    self.hspeed = self.myspeed
0x0006A4:
    if !(== self.type 2s) goto 0x00073C
0x0006B8:
    self.myspeed = 15s
    if !(== self.hspeed 0s) goto 0x0006E8
0x0006D8:
    self.hspeed = self.myspeed
0x0006E8:
    if !(> self.x 660s) goto 0x00073C
0x0006FC:
    self.x = 0s
    if !(> self.myspeed 5s) goto 0x00073C
0x00071C:
    self.myspeed = (- self.myspeed 0.5d)
0x00073C:
    if !(== self.type 3s) goto 0x000AE4
0x000750:
    if !(== self.cc 0s) goto 0x00078C
0x000764:
    self.cc = 1s
    self.x = 40s
    self.startx = self.x
0x00078C:
    self.movetimer = (+ self.movetimer 1s)
    if !(< self.movetimer 80s) goto 0x000820
0x0007B8:
    self.myspeed = 10s
    self.hspeed = self.myspeed
    if !(>= self.x (- (- 320s self.coolwidth) 110s)) goto 0x000820
0x0007FC:
    self.hspeed = 0s
    self.movetimer = (+ self.movetimer 10s)
0x000820:
    if !(> self.movetimer 80s) goto 0x000848
0x000834:
    push (<= self.movetimer 160s)
    goto 0x00084C
0x000848:
    push 0s
0x00084C:
    if !pop goto 0x00089C
0x000850:
    self.myspeed = 5s
    self.hspeed = (- self.myspeed)
    if !(< self.x 80s) goto 0x00089C
0x000884:
    self.movetimer = (+ self.movetimer 10s)
0x00089C:
    if !(> self.movetimer 160s) goto 0x0008C4
0x0008B0:
    push (< self.movetimer 240s)
    goto 0x0008C8
0x0008C4:
    push 0s
0x0008C8:
    if !pop goto 0x000914
0x0008CC:
    self.myspeed = 13s
    self.hspeed = self.myspeed
    if !(> self.x 500s) goto 0x000914
0x0008FC:
    self.movetimer = (+ self.movetimer 20s)
0x000914:
    if !(> self.movetimer 240s) goto 0x00093C
0x000928:
    push (< self.movetimer 320s)
    goto 0x000940
0x00093C:
    push 0s
0x000940:
    if !pop goto 0x0009AC
0x000944:
    self.myspeed = -10s
    self.hspeed = self.myspeed
    if !(<= self.x (+ (+ 320s self.coolwidth) 10s)) goto 0x0009AC
0x000988:
    self.hspeed = 0s
    self.movetimer = (+ self.movetimer 20s)
0x0009AC:
    if !(> self.movetimer 320s) goto 0x0009D4
0x0009C0:
    push (< self.movetimer 400s)
    goto 0x0009D8
0x0009D4:
    push 0s
0x0009D8:
    if !pop goto 0x000A24
0x0009DC:
    self.myspeed = 5s
    self.hspeed = self.myspeed
    if !(> self.x 440s) goto 0x000A24
0x000A0C:
    self.movetimer = (+ self.movetimer 20s)
0x000A24:
    if !(> self.movetimer 400s) goto 0x000A4C
0x000A38:
    push (< self.movetimer 480s)
    goto 0x000A50
0x000A4C:
    push 0s
0x000A50:
    if !pop goto 0x000A9C
0x000A54:
    self.myspeed = -13s
    self.hspeed = self.myspeed
    if !(<= self.x (+ self.startx 10s)) goto 0x000A9C
0x000A90:
    self.movetimer = 500s
0x000A9C:
    if !(> self.movetimer 480s) goto 0x000AE4
0x000AB0:
    self.x = self.startx
    self.movetimer = 0s
    self.hspeed = 0s
    self.myspeed = 0s
0x000AE4:
    if !(== self.type 4s) goto 0x000B7C
0x000AF8:
    self.siner = (+ self.siner 1s)
    self.x = (+ 260s (* (sin[]:int32 (/ self.siner (double 20s))) 180s))
    self.y = (+ self.ystart (* (cos[]:int32 (/ self.siner (double 3s))) 60s))
0x000B7C:
    if !(== self.type 5s) goto 0x000BBC
0x000B90:
    self.vspeed = -25s
    if !(< self.y -120s) goto 0x000BBC
0x000BB0:
    self.y = 930s
0x000BBC:
    if !(== self.type 5s) goto 0x000C34
0x000BD0:
    if !(== self.cc 0s) goto 0x000C08
0x000BE4:
    self.x = (- self.x 90s)
    self.cc = 1s
0x000C08:
    self.vspeed = -20s
    if !(< self.y -120s) goto 0x000C34
0x000C28:
    self.y = 860s
0x000C34:
    if !(== self.type 6s) goto 0x000DD4
0x000C48:
    if !(== self.cc 0s) goto 0x000CA4
0x000C5C:
    self.cc = 1s
    self.x = (- (- (- 320s self.coolwidth) self.sprite_width) 10s)
    self.startx = self.x
0x000CA4:
    self.movetimer = (+ self.movetimer 1s)
    if !(> self.movetimer 25s) goto 0x000CE4
0x000CD0:
    push (< self.movetimer 60s)
    goto 0x000CE8
0x000CE4:
    push 0s
0x000CE8:
    if !pop goto 0x000D2C
0x000CEC:
    self.hspeed = 16s
    if !(> self.x (+ (+ 320s self.coolwidth) 10s)) goto 0x000D2C
0x000D20:
    self.movetimer = 100s
0x000D2C:
    if !(>= self.movetimer 100s) goto 0x000D54
0x000D40:
    push (< self.movetimer 125s)
    goto 0x000D58
0x000D54:
    push 0s
0x000D58:
    if !pop goto 0x000D68
0x000D5C:
    self.hspeed = 0s
0x000D68:
    if !(> self.movetimer 125s) goto 0x000D90
0x000D7C:
    push (< self.movetimer 180s)
    goto 0x000D94
0x000D90:
    push 0s
0x000D94:
    if !pop goto 0x000DD4
0x000D98:
    self.hspeed = -16s
    if !(<= self.x self.startx) goto 0x000DD4
0x000DBC:
    self.hspeed = 0s
    self.movetimer = 0s
0x000DD4:
    if !(== self.defuse 1s) goto 0x000E28
0x000DE8:
    if !(== self.sprite_index 492s) goto 0x000E08
0x000DFC:
    self.sprite_index = 493s
0x000E08:
    if !(== self.sprite_index 1519s) goto 0x000E28
0x000E1C:
    self.sprite_index = 1520s
0x000E28:
    exit
