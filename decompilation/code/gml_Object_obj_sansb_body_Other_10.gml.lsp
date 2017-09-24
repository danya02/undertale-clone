0x000000:
    pushenv 519s 0x000014
0x000008:
    self.timer_on = 1s
0x000014:
    popenv 0x000008
0x000018:
    if !(== self.a_type 0s) goto 0x000164
0x00002C:
    global.turntimer = 200s
    self.i = 0s
    if !(< self.i 8s) goto 0x000164
0x000058:
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 20s)) (var 6s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 20s)) (var -6s) (var 20s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 20s)) (var 6s) (var 40s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 20s)) (var -6s) (var 40s))
    self.i = (+ self.i 1s)
    goto 0x000044
0x000164:
    if !(== self.a_type 1s) goto 0x0003F4
0x000178:
    global.turntimer = 190s
    if !(== self.hell 1s) goto 0x0002C8
0x000198:
    self.i = 0s
    if !(< self.i 8s) goto 0x0002C4
0x0001B8:
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 18s)) (var 8s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 18s)) (var -8s) (var 20s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 18s)) (var 8s) (var 40s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 18s)) (var -8s) (var 40s))
    self.i = (+ self.i 1s)
    goto 0x0001A4
0x0002C4:
    goto 0x0003F4
0x0002C8:
    self.i = 0s
    if !(< self.i 8s) goto 0x0003F4
0x0002E8:
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 19s)) (var 7s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 19s)) (var -7s) (var 20s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 19s)) (var 7s) (var 40s))
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 19s)) (var -7s) (var 40s))
    self.i = (+ self.i 1s)
    goto 0x0002D4
0x0003F4:
    if !(== self.a_type 2s) goto 0x0006FC
0x000408:
    global.turntimer = 240s
    self.value = 0s
    self.i = 0s
    if !(< self.i 5s) goto 0x0006FC
0x000440:
    self.ht = (choose[]:int32 (var 60s) (var 40s) (var 30s) (var 20s))
    self.xx = 0s
    if !(> self.i 0s) goto 0x0004B8
0x000490:
    self.xx = (choose[]:int32 (var 2s) (var 0s) (var -2s))
0x0004B8:
    if !(== self.ht 60s) goto 0x0004D8
0x0004CC:
    self.xx = 0s
0x0004D8:
    if !(== self.ht 40s) goto 0x00050C
0x0004EC:
    self.xx = (* self.xx 0.5d)
0x00050C:
    call (scr_sbo[]:int32 (var 0s) (+ (+ 40s (* self.i 25s)) self.value) (+ 7s self.xx) self.ht)
    call (scr_sbo[]:int32 (var 0s) (+ (+ 40s (* self.i 25s)) self.value) (+ -7s self.xx) self.ht)
    call (scr_sbo[]:int32 (var 2s) (+ (+ 40s (* self.i 25s)) self.value) (+ 7s self.xx) (+ self.ht 24s))
    call (scr_sbo[]:int32 (var 2s) (+ (+ 40s (* self.i 25s)) self.value) (+ -7s self.xx) (+ self.ht 24s))
    if !(== self.ht 30s) goto 0x000688
0x000670:
    self.value = (+ self.value 5s)
0x000688:
    if !(== self.ht 40s) goto 0x0006B4
0x00069C:
    self.value = (+ self.value 10s)
0x0006B4:
    if !(== self.ht 60s) goto 0x0006E0
0x0006C8:
    self.value = (+ self.value 20s)
0x0006E0:
    self.i = (+ self.i 1s)
    goto 0x00042C
0x0006FC:
    if !(== self.a_type 3s) goto 0x000B54
0x000710:
    global.turntimer = 190s
    if !(== self.hell 1s) goto 0x000944
