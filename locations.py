"""AQDRIVING PDT Functions"""
import csv
import random
import times

def main():
    pass
    # y = get_ycoordinates("input/ycoord.csv")
    # coords = get_coords("input/xcoordloc.csv", y)
    # random_locations = shuffle_locations(coords)
    # with open('test.csv', 'w+', newline='') as o:
    #     w = csv.writer(o)
    #     for list in random_locations:
    #         w.writerow(list)
    # print(random_locations)

def get_ycoordinates(filename):
    """Transforms CSV file of Y coordinates (new line seperated) to list"""
    with open(filename) as o:
        y = [float(item) for sublist in csv.reader(o) for item in sublist]
    return y

def get_coords(filename, ylist):
    """Transforms CSV file of X coordinates + AQ Location (new line seperated) & Y coords to a to dict """
    locationdict = {'1' : [], '2' : [], '3' : [], '4': []}
    with open(filename) as o:
        for i in [sublist for sublist in csv.reader(o)]:
            locationdict[i[0]].append(float(i[1]))
    for key, value in locationdict.items():
         locationdict[key] = list(zipshufflecoords(value, ylist))
    return locationdict

def zipshufflecoords(xlist, ylist):
    """Given two sets, assuming they are same length, try and zip them"""
    random.shuffle(ylist)
    if len(xlist) != len(ylist): raise TypeError
    return zip(xlist, ylist)

def shuffle_locations(locationdict):
    """Transform all location lists to a master list - returns shuffled"""
    locationlist = []
    for k, v in locationdict.items():
        for location in v:
            locationlist.append([k, location[0], location[1]])
    random.shuffle(locationlist)
    enumerate_ids(locationlist)
    return locationlist

def enumerate_ids(locationlist):
    """For a given list of locations, give them all an ID"""
    counter = 1
    for location in locationlist:
        location.insert(0,"LOCID%s" % (counter))
        counter+=1
    return locationlist

if __name__ == "__main__":
    main()