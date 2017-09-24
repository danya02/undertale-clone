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
    if !pop goto 0x0000D0
0x000070:
    global.interact = 1s
    self.con = 5s
    push -5s
    if !(== 431s:flag 0s) goto 0x0000BC
0x0000A4:
    stog.flag[431s] = 1s
    goto 0x0000D0
0x0000BC:
    stog.flag[431s] = 0s
0x0000D0:
    if !(== self.con 1s) goto 0x00015C
0x0000E4:
    global.facechoice = 0s
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* Please select a location./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
    self.buffer = 5s
0x00015C:
    if !(== self.con 2s) goto 0x00018C
0x000170:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x000E24
0x000194:
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
    if !(!= 398s:flag 0s) goto 0x000394
0x000348:
    push (var "Left Floor 1")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 50s))
    goto 0x0003DC
0x000394:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 50s))
0x0003DC:
    push -5s
    if !(!= 398s:flag 1s) goto 0x000444
0x0003F8:
    push (var "Right Floor 1")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 160s))
    goto 0x00048C
0x000444:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 15s) -1s (+ 0s:view_xview 160s))
0x00048C:
    push -5s
    if !(!= 398s:flag 2s) goto 0x0004F4
0x0004A8:
    push (var "Right Floor 2")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 160s))
    goto 0x00053C
0x0004F4:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 160s))
0x00053C:
    if !(> self.trigger 0s) goto 0x000600
0x000550:
    push -5s
    if !(!= 398s:flag 3s) goto 0x0005B8
0x00056C:
    push (var "Left Floor 2")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 50s))
    goto 0x000600
0x0005B8:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 35s) -1s (+ 0s:view_xview 50s))
0x000600:
    if !(> self.trigger 0s) goto 0x0006C4
0x000614:
    push -5s
    if !(!= 398s:flag 4s) goto 0x00067C
0x000630:
    push (var "Left Floor 3")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 50s))
    goto 0x0006C4
0x00067C:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 50s))
0x0006C4:
    if !(> self.trigger 1s) goto 0x000788
0x0006D8:
    push -5s
    if !(!= 398s:flag 5s) goto 0x000740
0x0006F4:
    push (var "Right Floor 3")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 160s))
    goto 0x000788
0x000740:
    push (var "Cancel")
    push -1s
    call (draw_text[]:int32 (+ 0s:view_yview 55s) -1s (+ 0s:view_xview 160s))
0x000788:
    push -1s
    push (+ (+ 0s:view_yview 20s) (* 20s self.hearty))
    call (draw_sprite[]:int32 -1s (+ (+ 0s:view_xview 30s) (* self.heartx 110s)) (var 0s) (var 49s))
    if !(< self.buffer 0s) goto 0x000E24
0x000810:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000854
0x000828:
    if !(> self.hearty 0s) goto 0x000854
0x00083C:
    self.hearty = (- self.hearty 1s)
0x000854:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0009AC
0x00086C:
    if !(< self.hearty 2s) goto 0x0009AC
0x000880:
    if !(== self.heartx 0s) goto 0x000924
0x000894:
    if !(== self.hearty 1s) goto 0x0008BC
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
    if !(== self.hearty 0s) goto 0x000904
0x0008F0:
    push (> self.trigger 0s)
    goto 0x000908
0x000904:
    push 0s
0x000908:
    if !pop goto 0x000924
0x00090C:
    self.hearty = (+ self.hearty 1s)
0x000924:
    if !(== self.heartx 1s) goto 0x0009AC
0x000938:
    if !(== self.hearty 1s) goto 0x000960
0x00094C:
    push (> self.trigger 1s)
    goto 0x000964
0x000960:
    push 0s
0x000964:
    if !pop goto 0x000980
0x000968:
    self.hearty = (+ self.hearty 1s)
0x000980:
    if !(== self.hearty 0s) goto 0x0009AC
0x000994:
    self.hearty = (+ self.hearty 1s)
0x0009AC:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000A78
0x0009C4:
    if !(== self.heartx 0s) goto 0x000A78
0x0009D8:
    if !(== self.hearty 0s) goto 0x000A04
0x0009EC:
    self.heartx = (+ self.heartx 1s)
0x000A04:
    if !(== self.hearty 1s) goto 0x000A30
0x000A18:
    self.heartx = (+ self.heartx 1s)
0x000A30:
    if !(== self.hearty 2s) goto 0x000A58
0x000A44:
    push (> self.trigger 1s)
    goto 0x000A5C
0x000A58:
    push 0s