0x000730:
    call (scr_sbo[]:int32 (var 1s) (var 25s) (var -12s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 32s) (var -12s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 47s) (var -12s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 54s) (var -12s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 69s) (var -12s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 76s) (var -12s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (var 105s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 117s) (var 10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 127s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 139s) (var 10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 149s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 161s) (var 10s) (var 100s))
    goto 0x000B54
0x000944:
    call (scr_sbo[]:int32 (var 1s) (var 25s) (var -10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 32s) (var -10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 47s) (var -10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 54s) (var -10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 69s) (var -10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 76s) (var -10s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (var 105s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 117s) (var 10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 127s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 139s) (var 10s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 149s) (var 10s) (var 20s))
    call (scr_sbo[]:int32 (var 1s) (var 161s) (var 10s) (var 100s))
0x000B54:
    if !(== self.a_type 5s) goto 0x000C28
0x000B68:
    global.turntimer = 230s
    self.i = 0s
    if !(< self.i 8s) goto 0x000C28
0x000B94:
    call (scr_sbo[]:int32 (var 0s) (+ 65s (* self.i 19s)) (var 4s) (var 20s))
    call (scr_sbo[]:int32 (var 2s) (+ 65s (* self.i 19s)) (var -4s) (var 28s))
    self.i = (+ self.i 1s)
    goto 0x000B80
0x000C28:
    if !(== self.a_type 6s) goto 0x000DA8
0x000C3C:
    global.turntimer = 250s
    call (scr_bwall[]:int32 (var 41s) (var 60s) (var 4s) (var 30s))
    call (scr_hplat[]:int32 (var 30s) (var 70s) (var 4s) (var 40s))
    call (scr_hplat[]:int32 (var 30s) (var 120s) (var 5s) (var 40s))
    call (scr_hplat[]:int32 (var 30s) (var 160s) (var 6s) (var 40s))
    call (scr_sbo[]:int32 (var 2s) (var 160s) (var 7s) (var 90s))
    call (scr_sbo[]:int32 (var 2s) (var 162s) (var 7s) (var 90s))
    call (scr_sbo[]:int32 (var 2s) (var 164s) (var 7s) (var 90s))
    call (scr_sbo[]:int32 (var 2s) (var 222s) (var 9s) (var 40s))
0x000DA8:
    if !(== self.a_type 7s) goto 0x001030
0x000DBC:
    global.turntimer = 290s
    call (scr_bwall[]:int32 (var 58s) (var 60s) (var -4s) (var 30s))
    call (scr_hplat[]:int32 (var 25s) (var 70s) (var -5s) (var 40s))
    call (scr_sbo[]:int32 (var 0s) (var 90s) (var -5s) (var 70s))
    call (scr_hplat[]:int32 (var 25s) (var 95s) (var -5s) (var 90s))
    call (scr_hplat[]:int32 (var 25s) (var 110s) (var -5s) (var 40s))
    call (scr_hplat[]:int32 (var 25s) (var 150s) (var -5s) (var 60s))
    call (scr_sbo[]:int32 (var 2s) (var 148s) (var -5s) (var 90s))
    call (scr_hplat[]:int32 (var 25s) (var 170s) (var -5s) (var 50s))
    call (scr_sbo[]:int32 (var 2s) (var 168s) (var -5s) (var 80s))
    call (scr_hplat[]:int32 (var 25s) (var 190s) (var -5s) (var 70s))
    call (scr_sbo[]:int32 (var 2s) (var 188s) (var -5s) (var 100s))
    call (scr_hplat[]:int32 (var 15s) (var 230s) (var -2s) (var 90s))
    call (scr_sbo[]:int32 (var 0s) (var 240s) (var -8s) (var 110s))
    call (scr_sbo[]:int32 (var 2s) (var 260s) (var 3s) (var 40s))
0x001030:
    if !(== self.a_type 8s) goto 0x001090
0x001044:
    global.turntimer = 240s
    self.plat = (instance_create[]:int32 (var 514s) (var 0s) (var 0s))
    push 1s
    stog.type* = (int32 self.plat)
0x001090:
    if !(== self.a_type 9s) goto 0x001134
0x0010A4:
    push -5s
    stog.idealborder[(- 2s:idealborder 200s)] = 2s
    push -5s
    stog.idealborder[(+ 0s:idealborder 60s)] = 0s
    push -5s
    stog.idealborder[(- 1s:idealborder 60s)] = 1s
    call (instance_create[]:int32 (var 513s) (var 0s) (var 0s))
0x001134:
    if !(== self.a_type 10s) goto 0x001C68
0x001148:
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 200s)
    stog.idealborder[0s] = 220s
    stog.idealborder[1s] = 420s
    if !(== self.hell 1s) goto 0x0016A4
0x0011C4:
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -40s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 100s) (var 720s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -8s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -110s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 730s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -190s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 5s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 95s) (var 870s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -8s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -310s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 900s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -6s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -700s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 95s) (var 1290s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -650s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 1180s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.vspeed* = (int32 self.b1)
0x0016A4:
    if !(== self.hell 0s) goto 0x001C68
0x0016B8:
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -40s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 100s) (var 720s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -8s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -110s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 760s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -190s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 5s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 95s) (var 870s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -8s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -310s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 900s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -6s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -660s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 6s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 95s) (var 1290s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -650s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 1180s) -5s (+ 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -960s) -5s (- 0s:idealborder 90s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 1510s) -5s (+ 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.vspeed* = (int32 self.b1)
0x001C68:
    if !(== self.a_type 11s) goto 0x002024
0x001C7C:
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 200s)
    stog.idealborder[0s] = 270s
    stog.idealborder[1s] = 470s
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -40s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 6s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 100s) (var 770s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -250s) -5s (+ 0s:idealborder 100s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 630s) -5s (- 0s:idealborder 100s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -6s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 95s) (var -190s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 6s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (+ 2s:idealborder 100s) (var 1120s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var -500s) -5s (+ 0s:idealborder 100s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 (var 880s) -5s (- 0s:idealborder 100s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -6s
    stog.vspeed* = (int32 self.b1)
0x002024:
    if !(== self.a_type 12s) goto 0x0020EC
0x002038:
    global.turntimer = 240s
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 200s)
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    self.gb = (instance_create[]:int32 (var 518s) (var 0s) (var 0s))
    push 1s
    stog.type* = (int32 self.gb)
0x0020EC:
    if !(== self.a_type 13s) goto 0x0021B4
0x002100:
    global.turntimer = 240s
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 200s)
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    self.gb = (instance_create[]:int32 (var 518s) (var 0s) (var 0s))
    push 2s
    stog.type* = (int32 self.gb)
0x0021B4:
    if !(== self.a_type 14s) goto 0x0021D4
0x0021C8:
    self.fac = 1s
0x0021D4:
    if !(== self.a_type 15s) goto 0x002234
0x0021E8:
    global.turntimer = 250s
    self.dplat = (instance_create[]:int32 (var 514s) (var 0s) (var 0s))
    push 2s
    stog.type* = (int32 self.dplat)
0x002234:
    if !(== self.a_type 16s) goto 0x002294
0x002248:
    global.turntimer = 240s
    self.dplat = (instance_create[]:int32 (var 514s) (var 0s) (var 0s))
    push 3s
    stog.type* = (int32 self.dplat)
0x002294:
    if !(== self.a_type 17s) goto 0x0025F4
0x0022A8:
    global.turntimer = 220s
    call (scr_bwall[]:int32 (var 50s) (var 3s) (var 2s) (var 20s))
    call (scr_bwall[]:int32 (var 20s) (var -5s) (var 2s) (var 20s))
    push -5s
    [obj_heart].y = (- 3s:idealborder 70s)
    [obj_heart].vspeed = 1s
    call (scr_hplat[]:int32 (var 20s) (var 0s) (var 0s) (var 50s))
    push 1s
    stog.jud* = (int32 self.bone)
    stog.x* = (- (int32 self.bone):x 150s)
    [obj_heart].x = (- 743.x 150s)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 40s) -5s (- 1s:idealborder 260s))
    push -4s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 125s) -5s (- 1s:idealborder 260s))
    push -4s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 2s:idealborder -5s (- 1s:idealborder 180s))
    push 5s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 95s) -5s (- 1s:idealborder 180s))
    push 5s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 20s) -5s (- 1s:idealborder 100s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 105s) -5s (- 1s:idealborder 100s))
    push -3s
    stog.vspeed* = (int32 self.lb)
