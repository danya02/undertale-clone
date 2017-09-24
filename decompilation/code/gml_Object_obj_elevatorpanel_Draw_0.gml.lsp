0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.myinteract 1s) goto 0x000068
0x000040:
    if !(== global.interact 0s) goto 0x000068
0x000054:
    push (== self.con 0s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x000088
0x000070:
    global.interact = 1s
    self.con = 1s
0x000088:
    if !(== self.con 1s) goto 0x000114
0x00009C:
    global.facechoice = 0s
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* Please select a location./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
    self.buffer = 5s
0x000114:
    if !(== self.con 2s) goto 0x000144
0x000128:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000148
0x000144:
    push 0s
0x000148:
    if !pop goto 0x000DDC
0x00014C:
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
    push -5s
    if !(!= 398s:flag 0s) goto 0x00034C
0x000300:
    push (var "Left Floor 1")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 50s))
    goto 0x000394
0x00034C:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 50s))
0x000394:
    push -5s
    if !(!= 398s:flag 1s) goto 0x0003FC
0x0003B0:
    push (var "Right Floor 1")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 160s))
    goto 0x000444
0x0003FC:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 160s))
0x000444:
    push -5s
    if !(!= 398s:flag 2s) goto 0x0004AC
0x000460:
    push (var "Right Floor 2")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 160s))
    goto 0x0004F4
0x0004AC:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 160s))
0x0004F4:
    if !(> self.trigger 0s) goto 0x0005B8
0x000508:
    push -5s
    if !(!= 398s:flag 3s) goto 0x000570
0x000524:
    push (var "Left Floor 2")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 50s))
    goto 0x0005B8
0x000570:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 50s))
0x0005B8:
    if !(> self.trigger 0s) goto 0x00067C
0x0005CC:
    push -5s
    if !(!= 398s:flag 4s) goto 0x000634
0x0005E8:
    push (var "Left Floor 3")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 50s))
    goto 0x00067C
0x000634:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 50s))
0x00067C:
    if !(> self.trigger 1s) goto 0x000740
0x000690:
    push -5s
    if !(!= 398s:flag 5s) goto 0x0006F8
0x0006AC:
    push (var "Right Floor 3")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 160s))
    goto 0x000740
0x0006F8:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 160s))
0x000740:
    push -1s
    push (+ (+ 0s:view_yview 20s) (* 20s self.hearty))
    call (draw_sprite[]:int32 -1s (+ (+ 0s:view_xview 30s) (* self.heartx 110s)) (var 0s) (var 49s))
    if !(< self.buffer 0s) goto 0x000DDC
0x0007C8:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x00080C
0x0007E0:
    if !(> self.hearty 0s) goto 0x00080C
0x0007F4:
    self.hearty = (- self.hearty 1s)
0x00080C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x000964
0x000824:
    if !(< self.hearty 2s) goto 0x000964
0x000838:
    if !(== self.heartx 0s) goto 0x0008DC
0x00084C:
    if !(== self.hearty 1s) goto 0x000874
0x000860:
    push (> self.trigger 0s)
    goto 0x000878
0x000874:
    push 0s
0x000878:
    if !pop goto 0x000894
0x00087C:
    self.hearty = (+ self.hearty 1s)
0x000894:
    if !(== self.hearty 0s) goto 0x0008BC
0x0008A8:
    push (> self.trigger 0s)
    goto 0x0008C0
0x0008BC:
    push 0s
0x0008C0:
    if !pop goto 0x0008DC
0x0008C4:
    self.hearty = (+ self.hearty 1s)
0x0008DC:
    if !(== self.heartx 1s) goto 0x000964
0x0008F0:
    if !(== self.hearty 1s) goto 0x000918
0x000904:
    push (> self.trigger 1s)
    goto 0x00091C
0x000918:
    push 0s
0x00091C:
    if !pop goto 0x000938
0x000920:
    self.hearty = (+ self.hearty 1s)
