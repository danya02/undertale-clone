0x000000:
    if !(== self.trick 0s) goto 0x000020
0x000014:
    call (event_inherited[]:int32 )
0x000020:
    if !(== self.trick 1s) goto 0x000080
0x000034:
    call (snd_play[]:int32 (var 155s))
    global.my_hp = 50s
    [obj_flowey_master].dcon = 40s
    pushenv (int32 self.object_index) 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    if !(== self.trick 2s) goto 0x0000B4
0x000094:
    pushenv 1647s 0x0000B0
0x00009C:
    call (event_user[]:int32 (var 1s))
0x0000B0:
    popenv 0x00009C
0x0000B4:
    exit
