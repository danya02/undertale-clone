0x000000:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001A8
0x00001C:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000A0
0x000038:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000A0
0x000070:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000A0:
    push -5s
    if !(== 1s:monster 1s) goto 0x000124
0x0000BC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000124
0x0000F4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000124:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001A8
0x000140:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001A8
0x000178:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001A8:
    exit