0x000938:
    if !(== self.hearty 0s) goto 0x000964
0x00094C:
    self.hearty = (+ self.hearty 1s)
0x000964:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000A30
0x00097C:
    if !(== self.heartx 0s) goto 0x000A30
0x000990:
    if !(== self.hearty 0s) goto 0x0009BC
0x0009A4:
    self.heartx = (+ self.heartx 1s)
0x0009BC:
    if !(== self.hearty 1s) goto 0x0009E8
0x0009D0:
    self.heartx = (+ self.heartx 1s)
0x0009E8:
    if !(== self.hearty 2s) goto 0x000A10
0x0009FC:
    push (> self.trigger 1s)
    goto 0x000A14
0x000A10:
    push 0s
0x000A14:
    if !pop goto 0x000A30
0x000A18:
    self.heartx = (+ self.heartx 1s)
0x000A30:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000B18
0x000A48:
    if !(== self.heartx 1s) goto 0x000B18
0x000A5C:
    if !(== self.hearty 0s) goto 0x000A88
0x000A70:
    self.heartx = (- self.heartx 1s)
0x000A88:
    if !(== self.hearty 1s) goto 0x000AB0
0x000A9C:
    push (> self.trigger 0s)
    goto 0x000AB4
0x000AB0:
    push 0s
0x000AB4:
    if !pop goto 0x000AD0
0x000AB8:
    self.heartx = (- self.heartx 1s)
0x000AD0:
    if !(== self.hearty 2s) goto 0x000AF8
0x000AE4:
    push (> self.trigger 1s)
    goto 0x000AFC
0x000AF8:
    push 0s
0x000AFC:
    if !pop goto 0x000B18
0x000B00:
    self.heartx = (- self.heartx 1s)
0x000B18:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000DDC
0x000B30:
    self.con = 5s
    if !(== self.heartx 0s) goto 0x000B64
0x000B50:
    push (== self.hearty 0s)
    goto 0x000B68
0x000B64:
    push 0s
0x000B68:
    if !pop goto 0x000BAC
0x000B6C:
    push -5s
    if !(!= 398s:flag 0s) goto 0x000BA0
0x000B88:
    stog.flag[398s] = 0s
    goto 0x000BAC
0x000BA0:
    self.con = 15s
0x000BAC:
    if !(== self.heartx 1s) goto 0x000BD4
0x000BC0:
    push (== self.hearty 0s)
    goto 0x000BD8
0x000BD4:
    push 0s
0x000BD8:
    if !pop goto 0x000C1C
0x000BDC:
    push -5s
    if !(!= 398s:flag 1s) goto 0x000C10
0x000BF8:
    stog.flag[398s] = 1s
    goto 0x000C1C
0x000C10:
    self.con = 15s
0x000C1C:
    if !(== self.heartx 1s) goto 0x000C44
0x000C30:
    push (== self.hearty 1s)
    goto 0x000C48
0x000C44:
    push 0s
0x000C48:
    if !pop goto 0x000C8C
0x000C4C:
    push -5s
    if !(!= 398s:flag 2s) goto 0x000C80
0x000C68:
    stog.flag[398s] = 2s
    goto 0x000C8C
0x000C80:
    self.con = 15s
0x000C8C:
    if !(== self.heartx 0s) goto 0x000CB4
0x000CA0:
    push (== self.hearty 1s)
    goto 0x000CB8
0x000CB4:
    push 0s
0x000CB8:
    if !pop goto 0x000CFC
0x000CBC:
    push -5s
    if !(!= 398s:flag 3s) goto 0x000CF0
0x000CD8:
    stog.flag[398s] = 3s
    goto 0x000CFC
0x000CF0:
    self.con = 15s
0x000CFC:
    if !(== self.heartx 0s) goto 0x000D24
0x000D10:
    push (== self.hearty 2s)
    goto 0x000D28
0x000D24:
    push 0s
