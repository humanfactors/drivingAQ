#!/usr/bin/python3
import random

INTERVAL = (10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14, 14.5, 15, 
            10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14)
THRESHOLD = 325

def threshold(t):
    """Set CONST threshold to given value"""
    global THRESHOLD
    THRESHOLD = t

def choose(i, k, thresh):
    """Sample from set i, k times, ensuring sum of k !> threshold"""
    if min(i) * k >= thresh: raise ValueError
    l = [thresh]
    while sum(l) >= thresh:
        l = random.choices(i, k=k)
    return l

def finalsample(i, k, thresh):
    intervals = list(i)
    randomadds = choose(i, k - len(i), THRESHOLD - sum(i))
    intervals.extend(randomadds)
    random.shuffle(intervals)
    return intervals

def generatetimes(ndots, starttime):
    """Generate n PDT dots, starting from a baseline time, incrementing by an interval"""
    cumsum, sample = starttime, finalsample(INTERVAL, ndots, THRESHOLD)
    timesid = []
    for i in range(ndots):
        timesid.append(cumsum)
        cumsum += sample[i]
    return timesid


if __name__ == "__main__":
    TIMINGDICT = {'ON' : [60, 830, 445], 'OFF' : [445, 60, 830]}
    # s1 = (finalsample(INTERVAL, 26, THRESHOLD))
    # print(s1, sum(s1))
    # s2 = (finalsample(INTERVAL, 27, THRESHOLD))
    # print(s2, sum(s2))