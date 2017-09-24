0x000000:
    if !(< self.clap 3s) goto 0x000024
0x000014:
    [obj_mainchara_fake].depth = self.depp
0x000024:
    if !(== self.heartdraw 1s) goto 0x00004C
0x000038:
    push (< self.clap 3s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x0000CC
0x000054:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 0.5d) (var 0.5d) (+ 1577.y 17s) (+ 1577.x 5s) (var 0s) (var 2270s))
0x0000CC:
    if !(!= self.clap 99s) goto 0x000134
0x0000E0:
    if !(== self.on 0s) goto 0x000134
0x0000F4:
    if !(== self.heartdraw 0s) goto 0x000134
0x000108:
    call (snd_play[]:int32 (var 106s))
    self.on = 1s
    self.heartdraw = 1s
0x000134:
    self.on = 0s
    if !(== self.clap 3s) goto 0x0001AC
0x000154:
    call (instance_create[]:int32 (var 1573s) (+ 1577.y 17s) (+ 1577.x 5s))
    self.heartdraw = 0s
    [obj_mainchara_fake].visible = 0s
    self.clap = 99s
0x0001AC:
    if !(== self.fader 1s) goto 0x000200
0x0001C0:
    pushenv 1573s 0x0001FC
0x0001C8:
    if !(== self.clapper 1s) goto 0x0001FC
0x0001DC:
    self.image_alpha = (- self.image_alpha 0.2d)
0x0001FC:
    popenv 0x0001C8
0x000200:
    exit