0x000D28:
    if !pop goto 0x000D6C
0x000D2C:
    push -5s
    if !(!= 398s:flag 4s) goto 0x000D60
0x000D48:
    stog.flag[398s] = 4s
    goto 0x000D6C
0x000D60:
    self.con = 15s
0x000D6C:
    if !(== self.heartx 1s) goto 0x000D94
0x000D80:
    push (== self.hearty 2s)
    goto 0x000D98
0x000D94:
    push 0s
0x000D98:
    if !pop goto 0x000DDC
0x000D9C:
    push -5s
    if !(!= 398s:flag 5s) goto 0x000DD0
0x000DB8:
    stog.flag[398s] = 5s
    goto 0x000DDC
0x000DD0:
    self.con = 15s
0x000DDC:
    if !(== self.con 5s) goto 0x000E24
0x000DF0:
    call (snd_play[]:int32 (var 108s))
    self.con = 6s
    stog.alarm[4s] = 15s
0x000E24:
    if !(== self.con 7s) goto 0x000E84
0x000E38:
    self.rect = 1s
    global.facing = 0s
    call (snd_play[]:int32 (var 28s))
    self.con = 8s
    stog.alarm[4s] = 11s
0x000E84:
    if !(== self.con 9s) goto 0x000F48
0x000E98:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 122s))
    self.elev = (caster_load[]:int32 (var "music/elevator.ogg"))
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = 0s:view_yview
    self.siner = 0s
    self.con = 10s
    self.intense = 0.5d
    stog.alarm[4s] = 15s
0x000F48:
    if !(== self.con 11s) goto 0x000FA0
0x000F5C:
    self.con = 12s
    stog.alarm[4s] = 110s
    call (caster_play[]:int32 (var 1s) (var 1s) self.elev)
0x000FA0:
    if !(== self.con 12s) goto 0x001100
0x000FB4:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.siner = (+ self.siner 1s)
    push -1s
    if !(> 4s:alarm 20s) goto 0x00102C
0x001008:
    self.intense = (+ self.intense 0.01d)
    goto 0x001060
0x00102C:
    if !(> self.intense 0s) goto 0x001060
0x001040:
    self.intense = (- self.intense 0.1d)
0x001060:
    stog.view_xview[0s] = (floor[]:int32 (+ self.xx (* (sin[]:int32 (/ self.siner 1.3d)) self.intense)))
    stog.view_yview[0s] = (floor[]:int32 (+ self.yy (* (sin[]:int32 (/ self.siner 0.9d)) self.intense)))
0x001100:
    if !(== self.con 13s) goto 0x001184
0x001114:
    stog.view_xview[0s] = self.xx
    stog.view_yview[0s] = self.yy
    self.rect = 2s
    self.con = 14s
    call (snd_play[]:int32 (var 28s))
    stog.alarm[4s] = 11s
0x001184:
    if !(== self.con 15s) goto 0x0011F8
0x001198:
    global.facing = 0s
    call (caster_play[]:int32 (var 1s) (var 1s) (var 122s))
    global.interact = 0s
    self.con = 0s
    call (scr_tempsave[]:int32 )
    self.myinteract = 0s
0x0011F8:
    if !(== self.rect 1s) goto 0x0012C4
0x00120C:
    if !(< self.rectaur 20s) goto 0x001238
0x001220:
    self.rectaur = (+ self.rectaur 2s)
0x001238:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (+ 140s self.rectaur) (var 180s) (var 140s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (- 180s self.rectaur) (var 180s) (var 180s))
0x0012C4:
    if !(== self.rect 2s) goto 0x001390
0x0012D8:
    if !(> self.rectaur 0s) goto 0x001304
0x0012EC:
    self.rectaur = (- self.rectaur 2s)
0x001304:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (+ 140s self.rectaur) (var 180s) (var 140s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (- 180s self.rectaur) (var 180s) (var 180s))
0x001390:
    exit
