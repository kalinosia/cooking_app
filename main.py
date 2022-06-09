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



app = QGuiApplication(sys.argv)

engine = QQmlApplicationEngine()
engine.quit.connect(app.quit)
engine.load('./UI/view_rec.qml')


sys.exit(app.exec())
'''
# https://www.pythonguis.com/pyqt6-tutorial/

import sys

from PyQt6.QtCore import QSize, Qt
from PyQt6.QtGui import QAction
from PyQt6.QtWidgets import QApplication, QLabel, QMainWindow, QMenu

# Subclass QMainWindow to customize your application's main window

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

    def contextMenuEvent(self, e):
        context = QMenu(self)
        context.addAction(QAction("test 1", self))
        context.addAction(QAction("test 2", self))
        context.addAction(QAction("test 3", self))
        context.exec(e.globalPos())

app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec()
'''
'''
Different approach
https://dev.to/codesharedot/best-python-framework-for-building-a-desktop-application-and-gui-58n5
https://towardsdatascience.com/5-python-gui-frameworks-to-create-desktop-web-and-even-mobile-apps-c25f1bcfb561


TKINTER 
https://pythonistaplanet.com/how-to-create-a-desktop-application-using-python/

'''