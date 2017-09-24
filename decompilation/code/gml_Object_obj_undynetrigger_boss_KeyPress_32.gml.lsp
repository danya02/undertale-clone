0x000000:
    if !(== global.debug 1s) goto 0x00022C
0x000014:
    if !(== self.playthesong 0s) goto 0x000074
0x000028:
    self.undyne = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.undyne)
    self.playthesong = 1s
0x000074:
    stog.flag[18s] = 1s
    self.fakedrawer = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
    stog.view_object[0s] = self.object_index
    stog.view_hborder[0s] = 160s
    stog.view_vborder[0s] = 100s
    stog.view_wview[0s] = 160s
    stog.view_hview[0s] = 120s
    call (snd_play[]:int32 (var 51s))
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "*TEST!!!/%%"
    call (instance_create[]:int32 (var 782s) (+ 150s self.yy) (+ 10s self.xx))
    push -1s
    if !(<= 0s:view_angle 0s) goto 0x000204
0x0001D8:
    stog.view_angle[0s] = (+ 10s (random[]:int32 (var 40s)))
    goto 0x00022C
0x000204:
    stog.view_angle[0s] = (- -1s (random[]:int32 (var 40s)))
0x00022C:
    exit
