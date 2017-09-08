import times
import locations
import csv
import random

TIMINGDICT = {'ON' : [60, 830, 445], 'OFF' : [445, 60, 830]}

coords = locations.get_coords("input/xcoordloc.csv", locations.get_ycoordinates("input/ycoord.csv"))
random_locations = locations.shuffle_locations(coords)
# print(random_locations)

offtimes = []
offtimes.append(times.generatetimes(27, TIMINGDICT['OFF'][0]))
offtimes.append(times.generatetimes(26, TIMINGDICT['OFF'][1]))
offtimes.append(times.generatetimes(27, TIMINGDICT['OFF'][2]))
offtimes = [i for s in offtimes for i in s]

ontimes = []
ontimes.append(times.generatetimes(26, TIMINGDICT['ON'][0]))
ontimes.append(times.generatetimes(27, TIMINGDICT['ON'][1]))
ontimes.append(times.generatetimes(27, TIMINGDICT['ON'][2]))
ontimes = [i for s in ontimes for i in s]

timedict = {'on' : {}, 'off' : {}}
for i in range(80):
    timedict['on'][i+1] = offtimes[i]
    timedict['off'][i+1] = ontimes[i]


print(timedict)
    

# print(ontimes)
# with open('test.csv', 'w+', newline='') as o:
#     w = csv.writer(o)
#     for list in random_locations:
#         w.writerow(list)
