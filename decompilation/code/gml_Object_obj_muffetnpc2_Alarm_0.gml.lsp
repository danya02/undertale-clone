0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* There you are^1, dearie^1.&* You are always welcome in&  my parlor!/"
    stog.msg[1s] = "* Just stay on your best&  behavior^1~&* Ueee hee hee hee~/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x00029C
0x000088:
    stog.msg[0s] = "* Bonjour^1, dearie^1~&* I just finished tallying up&  all of our donations!/"
    stog.msg[1s] = "* We've finally raised enough&  to rescue all the spiders&  inside of the RUINS./"
    stog.msg[2s] = "* And we'll also be able to&  afford...!/"
    stog.msg[3s] = "* ... nothing^1, because we&  only sold one donut./"
    stog.msg[4s] = "* What's wrong with everyone^1?&* Don't they like spiders~/%%"
    push -5s
    if !(>= 59s:flag 1s) goto 0x000134
0x00011C:
    stog.msg[3s] = "* 4 pairs of stylish sunglasses&  for every spider!/%%"
0x000134:
    push -5s
    if !(>= 59s:flag 13s) goto 0x000168
0x000150:
    stog.msg[3s] = "* 4 pairs of waterproof booties&  for every spider!/%%"
0x000168:
    push -5s
    if !(>= 59s:flag 25s) goto 0x00019C
0x000184:
    stog.msg[3s] = "* 4 pairs of stylish heels for&  every spider!/%%"
0x00019C:
    push -5s
    if !(>= 59s:flag 40s) goto 0x0001D0
0x0001B8:
    stog.msg[3s] = "* A spider baseball field^1!&* We've already got the baseball&  donuts ready~/%%"
0x0001D0:
    push -5s
    if !(>= 59s:flag 70s) goto 0x000204
0x0001EC:
    stog.msg[3s] = "* A spider football stadium^1!&* We'll play with 4 balls on the&  field at once!/%%"
0x000204:
    push -5s
    if !(>= 59s:flag 100s) goto 0x000250
0x000220:
    stog.msg[3s] = "* A brand new bakery^1!&* Thank you so much^1, dearie!/"
    stog.msg[4s] = "* It's all because of you^2 &* (r money)./%%"
0x000250:
    push -5s
    if !(>= 59s:flag 9000s) goto 0x00029C
0x00026C:
    stog.msg[3s] = "* A vacation anywhere in the&  entire world!/"
    stog.msg[4s] = "* Should we go to the tropics^1?&* Or a creepy abandoned house^1?&* We can't decide~/%%"
0x00029C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0002DC:
    exit
