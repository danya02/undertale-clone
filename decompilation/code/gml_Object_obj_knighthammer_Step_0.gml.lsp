0x000000:
    if !(== self.go 1s) goto 0x0001C0
0x000014:
    if !(== self.side 0s) goto 0x000048
0x000028:
    push (> (+ self.y self.sprite_height) 400s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x0000F0
0x000050:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000A4
0x00006C:
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x0000A4:
    self.nowx = self.x
    self.nowy = self.y
    self.go = 2s
    self.vspeed = 0s
    stog.alarm[4s] = 5s
0x0000F0:
    if !(== self.side 1s) goto 0x000118
0x000104:
    push (< self.y 250s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x0001C0
0x000120:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000174
0x00013C:
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x000174:
    self.nowx = self.x
    self.nowy = self.y
    self.go = 2s
    self.vspeed = 0s
    stog.alarm[4s] = 5s
0x0001C0:
    if !(== self.go 2s) goto 0x00022C
0x0001D4:
    self.x = (+ (- self.nowx 2s) (random[]:int32 (var 4s)))
    self.y = (+ (- self.nowy 2s) (random[]:int32 (var 4s)))
0x00022C:
    if !(== self.go 3s) goto 0x0002C4
0x000240:
    if !(== self.side 0s) goto 0x000274
0x000254:
    push (< (+ self.y self.sprite_height) 250s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x000288
0x00027C:
    call (instance_destroy[]:int32 )
0x000288:
    if !(== self.side 1s) goto 0x0002B0
0x00029C:
    push (> self.y 400s)
    goto 0x0002B4
0x0002B0:
    push 0s
0x0002B4:
    if !pop goto 0x0002C4
0x0002B8:
    call (instance_destroy[]:int32 )
0x0002C4:
    self.hit = 0s
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000324
0x000318:
    self.hit = 1s
0x000324:
    if !(== self.image_index 0s) goto 0x00038C
0x000338:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (var 188s) (var 33s) (var 144s) (var 6s))) goto 0x00038C
0x000380:
    self.hit = 1s
0x00038C:
    if !(== self.image_index 1s) goto 0x0003F4
0x0003A0:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (var 52s) (var 33s) (var 6s) (var 6s))) goto 0x0003F4
0x0003E8:
    self.hit = 1s
0x0003F4:
    if !(== self.hit 1s) goto 0x00041C
0x000408:
    call (event_user[]:int32 (var 0s))
0x00041C:
    exit
