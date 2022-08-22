import applescript

def txt_2_winList( words ):
    txt = ''
    winList = []
    for c in words:
        if c[-1] == ',':
            winList.append(txt.strip(' '))
            txt = ''
        else:
            txt += c
        winList.append(txt.strip(' '))
    return winList

def app_close( prcList ):
    app_quit = input("Close Which app?")
    if app_quit not in prcList:
        print("No such app is currently running!")
    else:
        applescript.tell.app(app_quit, 'quit')
        print(app_quit, "is closed")


choice = input('Would You Like To See All Application(1) Or Just Windows(2)')
while choice == '1':
    r1 = applescript.run("all_app_information.applescript")
    print(r1.out)
    r1List = txt_2_winList(r1.out)
    app_close(r1List)
while choice == '2':
    r2 = applescript.run("window.applescript")
    print(r2.out)
    r2List = txt_2_winList(r2.out)
    app_close(r2List)

