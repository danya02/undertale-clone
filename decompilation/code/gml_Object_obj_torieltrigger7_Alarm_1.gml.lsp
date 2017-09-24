0x000000:
    if !(bool (instance_exists[]:int32 self.ruff)) goto 0x00003C
0x000018:
    stog.alarm[6s] = 20s
    [obj_toroverworld3].myinteract = 17s
    goto 0x000048
0x00003C:
    [obj_toroverworld3].myinteract = 0s
0x000048:
    exit
