0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (We're sentries^1, but we never&  get any respect.)/"
    stog.msg[1s] = "* (I wish those skeletons would&  throw us a bone.)/"
    stog.msg[2s] = "* (We love bones.)/%%"
    push -5s
    if !(== 67s:flag 1s) goto 0x0000B8
0x0000A0:
    stog.msg[0s] = "* (Where are those skeletons?^1)&* (I wanted to get a bone&  from them...)/%%"
0x0000B8:
    if !(>= global.plot 122s) goto 0x0000FC
0x0000CC:
    stog.msg[0s] = "* (We're considering paying a&  visit to the doctor.)/"
    stog.msg[1s] = "* (No^1! Not the vet!^1)&* (... well^1, maybe she's a&  little like a vet.)/%%"
0x0000FC:
    if !(== self.sansmode 1s) goto 0x000140
0x000110:
    stog.msg[0s] = "* (I like Sans.^1)&* (Sometimes he feeds us scraps&  of food under the table.)/"
    stog.msg[1s] = "* (Then his brother gets mad...^1)&* (But why!^1? We're adults!^1)&* (We can handle it!)/%%"
0x000140:
    push -5s
    if !(== 52s:flag 1s) goto 0x000174
0x00015C:
    stog.msg[0s] = "* (Where's Doggo?^1)&* (I hope he didn't get&  lost again.)/%%"
0x000174:
    push -5s
    if !(== 52s:flag 1s) goto 0x0001AC
0x000190:
    push -5s
    push (== 54s:flag 1s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001CC
0x0001B4:
    stog.msg[0s] = "* (It's lonely in here today.^1)&* (If our friends don't show up^1,&  would you like to play?)/%%"
0x0001CC:
    push -5s
    if !(== 7s:flag 1s) goto 0x000218
0x0001E8:
    stog.msg[0s] = "* (All of our parents have&  been combined into one&  horrible being.)/"
    stog.msg[1s] = "* (That's OK^1, though.^1)&* (It's really \"brought our&  families together.\")/%%"
0x000218:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000258:
    exit
