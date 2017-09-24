0x000000:
    stog.msg[0s] = "* You reached out to ASRIEL's&  SOUL and called out to your&  friends./"
    stog.msg[1s] = "* They're in there somewhere^1,&  aren't they?/"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "* Within the depths of ASRIEL's&  SOUL^1, something's resonating..!/%%"
    push -5s
    if (== 505s:flag 1s) goto 0x0000D0
0x00007C:
    push -5s
    if (== 506s:flag 1s) goto 0x0000D0
0x000098:
    push -5s
    if (== 507s:flag 1s) goto 0x0000D0
0x0000B4:
    push -5s
    push (== 508s:flag 1s)
    goto 0x0000D4
0x0000D0:
    push 1s
0x0000D4:
    if !pop goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "* Within the depths of ASRIEL's&  SOUL^1, something's resonating..!/%%"
0x0000F0:
    self.gocon = 1s
0x0000FC:
    exit
