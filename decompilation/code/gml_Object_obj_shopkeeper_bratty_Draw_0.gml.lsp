0x000000:
    pushenv 1411s 0x00009C
0x000008:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x000034
0x000020:
    push (== 1408.face 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000090
0x00003C:
    if !(== (int32 self.brattywriter):halt 0s) goto 0x000080
0x00005C:
    [obj_shopkeeper_bratty].banim = (+ 1408.banim 0.25d)
    goto 0x00008C
0x000080:
    [obj_shopkeeper_bratty].banim = 0s
0x00008C:
    goto 0x00009C
0x000090:
    [obj_shopkeeper_bratty].banim = 0s
0x00009C:
    popenv 0x000008
0x0000A0:
    call (draw_sprite[]:int32 (+ self.y (floor[]:int32 self.byy)) (+ self.x (floor[]:int32 self.bxx)) self.banim self.sprite_index)
    if !(> self.face 0s) goto 0x00016C
0x000108:
    call (draw_sprite[]:int32 (+ (+ self.y 20s) (floor[]:int32 self.byy)) (+ (+ self.x 30s) (floor[]:int32 self.bxx)) self.face (var 858s))
0x00016C:
    push -5s
    self.armexp = 20s:flag
    if !(== self.armexp 0s) goto 0x000370
0x000198:
    self.face = 0s
    self.idealarmx1 = (+ self.x 35s)
    self.idealarmy1 = 100s
    self.idealarmx2 = (+ self.x 18s)
    self.idealarmy2 = 102s
    self.yadjust = 8s
    self.xadjust = 6s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x000248
0x000228:
    self.xx = (/ self.xx 1.5d)
0x000248:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x00028C
0x00026C:
    self.yy = (/ self.yy 1.5d)
0x00028C:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x0002D4
0x0002B0:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x0002E8
0x0002DC:
    self.armsiner = 0s
0x0002E8:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x00032C
0x00030C:
    self.bxx = (/ self.bxx 1.5d)
0x00032C:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000370
0x000350:
    self.byy = (/ self.byy 1.5d)
0x000370:
    if !(== self.armexp 1s) goto 0x000430
0x000384:
    self.face = 4s
    self.arm = 2s
    self.idealarmx1 = (+ self.x 80s)
    self.idealarmy1 = (+ self.y 50s)
    self.idealarmy2 = 130s
    self.armsiner = (+ self.armsiner 1s)
    self.yy = (* (cos[]:int32 self.armsiner) 1s)
    self.byy = (* (sin[]:int32 self.armsiner) 2s)
0x000430:
    if !(== self.armexp 2s) goto 0x00061C
0x000444:
    self.face = 3s
    self.idealarmx1 = (+ self.x 35s)
    self.idealarmy1 = 100s
    self.idealarmx2 = (+ self.x 18s)
    self.idealarmy2 = 102s
    self.yadjust = 8s
    self.xadjust = 6s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x0004F4
0x0004D4:
    self.xx = (/ self.xx 1.5d)
0x0004F4:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000538
0x000518:
    self.yy = (/ self.yy 1.5d)
0x000538:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x000580
0x00055C:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x000584
0x000580:
    push 0s
0x000584:
    if !pop goto 0x000594
0x000588:
    self.armsiner = 0s
0x000594:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x0005D8
0x0005B8:
    self.bxx = (/ self.bxx 1.5d)
0x0005D8:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x00061C
0x0005FC:
    self.byy = (/ self.byy 1.5d)
0x00061C:
    if !(== self.armexp 3s) goto 0x000724
0x000630:
    self.face = 0s
    self.arm = 0s
    self.yadjust = 5s
    self.idealarmx1 = (+ self.x 70s)
    self.idealarmy1 = (+ self.y 70s)
    self.idealarmx2 = (+ self.x 47s)
    self.idealarmy2 = (+ self.y 73s)
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 4s))) 1s)
    self.yy = (* (cos[]:int32 (/ self.armsiner (double 4s))) 1s)
0x000724:
    if !(== self.armexp 4s) goto 0x000910
0x000738:
    self.face = 5s
    self.idealarmx1 = (+ self.x 35s)
    self.idealarmy1 = 100s
    self.idealarmx2 = (+ self.x 18s)
    self.idealarmy2 = 102s
    self.yadjust = 8s
    self.xadjust = 6s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x0007E8
0x0007C8:
    self.xx = (/ self.xx 1.5d)
0x0007E8:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x00082C
0x00080C:
    self.yy = (/ self.yy 1.5d)
0x00082C:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x000874
0x000850:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x000878
0x000874:
    push 0s
0x000878:
    if !pop goto 0x000888
0x00087C:
    self.armsiner = 0s
