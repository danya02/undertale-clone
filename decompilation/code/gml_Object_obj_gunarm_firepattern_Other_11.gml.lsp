0x000000:
    self.xx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 95s))
    self.yy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 95s))
    if !(== self.type 0s) goto 0x00015C
0x000064:
    self.bolt = (instance_create[]:int32 (var 582s) (+ self.y self.yy) (+ self.x self.xx))
    push (- self.image_angle 90s)
    stog.direction* = (int32 self.bolt)
    push (- self.image_angle 90s)
    stog.thisd* = (int32 self.bolt)
    push (int32 self.bolt):direction
    stog.image_angle* = (int32 self.bolt)
    push 20s
    stog.speed* = (int32 self.bolt)
    push 2s
    stog.image_xscale* = (int32 self.bolt)
    push 2s
    stog.image_yscale* = (int32 self.bolt)
0x00015C:
    if !(== self.type 1s) goto 0x0002FC
0x000170:
    self.i = 0s
    if (<= 3s 0) goto 0x0002F8
0x000194:
    push 3s
    self.bolt = (instance_create[]:int32 (var 582s) (+ self.y self.yy) (+ self.x self.xx))
    push (- self.image_angle 90s)
    stog.direction* = (int32 self.bolt)
    push (int32 self.bolt):direction
    stog.image_angle* = (int32 self.bolt)
    push (+ (- self.image_angle 110s) (* 20s self.i))
    stog.thisd* = (int32 self.bolt)
    push (int32 self.bolt):direction
    stog.image_angle* = (int32 self.bolt)
    push 20s
    stog.speed* = (int32 self.bolt)
    push 2s
    stog.image_xscale* = (int32 self.bolt)
    push 2s
    stog.image_yscale* = (int32 self.bolt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000194
0x0002F8:
    push (- pop 1)
    pop
0x0002FC:
    if !(== self.type 2s) goto 0x00049C
0x000310:
    self.i = 0s
    if (<= 4s 0) goto 0x000498
0x000334:
    push 4s
    self.bolt = (instance_create[]:int32 (var 582s) (+ self.y self.yy) (+ self.x self.xx))
    push (- self.image_angle 90s)
    stog.direction* = (int32 self.bolt)
    push (int32 self.bolt):direction
    stog.image_angle* = (int32 self.bolt)
    push (+ (- self.image_angle 120s) (* 20s self.i))
    stog.thisd* = (int32 self.bolt)
    push (int32 self.bolt):direction
    stog.image_angle* = (int32 self.bolt)
    push 20s
    stog.speed* = (int32 self.bolt)
    push 2s
    stog.image_xscale* = (int32 self.bolt)
    push 2s
    stog.image_yscale* = (int32 self.bolt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000334
0x000498:
    push (- pop 1)
    pop
0x00049C:
    exit
