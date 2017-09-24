0x000000:
    self.buffer = (+ self.buffer 1s)
    global.interact = 1s
    if !(> self.buffer 3s) goto 0x000A58
0x000038:
    self.boxno = 300s
    if !(== self.boxtype 1s) goto 0x000064
0x000058:
    self.boxno = 312s
0x000064:
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (+ (int32 self.view_current):view_yview 6s)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ 226s self.yy) (+ 312s self.xx) (+ 2s self.yy) (+ 8s self.xx))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ 223s self.yy) (+ 309s self.xx) (+ 5s self.yy) (+ 11s self.xx))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (scr_itemname[]:int32 )
    self.i = 0s
    if !(< self.i 8s) goto 0x000310
0x0001D8:
    call (draw_set_color[]:int32 (var 16777215))
    push -5s
    call (draw_text[]:int32 (int32 self.i):itemname (+ (+ 30s self.yy) (* self.i 16s)) (+ 40s self.xx))
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x0002F4
0x00026C:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_line[]:int32 (+ (+ 40s self.yy) (* self.i 16s)) (+ self.xx 140s) (+ (+ 40s self.yy) (* self.i 16s)) (+ 45s self.xx))
0x0002F4:
    self.i = (+ self.i 1s)
    goto 0x0001C4
0x000310:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "INVENTORY") (+ self.yy 9s) (+ 50s self.xx))
    call (draw_text[]:int32 (var "BOX") (+ self.yy 9s) (+ 216s self.xx))
    call (scr_storagename[]:int32 self.boxno)
    self.i = 0s
    if !(< self.i 10s) goto 0x000510
0x0003CC:
    call (draw_set_color[]:int32 (var 16777215))
    push -5s
    call (draw_text[]:int32 (int32 self.i):itemname (+ (+ 30s self.yy) (* self.i 16s)) (+ 186s self.xx))
    push -5s
    if !(== (int32 (+ self.boxno self.i)):flag 0s) goto 0x0004F4
0x00046C:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_line[]:int32 (+ (+ 40s self.yy) (* self.i 16s)) (+ self.xx 260s) (+ (+ 40s self.yy) (* self.i 16s)) (+ 191s self.xx))
0x0004F4:
    self.i = (+ self.i 1s)
    goto 0x0003B8
0x000510:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line[]:int32 (+ self.yy 190s) (+ self.xx 156s) (+ self.yy 40s) (+ self.xx 156s))
    call (draw_line[]:int32 (+ self.yy 190s) (+ self.xx 157s) (+ self.yy 40s) (+ self.xx 157s))
    call (draw_text[]:int32 (var "Press [X] to Finish") (+ self.yy 197s) (+ self.xx 100s))
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000640
0x000610:
    if !(!= self.column 1s) goto 0x000640
0x000624:
    self.column = 1s
    self.c1y = self.c0y
0x000640:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0006A8
0x000658:
    if !(!= self.column 0s) goto 0x0006A8
0x00066C:
    self.column = 0s
    self.c0y = self.c1y
    if !(> self.c0y 7s) goto 0x0006A8
0x00069C:
    self.c0y = 7s
0x0006A8:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000750
0x0006C0:
    if !(== self.column 0s) goto 0x0006E8
0x0006D4:
    push (> self.c0y 0s)
    goto 0x0006EC
0x0006E8:
    push 0s
0x0006EC:
    if !pop goto 0x000708
0x0006F0:
    self.c0y = (- self.c0y 1s)
0x000708:
    if !(== self.column 1s) goto 0x000730
0x00071C:
    push (> self.c1y 0s)
    goto 0x000734
0x000730:
    push 0s
0x000734:
    if !pop goto 0x000750
0x000738:
    self.c1y = (- self.c1y 1s)
0x000750:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0007F8
0x000768:
    if !(== self.column 0s) goto 0x000790
0x00077C:
    push (< self.c0y 7s)
    goto 0x000794
0x000790:
    push 0s
0x000794:
    if !pop goto 0x0007B0
0x000798:
    self.c0y = (+ self.c0y 1s)
0x0007B0:
    if !(== self.column 1s) goto 0x0007D8
0x0007C4:
    push (< self.c1y 9s)
    goto 0x0007DC
0x0007D8:
    push 0s
0x0007DC:
    if !pop goto 0x0007F8
0x0007E0:
    self.c1y = (+ self.c1y 1s)
0x0007F8:
    if !(== self.column 0s) goto 0x00085C
0x00080C:
    call (draw_sprite[]:int32 (+ (+ 35s self.yy) (* 16s self.c0y)) (+ 24s self.xx) (var 0s) (var 49s))
0x00085C:
    if !(== self.column 1s) goto 0x0008C0
0x000870:
    call (draw_sprite[]:int32 (+ (+ 35s self.yy) (* 16s self.c1y)) (+ 172s self.xx) (var 0s) (var 49s))
0x0008C0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0008EC
0x0008D8:
    push (> self.buffer 6s)
    goto 0x0008F0
0x0008EC:
    push 0s
0x0008F0:
    if !pop goto 0x0009F8
0x0008F4:
    if !(== self.column 0s) goto 0x000974
0x000908:
    push self.boxno
    call (script_execute[]:int32 -5s (int32 self.c0y):item (var 85s))
    if !(== self.noroom 0s) goto 0x000974
0x000950:
    call (script_execute[]:int32 (var 0s) self.c0y (var 66s))
0x000974:
    if !(== self.column 1s) goto 0x0009F8
0x000988:
    push -5s
    call (script_execute[]:int32 (int32 (+ self.c1y self.boxno)):flag (var 84s))
    if !(== self.noroom 0s) goto 0x0009F8
0x0009D4:
    call (scr_storageshift[]:int32 self.boxno (var 0s) self.c1y)
0x0009F8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 16s))) goto 0x000A58
0x000A10:
    global.interact = 0s
    if !(== self.spec 1s) goto 0x000A3C
0x000A30:
    global.menuno = 0s
0x000A3C:
    [obj_overworldcontroller].buffer = -2s
    call (instance_destroy[]:int32 )
    exit
0x000A58:
    exit
