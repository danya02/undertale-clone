0x000000:
    stog.msg[0s] = "* You called out to your&  friends with all your&  heart./"
    stog.msg[1s] = "* From somewhere^1, you felt&  their support.../^"
    if !(< global.hp global.maxhp) goto 0x00006C
0x000048:
    global.hp = global.maxhp
    call (snd_play[]:int32 (var 155s))
0x00006C:
    exit
