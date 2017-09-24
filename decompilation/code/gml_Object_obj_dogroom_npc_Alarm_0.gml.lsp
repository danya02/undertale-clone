0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 55s:flag 0s) goto 0x000100
0x000058:
    if !(< global.plot 67s) goto 0x0000A0
0x00006C:
    stog.msg[0s] = "* That dog considers itself&  an artist^1, but doesn't ever&  know what to create./"
    stog.msg[1s] = "* It probably doesn't help&  that its brain is the size&  of a piece of kibble./%%"
    goto 0x000100
0x0000A0:
    stog.msg[0s] = "* That dog from earlier...^1?&* It's at Grillby's^1.&* I think./"
    stog.msg[1s] = "* After work^1, all of the dogs&  go there to play cards&  together./"
    stog.msg[2s] = "* But that dog doesn't really&  know how to express itself./"
    stog.msg[3s] = "* So^1, it ends up playing alone^1,&  instead of introducing&  itself to the others.../%%"
0x000100:
    push -5s
    if !(== 55s:flag 2s) goto 0x000194
0x00011C:
    stog.msg[0s] = "* A dog just rushed in here^1,&  filled with inspiration./"
    stog.msg[1s] = "* It kept trying to build&  a snowdog that expressed&  its own emotions.../"
    stog.msg[2s] = "* But^1, as it built^1, it&  kept getting more excited&  about the sculpture.../"
    stog.msg[3s] = "* Its neck got longer and&  longer^1, and it added more&  and more snow^1, until.../"
    stog.msg[4s] = "* It was rather sad to watch^1,&  but I couldn't turn away./%%"
0x000194:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001F8
0x0001B0:
    stog.msg[0s] = "* We're all free?/"
    stog.msg[1s] = "* OK^1, OK..^1.&* I'll stop lounging around^1.&* Does that dog know?/"
    stog.msg[2s] = "* ... it probably doesn't^1,&  does it...?/%%"
0x0001F8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000238:
    exit
