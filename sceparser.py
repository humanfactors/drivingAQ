import re
import subjectcall

# Load the scenario part templates
scepart1 = open("input/aqPart1.sce")
scepart2 = open("input/aqPart2.sce")

# Set the search templates
ISISTR = "LABEL=\"Task: ISI\""
ONISTR = "Rule: Turn on image"
VALSTR = re.compile(r"\t\t\t\t\t\t\tVALUE")
POSXSTR = re.compile(r"^\t\t\t\t\t\tTYPEOF PARAMETER \(SCREEN_XPOSITION\)")
POSYSTR = re.compile(r"^\t\t\t\t\t\tTYPEOF PARAMETER \(SCREEN_YPOSITION\)")

# Set the counters and switches
switch = 0
counter = 0
lastswitch = None

def valuesub(line, replacement):
    sub = re.sub(r"(\d+(\.\d+)?)", replacement, line)
    return sub


testsubj = subjectcall.Subject("LASTTEST")
testout = open("output/testfull1.sce", 'w')

for line in scepart1:

    if ISISTR in line:
        counter += 1
        lookup = subjectcall.DOTLOOKUPDICT[str(counter)]
        trialinfo = testsubj.finaldict[lookup[0]][int(lookup[1])]
        trialtime = trialinfo['time']
        xposition = trialinfo['locationinfo'][2]
        yposition = trialinfo['locationinfo'][3]

    if ISISTR in line or ONISTR in line:
        switch = 1
        lastswitch = "time"

    if re.search(POSYSTR, line):
        switch = 1
        lastswitch = "y"

    if re.search(POSXSTR, line):
        switch = 1
        lastswitch = "x"

    elif re.match(VALSTR, line) and switch == 1:
        switch = 0
        if lastswitch == 'time':
            line = valuesub(line, str(trialtime))
            print("Time", line)
        elif lastswitch == 'y':
            line = valuesub(line, str(yposition))
            print("Y Pos", line)
        elif lastswitch == 'x':
            line = valuesub(line, str(xposition))
            print("X Pos", line)

    testout.write(line)

testsubj.writeout()
testout.close()