0x000000:
    push global.faceemotion
    stog.image_index* = (int32 self.head)
    if !(== self.movetype 0s) goto 0x0005AC
0x000030:
    self.siner = (+ self.siner 1.2d)
    if !(== 272.order -39s) goto 0x000084
0x000064:
    self.siner = (- self.siner 0.2d)
0x000084:
    if !(== 272.order -38s) goto 0x0000B8
0x000098:
    self.siner = (- self.siner 0.4d)
0x0000B8:
    if !(== 272.order -37s) goto 0x0000EC
0x0000CC:
    self.siner = (- self.siner 0.6d)
0x0000EC:
    if !(== 272.order -36s) goto 0x000120
0x000100:
    self.siner = (- self.siner 0.8d)
0x000120:
    if (== 272.order -35s) goto 0x000148
0x000134:
    push (== 272.order -35s)
    goto 0x00014C
0x000148:
    push 1s
0x00014C:
    if !pop goto 0x000168
0x000150:
    self.siner = (- self.siner 1s)
0x000168:
    push 0s
    stog.image_index* = (int32 self.legs)
    self.ydiff = (- self.y self.ystart)
    self.xdiff = (- self.x self.xstart)
    push (+ self.depth 5s)
    stog.depth* = (int32 self.larm)
    push (+ (+ (int32 self.hair):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) self.ydiff)
    stog.y* = (int32 self.hair)
    push (+ (+ (int32 self.head):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) self.ydiff)
    stog.y* = (int32 self.head)
    push (+ (+ (int32 self.armor):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) self.ydiff)
    stog.y* = (int32 self.armor)
    push (+ (+ (int32 self.pants):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) self.ydiff)
    stog.y* = (int32 self.pants)
    push (+ (+ (int32 self.larm):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 5s)) self.ydiff)
    stog.y* = (int32 self.larm)
    push (+ (+ (int32 self.larm):xstart (* (sin[]:int32 (/ self.siner (double 6s))) 5s)) self.xdiff)
    stog.x* = (int32 self.larm)
    push (+ (+ (+ (int32 self.rarm):ystart (* (sin[]:int32 (/ self.siner (double 6s))) 6s)) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.ydiff)
    stog.y* = (int32 self.rarm)
    push (+ (- (int32 self.rarm):xstart (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) self.xdiff)
    stog.x* = (int32 self.rarm)
    push (+ (int32 self.legs):ystart self.ydiff)
    stog.y* = (int32 self.legs)
    if !(> (int32 self.rarm):image_angle 0s) goto 0x000560
0x000538:
    stog.image_angle* = (- (int32 self.rarm):image_angle 15s)
0x000560:
    push (int32 self.rarm)
    if !(< (int32 self.larm):image_angle 0s) goto 0x0005A8
0x000580:
    stog.image_angle* = (+ (int32 self.larm):image_angle 15s)
0x0005A8:
    push (int32 self.larm)
    goto 0x0007F0
0x0005AC:
    self.ydiff = (- self.y self.ystart)
    self.xdiff = (- self.x self.xstart)
    self.i = 0s
    if !(< self.i 3s) goto 0x0006C8
0x000604:
    push -1s
    push (+ (int32 (int32 self.i):part):xstart self.xdiff)
    push -1s
    stog.x* = (int32 (int32 self.i):part)
    push -1s
    push (+ (int32 (int32 self.i):part):ystart self.ydiff)
    push -1s
    stog.y* = (int32 (int32 self.i):part)
    self.i = (+ self.i 1s)
    goto 0x0005F0
0x0006C8:
    push -1s
    push (+ (int32 4s:part):xstart self.xdiff)
    push -1s
    stog.x* = (int32 4s:part)
    push -1s
    push (+ (int32 4s:part):ystart self.ydiff)
    push -1s
    stog.y* = (int32 4s:part)
    if !(<= self.y self.ystart) goto 0x000780
0x000768:
    self.air = (+ self.air 1s)
0x000780:
    stog.image_angle* = (+ (int32 self.larm):image_angle (int32 self.larm):vspeed)
    stog.image_angle* = (- (int32 self.rarm):image_angle (int32 self.rarm):vspeed)
0x0007F0:
    push (int32 self.larm)
    push (int32 self.rarm)
    if !(== self.movetype 1s) goto 0x000838
0x000804:
    if !(> self.vspeed 0s) goto 0x000838
0x000818:
    push (> self.y (- self.ystart 8s))
    goto 0x00083C
0x000838:
    push 0s
0x00083C:
    if !pop goto 0x000AF8
0x000840:
    self.y = self.ystart
    self.i = 0s
    if !(< self.i 7s) goto 0x000934
0x000870:
    push -1s
    push (+ (int32 (int32 self.i):part):xstart self.xdiff)
    push -1s
    stog.x* = (int32 (int32 self.i):part)
    push -1s
    push (+ (int32 (int32 self.i):part):ystart self.ydiff)
    push -1s
    stog.y* = (int32 (int32 self.i):part)
    self.i = (+ self.i 1s)
    goto 0x00085C
0x000934:
    push 0s
    stog.gravity* = (int32 self.legs)
    push 0s
    stog.vspeed* = (int32 self.legs)
    push 0s
    stog.hspeed* = (int32 self.legs)
    push 0s
    stog.gravity* = (int32 self.legs)
    push 0s
    stog.image_index* = (int32 self.legs)
    push 0s
    stog.gravity* = (int32 self.larm)
    push 0s
    stog.vspeed* = (int32 self.larm)
    push 0s
    stog.hspeed* = (int32 self.larm)
    push 0s
    stog.gravity* = (int32 self.larm)
    push 0s
    stog.image_index* = (int32 self.larm)
    push 0s
    stog.gravity* = (int32 self.rarm)
    push 0s
    stog.vspeed* = (int32 self.rarm)
    push 0s
    stog.hspeed* = (int32 self.rarm)
    push 0s
    stog.gravity* = (int32 self.rarm)
    push 0s
    stog.image_index* = (int32 self.rarm)
    self.vspeed = 0s
    self.hspeed = 0s
    self.gravity = 0s
    if !(<= self.jumpno 2s) goto 0x000AEC
0x000AD4:
    stog.alarm[0s] = 4s
    goto 0x000AF8
0x000AEC:
    self.movetype = 0s
0x000AF8:
    if !(== self.movetype 2s) goto 0x000EAC
0x000B0C:
    if !(== self.slashno 0s) goto 0x000B40
0x000B20:
    push (> (int32 self.larm):image_angle -84s)
    goto 0x000B44
0x000B40:
    push 0s
0x000B44:
    if !pop goto 0x000B70
0x000B48:
    stog.image_angle* = (- (int32 self.larm):image_angle 25s)
0x000B70:
    push (int32 self.larm)
    if !(== self.slashno 0s) goto 0x000BA4
0x000B84:
    push (<= (int32 self.larm):image_angle -84s)
    goto 0x000BA8
0x000BA4:
    push 0s
0x000BA8:
    if !pop goto 0x000BEC
0x000BAC:
    push -84s
    stog.image_angle* = (int32 self.larm)
    stog.alarm[1s] = 5s
    self.slashno = 0.1d
0x000BEC:
    if !(== self.slashno 1.1d) goto 0x000C28
0x000C08:
    self.slashno = 1s
    stog.alarm[1s] = 2s
0x000C28:
    if !(== self.slashno 1s) goto 0x000C7C
0x000C3C:
    push 4s
    stog.depth* = (int32 self.larm)
    stog.image_angle* = (+ (int32 self.larm):image_angle 55s)
0x000C7C:
    push (int32 self.larm)
    if !(== self.slashno 2s) goto 0x000D4C
0x000C90:
    push 66s
    stog.image_angle* = (int32 self.larm)
    self.slash = (instance_create[]:int32 (var 1363s) (+ (int32 self.larm):y 20s) (- (int32 self.larm):x 180s))
    push 280s
    stog.sprite_index* = (int32 self.slash)
    push 1s
    stog.visible* = (int32 self.slash)
    push 1s
    stog.image_alpha* = (int32 self.slash)
    self.slashno = 3s
0x000D4C:
    if !(== self.slashno 3s) goto 0x000E20
0x000D60:
    stog.image_alpha* = (- (int32 self.slash):image_alpha 0.1d)
    stog.image_angle* = (+ (int32 self.larm):image_angle 0.5d)
    if !(> (int32 self.larm):image_angle 70s) goto 0x000E20
0x000DE0:
    push (int32 self.slash)
    push (int32 self.larm)
    pushenv (int32 self.slash) 0x000DFC
0x000DF0:
    call (instance_destroy[]:int32 )
0x000DFC:
    popenv 0x000DF0
0x000E00:
    self.slashno = 4s
    stog.alarm[1s] = 3s
0x000E20:
    if !(== self.slashno 5s) goto 0x000EAC
0x000E34:
    stog.image_angle* = (- (int32 self.larm):image_angle 15s)
    if !(<= (int32 self.larm):image_angle 6s) goto 0x000EAC
0x000E7C:
    push (int32 self.larm)
    push 0s
    stog.image_angle* = (int32 self.larm)
    self.slashno = 0s
    self.movetype = 0s
0x000EAC:
    if !(== self.fadeout 1s) goto 0x000FC8
0x000EC0:
    push 0s
    stog.image_index* = (int32 self.melter)
    self.image_alpha = (- self.image_alpha 0.05d)
    self.i = 0s
    if !(< self.i 7s) goto 0x000F74
0x000F18:
    push -1s
    stog.image_alpha* = (- (int32 (int32 self.i):part):image_alpha 0.2d)
    self.i = (+ self.i 1s)
    goto 0x000F04
0x000F74:
    push (int32 (int32 self.i):part)
    pushenv (int32 self.melter) 0x000FA4
0x000F84:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000FA4:
    popenv 0x000F84
0x000FA8:
    if !(<= self.image_alpha 0s) goto 0x000FC8
0x000FBC:
    call (instance_destroy[]:int32 )
0x000FC8:
    exit