0x0025F4:
    push (int32 self.bone)
    if !(== self.a_type 18s) goto 0x002A14
0x002608:
    global.turntimer = 220s
    call (scr_bwall[]:int32 (var 50s) (var 3s) (var 2s) (var 20s))
    call (scr_bwall[]:int32 (var 20s) (var -5s) (var 2s) (var 20s))
    push -5s
    [obj_heart].y = (- 3s:idealborder 70s)
    [obj_heart].vspeed = 1s
    call (scr_hplat[]:int32 (var 15s) (var 0s) (var 0s) (var 50s))
    push 1s
    stog.jud* = (int32 self.bone)
    stog.x* = (- (int32 self.bone):x 150s)
    [obj_heart].x = (- 743.x 150s)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 40s) -5s (- 1s:idealborder 260s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 105s) -5s (- 1s:idealborder 260s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 170s) -5s (- 1s:idealborder 260s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 2s:idealborder -5s (- 1s:idealborder 180s))
    push 4s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 90s) -5s (- 1s:idealborder 180s))
    push 4s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 40s) -5s (- 1s:idealborder 100s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 105s) -5s (- 1s:idealborder 100s))
    push -3s
    stog.vspeed* = (int32 self.lb)
    push (var 503s)
    push -5s
    self.lb = (instance_create[]:int32 (+ 2s:idealborder 170s) -5s (- 1s:idealborder 100s))
    push -3s
    stog.vspeed* = (int32 self.lb)
