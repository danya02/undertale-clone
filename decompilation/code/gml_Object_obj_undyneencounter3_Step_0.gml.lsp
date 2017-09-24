0x000000:
    if !(== self.active 1s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x001B4C
0x000034:
    if !(== self.cn 0s) goto 0x00007C
0x000048:
    if !(== global.interact 0s) goto 0x00007C
0x00005C:
    push (> 1570.x (- self.x 20s))
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000424
0x000084:
    global.interact = 1s
    push 0s
    stog.image_alpha* = (int32 self.undyne)
    self.cn = 0.2d
    if !(bool (caster_is_playing[]:int32 global.currentsong)) goto 0x00011C
0x0000D4:
    self.ou = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.ou)
0x00011C:
    self.ar = (instance_create[]:int32 (var 1047s) (var 80s) (var 340s))
    push 30s
    push (int32 self.ar)
    stog.alarm[] = 5s
    push 260s
    push (int32 self.ar)
    stog.alarm[] = 6s
    self.ar = (instance_create[]:int32 (var 1047s) (var 60s) (var 240s))
    push 80s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 100s) (var 260s))
    push 130s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 60s) (var 300s))
    push 200s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 80s) (var 320s))
    push 203s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 80s) (var 240s))
    push 206s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 80s) (var 300s))
    push 209s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 80s) (var 260s))
    push 212s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 100s) (var 300s))
    push 215s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 60s) (var 320s))
    push 218s
    push (int32 self.ar)
    stog.alarm[] = 5s
    self.ar = (instance_create[]:int32 (var 1047s) (var 60s) (var 260s))
    push 221s
    push (int32 self.ar)
    stog.alarm[] = 5s
0x000424:
    if !(== self.cn 0.2d) goto 0x0005E8
0x000440:
    if !(== (instance_number[]:int32 (var 1047s)) 0s) goto 0x0005E8
0x00045C:
    self.cn = 0.3d
    stog.alarm[4s] = 20s
    call (instance_create[]:int32 (var 2s) (var 80s) (var 40s))
    call (instance_create[]:int32 (var 2s) (var 100s) (var 40s))
    call (instance_create[]:int32 (var 2s) (var 120s) (var 40s))
    self.yad = 0s
    if (<= 5s 0) goto 0x0005E4
0x000514:
    push 5s
    self.ar2 = (instance_create[]:int32 (var 1363s) (- 100s (* self.yad 6s)) (- 50s self.yad))
    push 1s
    stog.visible* = (int32 self.ar2)
    push 1571s
    stog.sprite_index* = (int32 self.ar2)
    push 3s
    stog.image_index* = (int32 self.ar2)
    push 0s
    stog.image_speed* = (int32 self.ar2)
    self.yad = (+ self.yad 2s)
    if (bool (- pop 1)) goto 0x000514
0x0005E4:
    push (- pop 1)
    pop
0x0005E8:
    if !(== self.cn 1.3d) goto 0x000610
0x000604:
    self.cn = 2s
0x000610:
    if !(== self.cn 2s) goto 0x000668
0x000624:
    call (caster_play[]:int32 (var 1s) (var 1s) self.ushock)
    self.cn = 3s
    stog.alarm[4s] = 30s
0x000668:
    if !(== self.cn 3s) goto 0x0006CC
0x00067C:
    if !(< (int32 self.undyne):image_alpha 1s) goto 0x0006CC
0x00069C:
    stog.image_alpha* = (+ (int32 self.undyne):image_alpha 0.05d)
0x0006CC:
    push (int32 self.undyne)
    if !(== self.cn 4s) goto 0x00074C
0x0006E0:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.usong)
    global.currentsong = self.usong
    global.interact = 0s
    [obj_mainchara].cutscene = 0s
    stog.flag[17s] = 1s
    self.cn = 5s
0x00074C:
    if !(== self.cn 5s) goto 0x0007B8
0x000760:
    push 4s
    stog.vhspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 6s
    stog.alarm[4s] = 6s
0x0007B8:
    if !(== self.cn 7s) goto 0x000848
0x0007CC:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    self.sp = (instance_create[]:int32 (var 1046s) (int32 self.undyne):y (int32 self.undyne):x)
    self.cn = 8s
0x000848:
    if !(>= self.cn 8s) goto 0x000870
0x00085C:
    push (< self.cn 9s)
    goto 0x000874
0x000870:
    push 0s
0x000874:
    if !pop goto 0x001540
0x000878:
    if !(< (int32 self.stk):image_alpha 1s) goto 0x0008C8
0x000898:
    stog.image_alpha* = (+ (int32 self.stk):image_alpha 0.1d)
0x0008C8:
    push (int32 self.stk)
    if !(== self.stopper 1s) goto 0x0008FC
0x0008DC:
    stog.alarm[4s] = -1s
    self.stopper = 0s
0x0008FC:
    if !(== self.cn 8s) goto 0x000ABC
