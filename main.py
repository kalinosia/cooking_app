'''
INSPO 
https://medium.com/analytics-vidhya/how-to-build-your-first-desktop-application-in-python-7568c7d74311
https://www.pythonguis.com/tutorials/pyqt6-qml-qtquick-python-application/

Different approach
https://realpython.com/python-pyqt-gui-calculator/

'''

import sys
import os
from time import strftime, gmtime # if you need time <real>

from PyQt6.QtWidgets import QApplication, QWidget

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml  import QQmlApplicationEngine
from PyQt6.QtQuick import QQuickWindow

# step 3 time2update
from PyQt6.QtCore import QObject, pyqtSignal
import threading
from time import sleep

class Backend(QObject):
        def __init__(self):
                QObject.__init__(self)

        updated = pyqtSignal(str, arguments=['updater'])

        def updater(self, curr_time):
                self.updated.emit(curr_time)
            

        def bootUp(self):
                t_thread = threading.Thread(target=self._bootUp)
                t_thread.daemon = True
                t_thread.start()

        def _bootUp(self):
                while True:
                        curr_time = strftime("%H:%M:%S", gmtime())
                        self.updater(curr_time)  # step3
                        sleep(0.1)  # step3
                        #print(curr_time)
                        #sleep(1)

QQuickWindow.setSceneGraphBackend('software')
# step 3 end


curr_time = strftime("%H:%M:%S", gmtime())  # if you need time <real>

QQuickWindow.setSceneGraphBackend('software')  # step 3
# time ----------------------------------------------------^


app = QGuiApplication(sys.argv)

engine = QQmlApplicationEngine()
engine.quit.connect(app.quit)
engine.load('./UI/main.qml')



# time-------------------------------------------------------\/
# step 3
back_end = Backend()
engine.rootObjects()[0].setProperty('backend', back_end)
back_end.bootUp()
#step 3 end
# engine.rootObjects()[0].setProperty('currTime', curr_time)  # if you need time
# time ----------------------------------------------------------^


sys.exit(app.exec())


'''
Different approach
https://dev.to/codesharedot/best-python-framework-for-building-a-desktop-application-and-gui-58n5
https://towardsdatascience.com/5-python-gui-frameworks-to-create-desktop-web-and-even-mobile-apps-c25f1bcfb561


TKINTER 
https://pythonistaplanet.com/how-to-create-a-desktop-application-using-python/

'''