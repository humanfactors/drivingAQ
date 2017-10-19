import re
import subjectcall


# Set the search templates
ISISTR = "LABEL=\"Task: ISI\""
ONISTR = "LABEL=\"Rule: Turn on image\""
OFFISTR = "Rule: Turn off image (2s timeout)"
VALSTR = re.compile(r"\t\t\t\t\t\t\tVALUE")
VALSTROFF = re.compile(r"\t\t\t\t\t\t\t\t\tVALUE")
POSXSTR = re.compile(r"^\t\t\t\t\t\tTYPEOF PARAMETER \(SCREEN_XPOSITION\)")
POSYSTR = re.compile(r"^\t\t\t\t\t\tTYPEOF PARAMETER \(SCREEN_YPOSITION\)")


def valuesub(line, replacement):
    sub = re.sub(r"(\d+(\.\d+)?)", replacement, line)
    return sub


for subjectid in range(1,21):
        
    # Load the scenario part templates
    scepart1 = open("input/aqFinalPart1.sce")
    scepart2 = open("input/aqFinalPart2.sce")

    # Set the counters and switches
    switch = 0
    counter = 0
    lastswitch = None


    subj = subjectcall.Subject("P%s" % subjectid)
    testout = open("output/pid%s_aq1.sce" % (subjectid), 'w')

    for line in scepart1:

        if ISISTR in line:
            counter += 1
            lookup = subjectcall.DOTLOOKUPDICT[str(counter)]
            trialinfo = subj.finaldict[lookup[0]][int(lookup[1])]
            trialtime = trialinfo['time']
            xposition = trialinfo['locationinfo'][2]
            yposition = trialinfo['locationinfo'][3]

        if ISISTR in line or ONISTR in line:
            switch = 1
            lastswitch = "time"

        if OFFISTR in line:
            switch = 1
            lastswitch = "offtime"

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
                # print("Time", line)
            elif lastswitch == 'y':
                line = valuesub(line, str(yposition))
                # print("Y Pos", line)
            elif lastswitch == 'x':
                line = valuesub(line, str(xposition))
                # print("X Pos", line)
        
        elif re.match(VALSTROFF, line) and switch == 1:
            switch = 0
            if lastswitch == "offtime":
                line = valuesub(line, str(trialtime))
                # print("made it")
        testout.write(line)

    testout.close()
    testout = open("output/pid%s_aq2.sce" % (subjectid), 'w')

    for line in scepart2:

        if ISISTR in line:
            counter += 1
            lookup = subjectcall.DOTLOOKUPDICT[str(counter)]
            trialinfo = subj.finaldict[lookup[0]][int(lookup[1])]
            trialtime = trialinfo['time']
            xposition = trialinfo['locationinfo'][2]
            yposition = trialinfo['locationinfo'][3]

        if ISISTR in line or ONISTR in line:
            switch = 1
            lastswitch = "time"

        if OFFISTR in line:
            switch = 1
            lastswitch = "offtime"

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
                # print("Time", line)
            elif lastswitch == 'y':
                line = valuesub(line, str(yposition))
                # print("Y Pos", line)
            elif lastswitch == 'x':
                line = valuesub(line, str(xposition))
                # print("X Pos", line)
        
        elif re.match(VALSTROFF, line) and switch == 1:
            switch = 0
            if lastswitch == "offtime":
                line = valuesub(line, str(trialtime))
                # print("made it")

        testout.write(line)
    subj.writeout()
    testout.close()