0x000910:
    if !(> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x00095C
0x00093C:
    push (< (int32 self.undyne):xhome 1110s)
    goto 0x000960
0x00095C:
    push 0s
0x000960:
    if !pop goto 0x0009BC
0x000964:
    push 3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9s
0x0009BC:
    if !(< 1570.x (- (int32 self.undyne):x 40s)) goto 0x000A40
0x0009E8:
    push -3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9s
0x000A40:
    if !(>= (int32 self.undyne):xhome 1110s) goto 0x000ABC
0x000A60:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    push 161s
    stog.yhome* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 8.1d
0x000ABC:
    if !(== self.cn 8.1d) goto 0x000D5C
0x000AD8:
    if !(> 1570.y (+ (int32 self.undyne):y 60s)) goto 0x000B24
0x000B04:
    push (< (int32 self.undyne):yhome 550s)
    goto 0x000B28
0x000B24:
    push 0s
0x000B28:
    if !pop goto 0x000B78
0x000B2C:
    push 3s
    stog.vhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 10s
0x000B78:
    if !(< 1570.y (- (int32 self.undyne):y 60s)) goto 0x000BC4
0x000BA4:
    push (> (int32 self.undyne):yhome 160s)
    goto 0x000BC8
0x000BC4:
    push 0s
0x000BC8:
    if !pop goto 0x000C18
0x000BCC:
    push -3s
    stog.vhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 10s
0x000C18:
    if !(<= (int32 self.undyne):yhome 160s) goto 0x000CCC
0x000C38:
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    if !(< 1570.x (- (int32 self.undyne):x 60s)) goto 0x000CCC
0x000C94:
    self.cn = 8s
    push 1109s
    stog.xhome* = (int32 self.undyne)
    stog.alarm[4s] = -1s
0x000CCC:
    if !(>= (int32 self.undyne):yhome 550s) goto 0x000D5C
0x000CEC:
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 1109s
    stog.xhome* = (int32 self.undyne)
    self.cn = 8.2d
    stog.alarm[4s] = -1s
0x000D5C:
    if !(== self.cn 8.2d) goto 0x000FD8
0x000D78:
    if !(> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x000DC4
0x000DA4:
    push (< (int32 self.undyne):xhome 1110s)
    goto 0x000DC8
0x000DC4:
    push 0s
0x000DC8:
    if !pop goto 0x000E2C
0x000DCC:
    push 3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9.2d
0x000E2C:
    if !(< 1570.x (- (int32 self.undyne):x 20s)) goto 0x000E78
0x000E58:
    push (> (int32 self.undyne):xhome 800s)
    goto 0x000E7C
0x000E78:
    push 0s
0x000E7C:
    if !pop goto 0x000EE0
0x000E80:
    push -3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9.2d
0x000EE0:
    if !(<= (int32 self.undyne):xhome 800s) goto 0x000F5C
0x000F00:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 8.3d
    push 551s
    stog.yhome* = (int32 self.undyne)
0x000F5C:
    if !(>= (int32 self.undyne):xhome 1110s) goto 0x000FD8
0x000F7C:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 549s
    stog.yhome* = (int32 self.undyne)
    self.cn = 8.1d
0x000FD8:
    if !(== self.cn 8.3d) goto 0x0012C4
0x000FF4:
    if !(> 1570.y (+ (int32 self.undyne):y 60s)) goto 0x001040
0x001020:
    push (> (int32 self.undyne):yhome 550s)
    goto 0x001044
0x001040:
    push 0s
0x001044:
    if !pop goto 0x001094
0x001048:
    push 3s
    stog.vhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 10s
0x001094:
    if !(< 1570.y (- (int32 self.undyne):y 10s)) goto 0x0010E0
0x0010C0:
    push (< (int32 self.undyne):yhome 800s)
    goto 0x0010E4
0x0010E0:
    push 0s
0x0010E4:
    if !pop goto 0x001134
0x0010E8:
    push -3s
    stog.vhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 10s
0x001134:
    if !(<= (int32 self.undyne):yhome 550s) goto 0x001208
0x001154:
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    if !(> 1570.x (+ (int32 self.undyne):x 60s)) goto 0x001208
0x0011B0:
    self.cn = 8.2d
    push 551s
    stog.yhome* = (int32 self.undyne)
    push 801s
    stog.xhome* = (int32 self.undyne)
    stog.alarm[4s] = -1s
0x001208:
    if !(>= (int32 self.undyne):yhome 800s) goto 0x0012C4
0x001228:
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    if !(> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x0012C4
0x001284:
    push 801s
    stog.xhome* = (int32 self.undyne)
    self.cn = 8.4d
    stog.alarm[4s] = -1s
0x0012C4:
    if !(== self.cn 8.4d) goto 0x001540
0x0012E0:
    if !(> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x00132C
0x00130C:
    push (< (int32 self.undyne):xhome 1110s)
    goto 0x001330
0x00132C:
    push 0s
0x001330:
    if !pop goto 0x001394
0x001334:
    push 3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9.4d
0x001394:
    if !(< 1570.x (- (int32 self.undyne):x 20s)) goto 0x0013E0
0x0013C0:
    push (> (int32 self.undyne):xhome 800s)
    goto 0x0013E4
0x0013E0:
    push 0s
0x0013E4:
    if !pop goto 0x001448
0x0013E8:
    push -3s
    stog.hhspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[5s] = 15s
    self.cn = 9.4d
0x001448:
    if !(<= (int32 self.undyne):xhome 800s) goto 0x0014F0
0x001468:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    if !(< 1570.y (- (int32 self.undyne):y 10s)) goto 0x0014F0
0x0014C4:
    push 799s
    stog.yhome* = (int32 self.undyne)
    self.cn = 8.3d
0x0014F0:
    if !(>= (int32 self.undyne):xhome 1110s) goto 0x001540
0x001510:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
0x001540:
    if !(== self.cn 10s) goto 0x001600
0x001554:
    if (> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x0015AC
0x001580:
    push (< 1570.x (- (int32 self.undyne):x 40s))
    goto 0x0015B0
0x0015AC:
    push 1s
0x0015B0:
    if !pop goto 0x0015C4
0x0015B4:
    self.cn = 8s
    goto 0x001600
0x0015C4:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    self.cn = 8s
0x001600:
    if !(== self.cn 9s) goto 0x001674
0x001614:
    if !(> (int32 self.undyne):xhome 1110s) goto 0x00164C
0x001634:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
0x00164C:
    push -1s
    if !(<= 5s:alarm 1s) goto 0x001674
0x001668:
    self.cn = 10s
0x001674:
    if !(== self.cn 9.1d) goto 0x00169C
0x001690:
    self.cn = 12s
0x00169C:
    if !(== self.cn 9.2d) goto 0x001740
0x0016B8:
    if (> (int32 self.undyne):xhome 1110s) goto 0x0016F8
0x0016D8:
    push (< (int32 self.undyne):xhome 800s)
    goto 0x0016FC
0x0016F8:
    push 1s
0x0016FC:
    if !pop goto 0x001718
0x001700:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
0x001718:
    push -1s
    if !(<= 5s:alarm 1s) goto 0x001740
0x001734:
    self.cn = 13s
0x001740:
    if !(== self.cn 9.3d) goto 0x001768
0x00175C:
    self.cn = 14s
0x001768:
    if !(== self.cn 9.4d) goto 0x00180C
0x001784:
    if (> (int32 self.undyne):xhome 1110s) goto 0x0017C4
0x0017A4:
    push (< (int32 self.undyne):xhome 800s)
    goto 0x0017C8
0x0017C4:
    push 1s
0x0017C8:
    if !pop goto 0x0017E4
0x0017CC:
    push 0s
    stog.hhspeed* = (int32 self.undyne)
0x0017E4:
    push -1s
    if !(<= 5s:alarm 1s) goto 0x00180C
0x001800:
    self.cn = 15s
0x00180C:
    if !(== self.cn 12s) goto 0x0018DC
0x001820:
    if (> 1570.y (+ (int32 self.undyne):y 60s)) goto 0x001878
0x00184C:
    push (< 1570.y (- (int32 self.undyne):y 60s))
    goto 0x00187C
0x001878:
    push 1s
0x00187C:
    if !pop goto 0x001898
0x001880:
    self.cn = 8.1d
    goto 0x0018DC
0x001898:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    self.cn = 8.1d
0x0018DC:
    if !(== self.cn 13s) goto 0x0019AC
0x0018F0:
    if (> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x001948
0x00191C:
    push (< 1570.x (- (int32 self.undyne):x 20s))
    goto 0x00194C
0x001948:
    push 1s
0x00194C:
    if !pop goto 0x001968
0x001950:
    self.cn = 8.2d
    goto 0x0019AC
0x001968:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    self.cn = 8.2d
0x0019AC:
    if !(== self.cn 14s) goto 0x001A7C
0x0019C0:
    if (> 1570.y (+ (int32 self.undyne):y 60s)) goto 0x001A18
0x0019EC:
    push (< 1570.y (- (int32 self.undyne):y 60s))
    goto 0x001A1C
0x001A18:
    push 1s
0x001A1C:
    if !pop goto 0x001A38
0x001A20:
    self.cn = 8.3d
    goto 0x001A7C
0x001A38:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vhspeed* = (int32 self.undyne)
    self.cn = 8.3d
0x001A7C:
    if !(== self.cn 15s) goto 0x001B4C
0x001A90:
    if (> 1570.x (+ (int32 self.undyne):x 40s)) goto 0x001AE8
0x001ABC:
    push (< 1570.x (- (int32 self.undyne):x 20s))
    goto 0x001AEC
0x001AE8:
    push 1s
0x001AEC:
    if !pop goto 0x001B08
0x001AF0:
    self.cn = 8.4d
    goto 0x001B4C
0x001B08:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.hhspeed* = (int32 self.undyne)
    self.cn = 8.4d
0x001B4C:
    exit
