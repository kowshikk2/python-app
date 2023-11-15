LED_PIN=17

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setup(LED_PIN,GPIO.OUT)
try:
    while True:
        GPIO.output(LED_PIN,GPIO.HIGH)
        time.sleep(0.3)
        GPIO.output(LED_PIN,GPIO.LOW)
        time.sleep(0.3)
except KeyboardInterrupt:    
    GPIO.cleanup()
