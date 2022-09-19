import time

import cv2 as cv
import mss
import numpy
import numpy as np

with mss.mss() as sct:
    monitor = {"top": 0, "left": 0, "width": 100, "height": 100}

    while "Screen capturing":
        last_time = time.time()

        img = numpy.array(sct.grab(monitor))

        img = cv.cvtColor(np.array(img), cv.COLOR_BGR2GRAY)

        tpl = cv.imread("slack.png")
        tpl = cv.cvtColor(tpl, cv.COLOR_BGR2GRAY)

        result = cv.matchTemplate(img, tpl, cv.TM_SQDIFF)

        cv.normalize(result, result, 0, 1, cv.NORM_MINMAX, -1)

        _minVal, _maxVal, minLoc, maxLoc = cv.minMaxLoc(result, None)

        matchLoc = minLoc

        cv.rectangle(img, matchLoc, (matchLoc[0] + tpl.shape[0], matchLoc[1] + tpl.shape[1]), (123, 33, 0), 2, 8, 0)
        cv.imshow("image_window", img)

        if cv.waitKey(25) & 0xFF == ord("q"):
            cv.destroyAllWindows()
            break
