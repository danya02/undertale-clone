0x000000:
    if !(== self.active 1s) goto 0x000670
0x000014:
    if !(== self.site 0s) goto 0x000068
0x000028:
    if !(> self.x (- (int32 self.object0):x 80s)) goto 0x000068
0x000054:
    push (== self.part 0s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x00007C
0x000070:
    self.part = 1s
0x00007C:
    if !(== self.site 1s) goto 0x0000D0
0x000090:
    if !(< self.x (+ (int32 self.object0):x 80s)) goto 0x0000D0
0x0000BC:
    push (== self.part 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x0000E4
0x0000D8:
    self.part = 1s
0x0000E4:
    if !(== self.site 2s) goto 0x000138
0x0000F8:
    if !(< self.y (+ (int32 self.object0):y 80s)) goto 0x000138
0x000124:
    push (== self.part 0s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x00014C
0x000140:
    self.part = 1s
0x00014C:
    if !(== self.site 3s) goto 0x0001A0
0x000160:
    if !(> self.y (- (int32 self.object0):y 80s)) goto 0x0001A0
0x00018C:
    push (== self.part 0s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x0001B4
0x0001A8:
    self.part = 1s
0x0001B4:
    self.rater = 10s
    self.r2 = 20s
    if !(== self.part 1s) goto 0x00027C
0x0001E0:
    self.siner = 0s
    self.part = 2s
    self.speed = 0s
    self.remx = self.x
    self.remy = self.y
    self.xrate = 0s
    if !(> self.rating 8s) goto 0x00025C
0x000244:
    self.xrate = (- self.rating 8s)
0x00025C:
    self.totalx = (+ 145s (* self.xrate 8s))
0x00027C:
    if !(== self.down 1s) goto 0x0002B4
0x000290:
    self.countdown = (- self.countdown 1s)
    self.down = 0s
0x0002B4:
    if !(== self.part 2s) goto 0x000670
0x0002C8:
    self.siner = (+ self.siner 1s)
    if !(== self.site 0s) goto 0x0003C4
0x0002F4:
    self.x = (+ self.remx (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.r2)) self.totalx))
    self.y = (- self.remy (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.rater)) 100s))
    if !(== self.siner self.rater) goto 0x0003C4
0x0003A0:
    self.part = 3s
    self.hspeed = (* -8s self.speedmod)
0x0003C4:
    if !(== self.site 1s) goto 0x0004A8
0x0003D8:
    self.x = (- self.remx (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.r2)) self.totalx))
    self.y = (- self.remy (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.rater)) 100s))
    if !(== self.siner self.rater) goto 0x0004A8
0x000484:
    self.part = 3s
    self.hspeed = (* 8s self.speedmod)
0x0004A8:
    if !(== self.site 2s) goto 0x00058C
0x0004BC:
    self.y = (- self.remy (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.r2)) self.totalx))
    self.x = (- self.remx (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.rater)) 100s))
    if !(== self.siner self.rater) goto 0x00058C
0x000568:
    self.part = 3s
    self.vspeed = (* 8s self.speedmod)
0x00058C:
    if !(== self.site 3s) goto 0x000670
0x0005A0:
    self.y = (+ self.remy (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.r2)) self.totalx))
    self.x = (+ self.remx (* (sin[]:int32 (/ (* self.siner 3.14159265358979d) self.rater)) 100s))
    if !(== self.siner self.rater) goto 0x000670
0x00064C:
    self.part = 3s
    self.vspeed = (* -8s self.speedmod)
0x000670:
    if !(< self.alphoid 1s) goto 0x0006A4
0x000684:
    self.alphoid = (+ self.alphoid 0.2d)
0x0006A4:
    self.image_alpha = self.alphoid
0x0006B4:
    exit