0x002A14:
    push (int32 self.bone)
    if !(== self.a_type 19s) goto 0x002A64
0x002A28:
    self.test_timer = 0s
    self.test_timer_on = 1s
    self.lac = 4s
    pushenv 519s 0x002A60
0x002A54:
    self.timer_on = 0s
0x002A60:
    popenv 0x002A54
0x002A64:
    if !(== self.a_type 20s) goto 0x002B5C
0x002A78:
    [obj_heart].speed = 0s
    pushenv 519s 0x002A98
0x002A8C:
    self.timer_on = 0s
0x002A98:
    popenv 0x002A8C
0x002A9C:
    stog.idealborder[0s] = 270s
    stog.idealborder[1s] = 370s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 100s)
    push -5s
    [obj_heart].x = (+ 0s:idealborder 42s)
    push -5s
    [obj_heart].y = (+ 2s:idealborder 42s)
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    self.mk_c_timer = 0s
    self.mk_c = 1s
0x002B5C:
    if !(== self.a_type 21s) goto 0x002F64
0x002B70:
    global.turntimer = 210s
    self.vtotal = 0s
    if !(< self.vtotal 150s) goto 0x002F64
0x002B9C:
    self.ht = (choose[]:int32 (var 60s) (var 40s) (var 30s) (var 20s))
    self.xx = 0s
    self.down = 0s
    if !(> self.i 0s) goto 0x002C20
0x002BF8:
    self.xx = (choose[]:int32 (var 2s) (var 0s) (var -2s))
0x002C20:
    if !(== self.ht 60s) goto 0x002C4C
0x002C34:
    self.xx = 0s
    self.down = 1s
0x002C4C:
    if !(== self.ht 40s) goto 0x002C6C
0x002C60:
    self.xx = 0s
0x002C6C:
    if !(> self.i 0s) goto 0x002D30
0x002C80:
    if !(== self.ht 20s) goto 0x002CAC
0x002C94:
    self.vtotal = (+ self.vtotal 7s)
0x002CAC:
    if !(== self.ht 30s) goto 0x002CD8
0x002CC0:
    self.vtotal = (+ self.vtotal 9s)
0x002CD8:
    if !(== self.ht 40s) goto 0x002D04
0x002CEC:
    self.vtotal = (+ self.vtotal 16s)
0x002D04:
    if !(== self.ht 60s) goto 0x002D30
0x002D18:
    self.vtotal = (+ self.vtotal 22s)
0x002D30:
    if !(== self.down 1s) goto 0x002D50
0x002D44:
    self.xx = -1s
0x002D50:
    call (scr_sbo[]:int32 (var 0s) (+ 32s self.vtotal) (+ 8s self.xx) self.ht)
    if !(== self.down 1s) goto 0x002DAC
0x002DA0:
    self.xx = 1s
0x002DAC:
    call (scr_sbo[]:int32 (var 0s) (+ 32s self.vtotal) (+ -8s self.xx) self.ht)
    if !(== self.down 1s) goto 0x002E08
0x002DFC:
    self.xx = -1s
0x002E08:
    call (scr_sbo[]:int32 (var 2s) (+ 32s self.vtotal) (+ 8s self.xx) (+ self.ht 24s))
    if !(== self.down 1s) goto 0x002E6C
0x002E60:
    self.xx = 1s
0x002E6C:
    call (scr_sbo[]:int32 (var 2s) (+ 32s self.vtotal) (+ -8s self.xx) (+ self.ht 24s))
    if !(== self.ht 20s) goto 0x002EDC
0x002EC4:
    self.vtotal = (+ self.vtotal 12s)
