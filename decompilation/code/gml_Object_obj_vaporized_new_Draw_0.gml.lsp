0x000000:
    self.dn = 1s
    self.ht_a = (- self.sprite_height (* self.line 2s))
    self.ht_b = (+ self.y (* self.line 2s))
    self.ht_c = (* self.line 2s)
    if !(== self.dn 1s) goto 0x0000F0
0x000080:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) self.image_yscale self.image_xscale self.ht_b self.x self.ht_a self.wd self.ht_c (var 0s) self.image_index self.sprite_index)
0x0000F0:
    if !(== self.finishedreading 0s) goto 0x000524
0x000104:
    if (<= 4s 0) goto 0x000520
0x00011C:
    push 4s
    self.ww = 0s
    self.mychar = (string[]:int32 (var "0"))
    if !(!= self.mychar "}") goto 0x000174
0x00015C:
    push (!= self.mychar "~")
    goto 0x000178
0x000174:
    push 0s
0x000178:
    if !pop goto 0x00048C
0x00017C:
    self.mychar = (string_char_at[]:int32 (+ self.myread 1s) self.mydata)
    call (draw_set_color[]:int32 (var 0s))
    if !(>= (ord[]:int32 self.mychar) 84s) goto 0x0001F0
0x0001D4:
    push (<= (ord[]:int32 self.mychar) 121s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x000260
0x0001F8:
    self.i = 0s
    if !(< self.i (- (ord[]:int32 self.mychar) 85s)) goto 0x000260
0x00022C:
    self.ww = (+ self.ww 2s)
    self.i = (+ self.i 1s)
    goto 0x000204
0x000260:
    call (draw_set_color[]:int32 (var 16777215))
    if !(>= (ord[]:int32 self.mychar) 39s) goto 0x0002B0
0x000294:
    push (<= (ord[]:int32 self.mychar) 82s)
    goto 0x0002B4
0x0002B0:
    push 0s
0x0002B4:
    if !pop goto 0x000470
0x0002B8:
    if !(> self.wd 120s) goto 0x0002E0
0x0002CC:
    push (== self.spec 0s)
    goto 0x0002E4
0x0002E0:
    push 0s
0x0002E4:
    if !pop goto 0x0003BC
0x0002E8:
    self.blk = (instance_create[]:int32 (var 191s) (+ self.y (* self.line 2s)) (+ self.x self.ww))
    push (- (ord[]:int32 self.mychar) 40s)
    stog.image_xscale* = (int32 self.blk)
    pushenv (int32 self.blk) 0x000380
0x00036C:
    call (event_user[]:int32 (var 0s))
0x000380:
    popenv 0x00036C
0x000384:
    self.ww = (+ self.ww (* (- (ord[]:int32 self.mychar) 40s) 2s))
    goto 0x000470
0x0003BC:
    self.i = 0s
    if !(< self.i (- (ord[]:int32 self.mychar) 40s)) goto 0x000470
0x0003F0:
    call (instance_create[]:int32 (var 191s) (+ (+ self.y (* self.line 2s)) 2s) (+ self.x self.ww))
    self.ww = (+ self.ww 2s)
    self.i = (+ self.i 1s)
    goto 0x0003C8
0x000470:
    self.myread = (+ self.myread 1s)
    goto 0x000144
0x00048C:
    self.ww = 0s
    self.line = (+ self.line 1s)
    if !(== self.mychar "~") goto 0x0004E8
0x0004C8:
    self.finishedreading = 1s
    call (instance_destroy[]:int32 )
    exit
    goto 0x000508
0x0004E8:
    stog.alarm[0s] = (+ 1s self.myvapor)
0x000508:
    if (bool (- pop 1)) goto 0x00011C
0x000520:
    push (- pop 1)
    pop
0x000524:
    exit