0x000A5C:
    if !pop goto 0x000A78
0x000A60:
    self.heartx = (+ self.heartx 1s)
0x000A78:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000B60
0x000A90:
    if !(== self.heartx 1s) goto 0x000B60
0x000AA4:
    if !(== self.hearty 0s) goto 0x000AD0
0x000AB8:
    self.heartx = (- self.heartx 1s)
0x000AD0:
    if !(== self.hearty 1s) goto 0x000AF8
0x000AE4:
    push (> self.trigger 0s)
    goto 0x000AFC
0x000AF8:
    push 0s
0x000AFC:
    if !pop goto 0x000B18
0x000B00:
    self.heartx = (- self.heartx 1s)
0x000B18:
    if !(== self.hearty 2s) goto 0x000B40
0x000B2C:
    push (> self.trigger 1s)
    goto 0x000B44
0x000B40:
    push 0s
0x000B44:
    if !pop goto 0x000B60
0x000B48:
    self.heartx = (- self.heartx 1s)
0x000B60:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000E24
0x000B78:
    self.con = 5s
    if !(== self.heartx 0s) goto 0x000BAC
0x000B98:
    push (== self.hearty 0s)
    goto 0x000BB0
0x000BAC:
    push 0s
0x000BB0:
    if !pop goto 0x000BF4
0x000BB4:
    push -5s
    if !(!= 398s:flag 0s) goto 0x000BE8
0x000BD0:
    stog.flag[398s] = 0s
    goto 0x000BF4
0x000BE8:
    self.con = 15s
0x000BF4:
    if !(== self.heartx 1s) goto 0x000C1C
0x000C08:
    push (== self.hearty 0s)
    goto 0x000C20
0x000C1C:
    push 0s
0x000C20:
    if !pop goto 0x000C64
0x000C24:
    push -5s
    if !(!= 398s:flag 1s) goto 0x000C58
0x000C40:
    stog.flag[398s] = 1s
    goto 0x000C64
0x000C58:
    self.con = 15s
0x000C64:
    if !(== self.heartx 1s) goto 0x000C8C
0x000C78:
    push (== self.hearty 1s)
    goto 0x000C90
0x000C8C:
    push 0s
0x000C90:
    if !pop goto 0x000CD4
0x000C94:
    push -5s
    if !(!= 398s:flag 2s) goto 0x000CC8
0x000CB0:
    stog.flag[398s] = 2s
    goto 0x000CD4
0x000CC8:
    self.con = 15s
0x000CD4:
    if !(== self.heartx 0s) goto 0x000CFC
0x000CE8:
    push (== self.hearty 1s)
    goto 0x000D00
0x000CFC:
    push 0s
0x000D00:
    if !pop goto 0x000D44
0x000D04:
    push -5s
    if !(!= 398s:flag 3s) goto 0x000D38
0x000D20:
    stog.flag[398s] = 3s
    goto 0x000D44
0x000D38:
    self.con = 15s
0x000D44:
    if !(== self.heartx 0s) goto 0x000D6C
0x000D58:
    push (== self.hearty 2s)
    goto 0x000D70
0x000D6C:
    push 0s
0x000D70:
    if !pop goto 0x000DB4
0x000D74:
    push -5s
    if !(!= 398s:flag 4s) goto 0x000DA8
0x000D90:
    stog.flag[398s] = 4s
    goto 0x000DB4
0x000DA8:
    self.con = 15s
0x000DB4:
    if !(== self.heartx 1s) goto 0x000DDC
0x000DC8:
    push (== self.hearty 2s)
    goto 0x000DE0
0x000DDC:
    push 0s
0x000DE0:
    if !pop goto 0x000E24
0x000DE4:
    push -5s
    if !(!= 398s:flag 5s) goto 0x000E18
0x000E00:
    stog.flag[398s] = 5s
    goto 0x000E24
0x000E18:
    self.con = 15s
0x000E24:
    if !(== self.con 5s) goto 0x000E6C
0x000E38:
    call (snd_play[]:int32 (var 108s))
    self.con = 6s
    stog.alarm[4s] = 15s
0x000E6C:
    if !(== self.con 7s) goto 0x000ECC
0x000E80:
    self.rect = 1s
    global.facing = 0s
    call (snd_play[]:int32 (var 28s))
    self.con = 8s
    stog.alarm[4s] = 11s
0x000ECC:
    if !(== self.con 9s) goto 0x000FD4
0x000EE0:
    call (snd_play[]:int32 (var 106s))
    push -5s
    if !(== 432s:flag 0s) goto 0x000F2C