0x002EDC:
    if !(== self.ht 30s) goto 0x002F08
0x002EF0:
    self.vtotal = (+ self.vtotal 13s)
0x002F08:
    if !(== self.ht 40s) goto 0x002F34
0x002F1C:
    self.vtotal = (+ self.vtotal 16s)
0x002F34:
    if !(== self.ht 60s) goto 0x002F60
0x002F48:
    self.vtotal = (+ self.vtotal 22s)
0x002F60:
    goto 0x002B88
0x002F64:
    if !(== self.a_type 22s) goto 0x0031A8
0x002F78:
    global.turntimer = 180s
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    [obj_heart].x = (+ 0s:idealborder 76s)
    push -5s
    [obj_heart].y = (+ 2s:idealborder 76s)
    self.i = 0s
    if !(< self.i 7s) goto 0x0031A8
0x00304C:
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (- (- 2s:idealborder 300s) (* self.i (- 216s (* self.i 3s)))) -5s (- 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 10s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (+ (+ 3s:idealborder 300s) (* self.i (- 216s (* self.i 3s)))) -5s (- 1s:idealborder 70s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -10s
    stog.vspeed* = (int32 self.b1)
    self.i = (+ self.i 1s)
    goto 0x003038
0x0031A8:
    if !(== self.a_type 23s) goto 0x0035B0
0x0031BC:
    global.turntimer = 210s
    self.vtotal = 0s
    if !(< self.vtotal 150s) goto 0x0035B0
0x0031E8:
    self.ht = (choose[]:int32 (var 60s) (var 40s) (var 30s) (var 20s))
    self.xx = 0s
    self.down = 0s
    if !(> self.i 0s) goto 0x00326C
0x003244:
    self.xx = (choose[]:int32 (var 2s) (var 0s) (var -2s))
0x00326C:
    if !(== self.ht 60s) goto 0x003298
0x003280:
    self.xx = 0s
    self.down = 1s
0x003298:
    if !(== self.ht 40s) goto 0x0032B8
0x0032AC:
    self.xx = 0s
0x0032B8:
    if !(> self.i 0s) goto 0x00337C
0x0032CC:
    if !(== self.ht 20s) goto 0x0032F8
0x0032E0:
    self.vtotal = (+ self.vtotal 9s)
0x0032F8:
    if !(== self.ht 30s) goto 0x003324
0x00330C:
    self.vtotal = (+ self.vtotal 11s)
0x003324:
    if !(== self.ht 40s) goto 0x003350
0x003338:
    self.vtotal = (+ self.vtotal 19s)
0x003350:
    if !(== self.ht 60s) goto 0x00337C
0x003364:
    self.vtotal = (+ self.vtotal 25s)
0x00337C:
    if !(== self.down 1s) goto 0x00339C
0x003390:
    self.xx = -1s
0x00339C:
    call (scr_sbo[]:int32 (var 0s) (+ 32s self.vtotal) (+ 8s self.xx) self.ht)
    if !(== self.down 1s) goto 0x0033F8
0x0033EC:
    self.xx = 1s
0x0033F8:
    call (scr_sbo[]:int32 (var 0s) (+ 32s self.vtotal) (+ -8s self.xx) self.ht)
    if !(== self.down 1s) goto 0x003454
0x003448:
    self.xx = -1s
0x003454:
    call (scr_sbo[]:int32 (var 2s) (+ 32s self.vtotal) (+ 8s self.xx) (+ self.ht 24s))
    if !(== self.down 1s) goto 0x0034B8
0x0034AC:
    self.xx = 1s
0x0034B8:
    call (scr_sbo[]:int32 (var 2s) (+ 32s self.vtotal) (+ -8s self.xx) (+ self.ht 24s))
    if !(== self.ht 20s) goto 0x003528
0x003510:
    self.vtotal = (+ self.vtotal 15s)
0x003528:
    if !(== self.ht 30s) goto 0x003554
0x00353C:
    self.vtotal = (+ self.vtotal 17s)
0x003554:
    if !(== self.ht 40s) goto 0x003580
0x003568:
    self.vtotal = (+ self.vtotal 19s)
0x003580:
    if !(== self.ht 60s) goto 0x0035AC
0x003594:
    self.vtotal = (+ self.vtotal 25s)
0x0035AC:
    goto 0x0031D4
0x0035B0:
    exit
