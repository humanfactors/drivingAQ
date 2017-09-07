#!/usr/bin/python3
import random

INTERVAL = (10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14, 14.5, 15)
THRESHOLD = 325

def threshold(t):
    global THRESHOLD
    THRESHOLD = t

def choose(i, k, thresh):
    if min(i) * k >= thresh: raise ValueError
    l = [thresh]
    while sum(l) >= thresh:
        l = random.choices(i, k=k)
    return l

def generatetimes(ndots, starttime):
    cumsum, sample  = starttime, choose(INTERVAL, ndots, THRESHOLD)
    timesid = []
    for i in range(ndots):
        timesid.append(cumsum)
        cumsum += sample[i]
    return timesid

if __name__ == "__main__":
    TIMINGDICT = {'ON' : [60, 830, 445], 'OFF' : [445, 60, 830]}
    b1 = (generatetimes(27, TIMINGDICT['OFF'][0]))
    b2 = (generatetimes(26, TIMINGDICT['OFF'][1]))
    b3 = (generatetimes(27, TIMINGDICT['OFF'][2]))
    for i in b3:
        print(i)