import times
import locations
import csv
import random

# Start times for each block
TIMINGDICT = {'ON' : [60, 830, 445], 'OFF' : [445, 60, 830]}

class Subject(object):
    def __init__(self, subjectid):
        self.subjectid = subjectid
        # Gather the possible X and y coordinates as dict
        self.coords = locations.get_coords("input/xcoordloc.csv", locations.get_ycoordinates("input/ycoord.csv"))
        # Generate a list of shuffled (but enumerated) locations
        self.random_locations = locations.shuffle_locations(self.coords)
        self.getofftimes()
        self.getontimes()
        self.getfinaldict()

    def getofftimes(self):
        # List of PDT times for no interruption trials 
        offtimes = []
        offtimes.append(times.generatetimes(27, TIMINGDICT['OFF'][0]))
        offtimes.append(times.generatetimes(26, TIMINGDICT['OFF'][1]))
        offtimes.append(times.generatetimes(27, TIMINGDICT['OFF'][2]))
        self.offtimes = [i for s in offtimes for i in s]

    def getontimes(self):
        # List PDT times for the interruption trials
        ontimes = []
        ontimes.append(times.generatetimes(26, TIMINGDICT['ON'][0]))
        ontimes.append(times.generatetimes(27, TIMINGDICT['ON'][1]))
        ontimes.append(times.generatetimes(27, TIMINGDICT['ON'][2]))
        self.ontimes = [i for s in ontimes for i in s]

    def getfinaldict(self):
        # Now we want a dict that we can reference on and off time by the order index
        timeorderdict = {'on' : {}, 'off' : {}}
        for i in range(80):
            timeorderdict['on'][i+1] = {'time' : self.ontimes[i], 'locationinfo' : None}
            timeorderdict['off'][i+1] = {'time' : self.offtimes[i], 'locationinfo' : None}

        # Now randomly assign a location ID to each time ID for interruption
        for cond in ["on", "off"]:
            random.shuffle(self.random_locations)
            for key, val in timeorderdict[cond].items():
                val['locationinfo'] = self.random_locations[key-1]

        self.finaldict = timeorderdict
        return self.finaldict

    def writeout(self):
        o = open('subj_%s.csv' % (self.subjectid), 'w+', newline='')
        csvo = csv.writer(o)
        csvo.writerow(['INT', 'ORDERID', 'TIME', 'LOCATIONID', 'LOCATION', "X", "Y"])
        for key, val in self.finaldict.items():
            for subkey, subval in val.items():
                sl = subval['locationinfo']
                csvo.writerow([key, subkey, subval['time'], sl[0], sl[1], sl[2], sl[3]])
        o.close()

mainpart = Subject("test")
mainpart.writeout()