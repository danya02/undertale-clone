0x000000:
    stog.msg[0s] = " THIS IS AN ERROR& MESSAGE^1.& REALLY!!!/%%"
    push -5s
    if !(== 67s:flag -1s) goto 0x0000C4
0x000034:
    stog.msg[0s] = " YOU'RE TOO WEAK!!& I WAS EASILY ABLE& TO CAPTURE YOU!!!/"
    stog.msg[1s] = " I WILL NOW SEND& YOU TO THE& CAPTURE ZONE!!/"
    stog.msg[2s] = " OR^1, AS SANS& CALLS IT^1.../"
    stog.msg[3s] = " OUR GARAGE???/"
    stog.msg[4s] = " YOU'RE IN THE& DOGHOUSE NOW!/"
    stog.msg[5s] = " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%"
0x0000C4:
    push -5s
    if !(== 67s:flag -2s) goto 0x000158
0x0000E0:
    stog.msg[0s] = " WELL!!^1! YOU MAY& HAVE CLEVERLY& ESCAPED FROM& JAIL BEFORE.../"
    stog.msg[1s] = " BUT THIS TIME^1,& I'VE UPGRADED& THE FACILITIES./"
    stog.msg[2s] = " NOT ONLY WILL& YOU BE& TRAPPED.../"
    stog.msg[3s] = " BUT YOU WON'T& EVEN WANT& TO LEAVE!!!/"
    stog.msg[4s] = " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%"
0x000158:
    push -5s
    if !(== 67s:flag -3s) goto 0x00024C
0x000174:
    stog.msg[0s] = " YOU ARE...& PERSISTENT!/"
    stog.msg[1s] = " BUT^1!& IT JUST WON'T& WORK ON ME!/"
    stog.msg[2s] = " I AM THE& PERSISTENTEST!/"
    stog.msg[3s] = " AND IF YOU& THINK YOU ARE& PERSISTENESTER.../"
    stog.msg[4s] = " THAT IS WRONG^1!& GRAMATICALLY& WRONG!/"
    stog.msg[5s] = " BECAUSE THE& CORRECT FORM& WOULD BE.../"
    stog.msg[6s] = " NOT AS& PERSISTENTEST AS& PAPYRUS^1, THE& PERSISTENTESTEST!/\""
    stog.msg[7s] = " I HOPE YOU& ENJOYED THIS& LESSON./"
    stog.msg[8s] = " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%"
0x00024C:
    global.typer = 22s
    pushenv 782s 0x00026C
0x000260:
    call (instance_destroy[]:int32 )
0x00026C:
    popenv 0x000260
0x000270:
    self.blcon = (instance_create[]:int32 (var 187s) (+ 232.y 52s) (+ 232.x 145s))
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    stog.alarm[5s] = 1s
0x00030C:
    exit