0x000888:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x0008CC
0x0008AC:
    self.bxx = (/ self.bxx 1.5d)
0x0008CC:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000910
0x0008F0:
    self.byy = (/ self.byy 1.5d)
0x000910:
    if !(== self.armexp 5s) goto 0x000AFC
0x000924:
    self.face = 1s
    self.idealarmx1 = (+ self.x 35s)
    self.idealarmy1 = 90s
    self.idealarmx2 = (+ self.x 18s)
    self.idealarmy2 = 92s
    self.yadjust = 8s
    self.xadjust = 6s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x0009D4
0x0009B4:
    self.xx = (/ self.xx 1.5d)
0x0009D4:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000A18
0x0009F8:
    self.yy = (/ self.yy 1.5d)
0x000A18:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x000A60
0x000A3C:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x000A64
0x000A60:
    push 0s
0x000A64:
    if !pop goto 0x000A74
0x000A68:
    self.armsiner = 0s
0x000A74:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x000AB8
0x000A98:
    self.bxx = (/ self.bxx 1.5d)
0x000AB8:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000AFC
0x000ADC:
    self.byy = (/ self.byy 1.5d)
0x000AFC:
    if !(== self.armexp 6s) goto 0x000BEC
0x000B10:
    self.face = 2s
    self.idealarmx1 = (+ self.x 35s)
    self.idealarmy1 = 80s
    self.idealarmx2 = (+ self.x 18s)
    self.idealarmy2 = 82s
    self.yadjust = 8s
    self.xadjust = 6s
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 4s))) 2s)
    self.yy = (* (cos[]:int32 (/ self.armsiner (double 4s))) 2s)
0x000BEC:
    call (draw_sprite[]:int32 (+ self.army2 self.yy) (+ self.armx2 self.xx) self.arm (var 859s))
    call (draw_sprite[]:int32 (+ self.army1 self.yy) (+ self.armx1 self.xx) self.arm (var 860s))
    if !(< self.armx1 self.idealarmx1) goto 0x000CA8
0x000C8C:
    self.armx1 = (+ self.armx1 self.xadjust)
0x000CA8:
    if !(> self.armx1 self.idealarmx1) goto 0x000CDC
0x000CC0:
    self.armx1 = (- self.armx1 self.xadjust)
0x000CDC:
    if !(< self.armx2 self.idealarmx2) goto 0x000D10
0x000CF4:
    self.armx2 = (+ self.armx2 self.xadjust)
0x000D10:
    if !(> self.armx2 self.idealarmx2) goto 0x000D44
0x000D28:
    self.armx2 = (- self.armx2 self.xadjust)
0x000D44:
    if !(< self.army1 self.idealarmy1) goto 0x000D78
0x000D5C:
    self.army1 = (+ self.army1 self.yadjust)
0x000D78:
    if !(< self.army2 self.idealarmy2) goto 0x000DAC
0x000D90:
    self.army2 = (+ self.army2 self.yadjust)
0x000DAC:
    if !(> self.army1 self.idealarmy1) goto 0x000DE0
0x000DC4:
    self.army1 = (- self.army1 self.yadjust)
0x000DE0:
    if !(> self.army2 self.idealarmy2) goto 0x000E14
0x000DF8:
    self.army2 = (- self.army2 self.yadjust)
0x000E14:
    if !(< (abs[]:int32 (- self.armx1 self.idealarmx1)) self.xadjust) goto 0x000E50
0x000E40:
    self.armx1 = self.idealarmx1
0x000E50:
    if !(< (abs[]:int32 (- self.armx2 self.idealarmx2)) self.xadjust) goto 0x000E8C
0x000E7C:
    self.armx2 = self.idealarmx2
0x000E8C:
    if !(< (abs[]:int32 (- self.army1 self.idealarmy1)) self.yadjust) goto 0x000EC8
0x000EB8:
    self.army1 = self.idealarmy1
0x000EC8:
    if !(< (abs[]:int32 (- self.army2 self.idealarmy2)) self.yadjust) goto 0x000F04
0x000EF4:
    self.army2 = self.idealarmy2
0x000F04:
    if !(== global.debug 1s) goto 0x000F68
0x000F18:
    if !(bool (keyboard_check_pressed[]:int32 (var 32s))) goto 0x000F68
0x000F30:
    self.armexp = (+ self.armexp 1s)
    if !(== self.armexp 7s) goto 0x000F68
0x000F5C:
    self.armexp = 0s
0x000F68:
    if !(== global.debug 1s) goto 0x000FB8
0x000F7C:
    if !(bool (keyboard_check_pressed[]:int32 (var 66s))) goto 0x000FB8
0x000F94:
    push -5s
    stog.flag[(+ 437s:flag 1s)] = 437s
0x000FB8:
    exit
