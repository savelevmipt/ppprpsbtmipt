from fastapi import FastAPI
import time
app = FastAPI()

CALLS = 0

@app.get("/time")
def read_time():
    named_tuple = time.localtime()
    global CALLS
    CALLS += 1
    return time.strftime("%m/%d/%Y, %H:%M:%S", named_tuple)

@app.get("/statistics")
def get_statistics():
    return CALLS

