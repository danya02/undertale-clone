0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I ran away from home^1.&* Why?/"
    stog.msg[1s] = "* 'Cause my father was so&  \"cold\" to me.../"
    stog.msg[2s] = "* WHAT!^1?&* It's a JOKE!^1!&* LAUGH at it!!/%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* I really don't^1!&* I don't care if he doesn't&  like my jokes!/%%"
0x0000B0:
    push -5s
    if !(== 7s:flag 1s) goto 0x00012C
0x0000CC:
    stog.msg[0s] = "* Mom might have to share her&  mind with other people now^1,&  but she's still my mom./"
    stog.msg[1s] = "* And that's \"cool!\"/"
    stog.msg[2s] = "* 'Cause^1, uhh^1, we're made&  of ice and stuff./"
    stog.msg[3s] = "* WHAT!?!^1?&* It's a JOKE!^1!&* LAUGH at it!!/%%"
0x00012C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00016C:
    exit
