0x000000:
    pushenv 1411s 0x00009C
0x000008:
    if !(bool (instance_exists[]:int32 self.cattywriter)) goto 0x000034
0x000020:
    push (== 1407.face 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000090
0x00003C:
    if !(== (int32 self.cattywriter):halt 0s) goto 0x000080
0x00005C:
    [obj_shopkeeper_catty].banim = (+ 1407.banim 0.334d)
    goto 0x00008C
0x000080:
    [obj_shopkeeper_catty].banim = 0s
0x00008C:
    goto 0x00009C
0x000090:
    [obj_shopkeeper_catty].banim = 0s
0x00009C:
    popenv 0x000008
0x0000A0:
    call (draw_sprite[]:int32 (+ self.y (floor[]:int32 self.byy)) (+ self.x (floor[]:int32 self.bxx)) self.banim self.sprite_index)
    if !(> self.face 0s) goto 0x00016C
0x000108:
    call (draw_sprite[]:int32 (+ (+ self.y 17s) (floor[]:int32 self.byy)) (+ (+ self.x 34s) (floor[]:int32 self.bxx)) self.face (var 862s))
0x00016C:
    self.armexp = global.faceemotion
    if !(== self.armexp 0s) goto 0x000368
0x000190:
    self.face = 0s
    self.idealarmx1 = (+ self.x 60s)
    self.idealarmy1 = 130s
    self.idealarmx2 = (+ self.x 40s)
    self.idealarmy2 = 130s
    self.yadjust = 10s
    self.xadjust = 2s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x000240
0x000220:
    self.xx = (/ self.xx 1.5d)
0x000240:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000284
0x000264:
    self.yy = (/ self.yy 1.5d)
0x000284:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x0002CC
0x0002A8:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x0002D0
0x0002CC:
    push 0s
0x0002D0:
    if !pop goto 0x0002E0
0x0002D4:
    self.armsiner = 0s
0x0002E0:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x000324
0x000304:
    self.bxx = (/ self.bxx 1.5d)
0x000324:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000368
0x000348:
    self.byy = (/ self.byy 1.5d)
0x000368:
    if !(== self.armexp 1s) goto 0x00045C
0x00037C:
    self.face = 1s
    self.arm = 1s
    self.idealarmx1 = (+ self.x 57s)
    self.idealarmy1 = (+ self.y 50s)
    self.idealarmy2 = (+ self.y 50s)
    self.idealarmx2 = (+ self.x 50s)
    self.armsiner = (+ self.armsiner 1s)
    self.byy = (* (sin[]:int32 self.armsiner) 1.5d)
    self.yy = (* (cos[]:int32 self.armsiner) 1.5d)
0x00045C:
    if !(== self.armexp 2s) goto 0x000590
0x000470:
    self.face = 6s
    self.arm = 1s
    self.idealarmx1 = (+ self.x 60s)
    self.idealarmy1 = (+ self.y 50s)
    self.idealarmx2 = (+ self.x 50s)
    self.idealarmy2 = (+ self.y 50s)
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 3s))) 5s)
    self.yy = (abs[]:int32 (* (sin[]:int32 (/ self.armsiner (double 3s))) 4s))
    self.bxx = (* (- (sin[]:int32 (/ self.armsiner (double 3s)))) 3s)
0x000590:
    if !(== self.armexp 3s) goto 0x000698
0x0005A4:
    self.face = 0s
    self.arm = 0s
    self.yadjust = 5s
    self.idealarmx1 = (+ self.x 70s)
    self.idealarmy1 = (+ self.y 60s)
    self.idealarmx2 = (+ self.x 40s)
    self.idealarmy2 = (+ self.y 60s)
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 4s))) 1s)
    self.yy = (* (cos[]:int32 (/ self.armsiner (double 4s))) 1s)
0x000698:
    if !(== self.armexp 4s) goto 0x000770
0x0006AC:
    self.face = 1s
    self.arm = 2s
    self.idealarmx1 = (+ self.x 60s)
    self.idealarmy1 = (+ self.y 50s)
    self.idealarmy2 = 130s
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 2s))) 4s)
    self.yy = (* (cos[]:int32 (/ self.armsiner (double 2s))) 4s)
0x000770:
    if !(== self.armexp 5s) goto 0x00090C
0x000784:
    self.face = 3s
    self.arm = 1s
    self.xadjust = 6s
    self.idealarmx1 = (+ self.x 45s)
    self.idealarmy1 = (+ self.y 48s)
    self.idealarmx2 = (+ self.x 65s)
    self.idealarmy2 = 130s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x000840
0x000820:
    self.xx = (/ self.xx 1.5d)
0x000840:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000884
0x000864:
    self.yy = (/ self.yy 1.5d)
0x000884:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x0008C8
0x0008A8:
    self.bxx = (/ self.bxx 1.5d)
0x0008C8:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x00090C
0x0008EC:
    self.byy = (/ self.byy 1.5d)
0x00090C:
    if !(== self.armexp 6s) goto 0x000A08
0x000920:
    self.face = 7s
    self.arm = 2s
    self.idealarmx1 = (+ self.x 48s)
    self.idealarmy1 = (+ self.y 56s)
    self.idealarmx2 = (+ self.x 62s)
    self.idealarmy2 = (+ self.y 50s)
    self.armsiner = (+ self.armsiner 1s)
    self.xx = (* (sin[]:int32 (/ self.armsiner (double 3s))) 4s)
    self.yy = (* (cos[]:int32 (/ self.armsiner (double 3s))) 1s)
