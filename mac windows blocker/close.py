import applescript
blackList = ['FaceTime']#add the process names of the windows you don't want to see
while True:
    for app in blackList:
        applescript.tell.app(app, 'quit')
