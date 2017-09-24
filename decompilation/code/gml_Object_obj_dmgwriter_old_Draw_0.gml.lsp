0x000000:
    call (draw_set_color[]:int32 (var 0s))
    if (< self.dmg 20s) goto 0x0000DC
0x000028:
    if (== self.dmg 11s) goto 0x0000DC
0x00003C:
    if (== self.dmg 21s) goto 0x0000DC
0x000050:
    if (== self.dmg 31s) goto 0x0000DC
0x000064:
    if (== self.dmg 41s) goto 0x0000DC
0x000078:
    if (== self.dmg 51s) goto 0x0000DC
0x00008C:
    if (== self.dmg 61s) goto 0x0000DC
0x0000A0:
    if (== self.dmg 71s) goto 0x0000DC
0x0000B4:
    if (== self.dmg 81s) goto 0x0000DC
0x0000C8:
    push (== self.dmg 91s)
    goto 0x0000E0
0x0000DC:
    push 1s
0x0000E0:
    if !pop goto 0x00012C
0x0000E4:
    call (draw_rectangle[]:int32 (var 0s) self.y (+ self.x 48s) (- self.y 24s) self.x)
    goto 0x000170
0x00012C:
    call (draw_rectangle[]:int32 (var 0s) self.y (+ self.x 64s) (- self.y 24s) self.x)
0x000170:
    call (draw_set_font[]:int32 (var 6s))
    if (== self.i 0s) goto 0x0001AC
0x000198:
    push (== self.i 1s)
    goto 0x0001B0
0x0001AC:
    push 1s
0x0001B0:
    if !pop goto 0x0001C8
0x0001B4:
    call (draw_set_color[]:int32 (var 255s))
0x0001C8:
    if !(> self.dmg 0s) goto 0x000304
0x0001DC:
    call (draw_text[]:int32 self.dmg (- self.y 24s) self.x)
    call (draw_set_color[]:int32 (var 4210752))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.ystart 20s) self.x (+ -5s (* (int32 global.mytarget):monstermaxhp self.stretchfactor)) (+ self.ystart 8s) self.x)
    call (draw_set_color[]:int32 (var 65280))
    call (draw_rectangle[]:int32 (var 0s) (+ self.ystart 20s) (+ self.x (* self.apparenthp self.stretchfactor)) (+ self.ystart 8s) self.x)
    goto 0x00034C
0x000304:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "MISS") (- self.y 24s) self.x)
0x00034C:
    if !(> self.y self.ystart) goto 0x00038C
0x000364:
    self.y = self.ystart
    self.vspeed = 0s
    self.gravity = 0s
0x00038C:
    exit
