0x000000:
    if !(< global.hp global.maxhp) goto 0x000044
0x000018:
    global.hp = (+ global.hp 1s)
    call (snd_play[]:int32 (var 155s))
0x000044:
    stog.alarm[2s] = 12s
0x000058:
    exit
