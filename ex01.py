f = open('ex01_script.tcl', 'w')

def writeHeader():
	f.write('set ns [new Simulator]\n')
	f.write('proc finish {} {\n\texit 0\n}\n')

def getNodeId(routerId,currentIncrement):
	return str(routerId)+str(currentIncrement).zfill(2)

def defineNodes(number):
	f.write('set r'+str(number)+' [$ns node]\n')
	for i in range(0,25):
		f.write('set n'+str(number)+str(i).zfill(2)+' [$ns node]\n')

def writeNodeRouterLink(routerId):
	for i in range(0,25):
		f.write('$ns duplex-link $r'+str(routerId)+' $n'+str(routerId)+ str(i).zfill(2)+' 1Mb 10ms DropTail\n')

def writeAllNodeRouterLinks():
	for i in range(1,5):
		writeNodeRouterLink(i)

def defineAllNodes():
	for i in range(1,5):
		defineNodes(i)

def writeInterRouterLinks(linkParameters):
	f.write('$ns duplex-link $r1 $r2'+linkParameters+'\n')
	f.write('$ns duplex-link $r1 $r3'+linkParameters+'\n')
	f.write('$ns duplex-link $r1 $r4'+linkParameters+'\n')
	f.write('$ns duplex-link $r2 $r3'+linkParameters+'\n')
	f.write('$ns duplex-link $r2 $r4'+linkParameters+'\n')
	f.write('$ns duplex-link $r3 $r4'+linkParameters+'\n')

def writeAndAttachUdpAgents(routerId):
	for i in range(0,25):
		f.write('set udp' +getNodeId(routerId,i) +' [new Agent/UDP]\n')
		f.write('$ns attach-agent $n'+getNodeId(routerId,i)+ ' $udp'+getNodeId(routerId,i)+'\n')

def writeAndAttachAllUdpAgents():
	for i in range(1,5):
		writeAndAttachUdpAgents(i)


writeHeader()

#Topologie
defineAllNodes()
writeAllNodeRouterLinks()
writeInterRouterLinks(' 1Mb 10ms DropTail')

#UDP Flows
writeAndAttachAllUdpAgents()