0x000F10:
    self.elev = (caster_load[]:int32 (var "music/elevator_last.ogg"))
0x000F2C:
    push -5s
    if !(== 432s:flag 1s) goto 0x000F64
0x000F48:
    self.elev = (caster_load[]:int32 (var "music/elevator.ogg"))
0x000F64:
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = 0s:view_yview
    self.siner = 0s
    self.con = 10s
    self.intense = 0.5d
    stog.alarm[4s] = 15s
0x000FD4:
    if !(== self.con 11s) goto 0x0010C0
0x000FE8:
    self.con = 12s
    push -5s
    if !(== 432s:flag 0s) goto 0x001024
0x001010:
    stog.alarm[4s] = 560s
0x001024:
    push -5s
    if !(== 432s:flag 1s) goto 0x001054
0x001040:
    stog.alarm[4s] = 110s
0x001054:
    call (caster_play[]:int32 (var 1s) (var 1s) self.elev)
    if !(== self.room 242s) goto 0x0010C0
0x00108C:
    self.con = 12s
    stog.alarm[4s] = -1s
    stog.alarm[8s] = 85s
0x0010C0:
    if !(== self.con 12s) goto 0x001294
0x0010D4:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.siner = (+ self.siner 1s)
    push -1s
    if !(> 4s:alarm 20s) goto 0x001144
0x001128:
    push (< self.intense 1.5d)
    goto 0x001148
0x001144:
    push 0s
0x001148:
    if !pop goto 0x00116C
0x00114C:
    self.intense = (+ self.intense 0.02d)
0x00116C:
    push -1s
    if !(> 8s:alarm 1s) goto 0x0011A4
0x001188:
    push (< self.intense 0.6d)
    goto 0x0011A8
0x0011A4:
    push 0s
0x0011A8:
    if !pop goto 0x0011D0
0x0011AC:
    self.intense = (+ self.intense 0.01d)
    goto 0x001204
0x0011D0:
    if !(> self.intense 0s) goto 0x001204
0x0011E4:
    self.intense = (- self.intense 0.1d)
0x001204:
    stog.view_xview[0s] = (+ self.xx (* (sin[]:int32 (/ self.siner 1.3d)) self.intense))
    stog.view_yview[0s] = (+ self.yy (* (sin[]:int32 (/ self.siner 0.9d)) self.intense))
0x001294:
    if !(== self.con 13s) goto 0x001318
0x0012A8:
    stog.view_xview[0s] = self.xx
    stog.view_yview[0s] = self.yy
    self.rect = 2s
    self.con = 14s
    call (snd_play[]:int32 (var 28s))
    stog.alarm[4s] = 11s
0x001318:
    if !(== self.con 15s) goto 0x001390
0x00132C:
    stog.flag[432s] = 1s
    global.facing = 0s
    call (snd_play[]:int32 (var 106s))
    global.interact = 0s
    self.con = 0s
    call (scr_tempsave[]:int32 )
    self.myinteract = 0s
0x001390:
    if !(== self.rect 1s) goto 0x0014E8
0x0013A4:
    if !(< self.rectaur 20s) goto 0x0013D0
0x0013B8:
    self.rectaur = (+ self.rectaur 2s)
0x0013D0:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (+ 140s self.rectaur) (var 180s) (var 140s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (- 180s self.rectaur) (var 180s) (var 180s))
    if !(== self.room 261s) goto 0x0014E8
0x001470:
    call (draw_rectangle[]:int32 (var 0s) (+ 120s self.rectaur) (var 100s) (var 120s) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (- 260s self.rectaur) (var 100s) (var 160s) (var 0s))
0x0014E8:
    if !(== self.rect 2s) goto 0x0015B4
0x0014FC:
    if !(> self.rectaur 0s) goto 0x001528
0x001510:
    self.rectaur = (- self.rectaur 2s)
0x001528:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (+ 140s self.rectaur) (var 180s) (var 140s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (- 180s self.rectaur) (var 180s) (var 180s))
0x0015B4:
    if !(== self.con 25s) goto 0x00162C
0x0015C8:
    call (caster_free[]:int32 self.elev)
    stog.view_xview[0s] = self.xx
    stog.view_yview[0s] = self.yy
    self.con = 26s
    stog.alarm[4s] = 45s
0x00162C:
    if !(== self.con 27s) goto 0x001670
0x001640:
    call (instance_create[]:int32 (var 1565s) (var 0s) (var 0s))
    self.con = 28s
0x001670:
    exit