0x000A08:
    if !(== self.armexp 7s) goto 0x000BF4
0x000A1C:
    self.face = 5s
    self.idealarmx1 = (+ self.x 60s)
    self.idealarmy1 = 130s
    self.idealarmx2 = (+ self.x 40s)
    self.idealarmy2 = 130s
    self.yadjust = 10s
    self.xadjust = 2s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x000ACC
0x000AAC:
    self.xx = (/ self.xx 1.5d)
0x000ACC:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000B10
0x000AF0:
    self.yy = (/ self.yy 1.5d)
0x000B10:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x000B58
0x000B34:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x000B5C
0x000B58:
    push 0s
0x000B5C:
    if !pop goto 0x000B6C
0x000B60:
    self.armsiner = 0s
0x000B6C:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x000BB0
0x000B90:
    self.bxx = (/ self.bxx 1.5d)
0x000BB0:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000BF4
0x000BD4:
    self.byy = (/ self.byy 1.5d)
0x000BF4:
    if !(== self.armexp 8s) goto 0x000DE0
0x000C08:
    self.face = 2s
    self.idealarmx1 = (+ self.x 60s)
    self.idealarmy1 = 130s
    self.idealarmx2 = (+ self.x 40s)
    self.idealarmy2 = 130s
    self.yadjust = 10s
    self.xadjust = 2s
    if !(> (abs[]:int32 self.xx) 0.1d) goto 0x000CB8
0x000C98:
    self.xx = (/ self.xx 1.5d)
0x000CB8:
    if !(> (abs[]:int32 self.yy) 0.1d) goto 0x000CFC
0x000CDC:
    self.yy = (/ self.yy 1.5d)
0x000CFC:
    if !(< (abs[]:int32 self.xx) 0.1d) goto 0x000D44
0x000D20:
    push (< (abs[]:int32 self.yy) 0.1d)
    goto 0x000D48
0x000D44:
    push 0s
0x000D48:
    if !pop goto 0x000D58
0x000D4C:
    self.armsiner = 0s
0x000D58:
    if !(> (abs[]:int32 self.bxx) 0.1d) goto 0x000D9C
0x000D7C:
    self.bxx = (/ self.bxx 1.5d)
0x000D9C:
    if !(> (abs[]:int32 self.byy) 0.1d) goto 0x000DE0
0x000DC0:
    self.byy = (/ self.byy 1.5d)
0x000DE0:
    call (draw_sprite[]:int32 (+ self.army1 self.yy) (+ self.armx1 self.xx) self.arm (var 863s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var -1s) (+ self.army2 self.yy) (+ self.armx2 self.xx) self.arm (var 863s))
    if !(< self.armx1 self.idealarmx1) goto 0x000EC8
0x000EAC:
    self.armx1 = (+ self.armx1 self.xadjust)
0x000EC8:
    if !(> self.armx1 self.idealarmx1) goto 0x000EFC
0x000EE0:
    self.armx1 = (- self.armx1 self.xadjust)
0x000EFC:
    if !(< self.armx2 self.idealarmx2) goto 0x000F30
0x000F14:
    self.armx2 = (+ self.armx2 self.xadjust)
0x000F30:
    if !(> self.armx2 self.idealarmx2) goto 0x000F64
0x000F48:
    self.armx2 = (- self.armx2 self.xadjust)
0x000F64:
    if !(< self.army1 self.idealarmy1) goto 0x000F98
0x000F7C:
    self.army1 = (+ self.army1 self.yadjust)
0x000F98:
    if !(< self.army2 self.idealarmy2) goto 0x000FCC
0x000FB0:
    self.army2 = (+ self.army2 self.yadjust)
0x000FCC:
    if !(> self.army1 self.idealarmy1) goto 0x001000
0x000FE4:
    self.army1 = (- self.army1 self.yadjust)
0x001000:
    if !(> self.army2 self.idealarmy2) goto 0x001034
0x001018:
    self.army2 = (- self.army2 self.yadjust)
0x001034:
    if !(< (abs[]:int32 (- self.armx1 self.idealarmx1)) self.xadjust) goto 0x001070
0x001060:
    self.armx1 = self.idealarmx1
0x001070:
    if !(< (abs[]:int32 (- self.armx2 self.idealarmx2)) self.xadjust) goto 0x0010AC
0x00109C:
    self.armx2 = self.idealarmx2
0x0010AC:
    if !(< (abs[]:int32 (- self.army1 self.idealarmy1)) self.yadjust) goto 0x0010E8
0x0010D8:
    self.army1 = self.idealarmy1
0x0010E8:
    if !(< (abs[]:int32 (- self.army2 self.idealarmy2)) self.yadjust) goto 0x001124
0x001114:
    self.army2 = self.idealarmy2
0x001124:
    if !(== global.debug 1s) goto 0x001188
0x001138:
    if !(bool (keyboard_check_pressed[]:int32 (var 32s))) goto 0x001188
0x001150:
    self.armexp = (+ self.armexp 1s)
    if !(== self.armexp 9s) goto 0x001188
0x00117C:
    self.armexp = 0s
0x001188:
    exit
