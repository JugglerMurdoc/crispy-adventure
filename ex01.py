f = open('ex01_100flows.tcl', 'w')
PACKET_SIZE = 1024
INTERVAL = 0.01
NODES_PER_ROUTER = 25
TOTAL_TIME = 10.0

def writeHeader():
	f.write('set ns [new Simulator]\n')
	f.write('set nf [open out_100.tr w]\n')
	f.write('proc finish {} {\n\tglobal nf f12 f13 f14 f23 f24 f34\n')
	f.write('\tclose $f12\n')
	f.write('\tclose $f13\n')
	f.write('\tclose $f14\n')
	f.write('\tclose $f23\n')
	f.write('\tclose $f24\n')
	f.write('\tclose $f34\n')
	f.write('\tclose $nf\n\texit 0\n}\n')
	f.write('set f12 [open f12.q w]\n')
	f.write('set f13 [open f13.q w]\n')
	f.write('set f14 [open f14.q w]\n')
	f.write('set f23 [open f23.q w]\n')
	f.write('set f24 [open f24.q w]\n')
	f.write('set f34 [open f34.q w]\n')
	
	
def connectAllNodesFromTo(startNode,target):
	for i in range(0,NODES_PER_ROUTER):
		f.write('$ns connect $udp'+getNodeId(startNode,i)+' $sink'+str(target)+'\n')

def writeFooter():
	f.write('$ns run\n')
	f.write('$ns at '+str(TOTAL_TIME)+' "finish"\n')

def getNodeId(routerId,currentIncrement):
	return str(routerId)+str(currentIncrement).zfill(2)

def defineNodes(number):
	f.write('set r'+str(number)+' [$ns node]\n')
	for i in range(0,NODES_PER_ROUTER):
		f.write('set n'+str(number)+str(i).zfill(2)+' [$ns node]\n')

def writeNodeRouterLink(routerId):
	for i in range(0,NODES_PER_ROUTER):
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
	f.write('$ns queue-limit $r1 $r2 5B\n')
	f.write('$ns queue-limit $r1 $r3 5B\n')
	f.write('$ns queue-limit $r1 $r4 5B\n')
	f.write('$ns queue-limit $r2 $r3 5B\n')
	f.write('$ns queue-limit $r2 $r4 5B\n')
	f.write('$ns queue-limit $r3 $r4 5B\n')
	
	f.write('$ns cost $r1 $r2 1\n')
	f.write('$ns cost $r1 $r3 1\n')
	f.write('$ns cost $r1 $r4 1\n')
	f.write('$ns cost $r2 $r3 1\n')
	f.write('$ns cost $r2 $r4 1\n')
	f.write('$ns cost $r3 $r4 1\n')
	
	f.write('$ns cost $r2 $r1 5\n')
	f.write('$ns cost $r3 $r1 1\n')
	f.write('$ns cost $r4 $r1 1\n')
	f.write('$ns cost $r3 $r2 10\n')
	f.write('$ns cost $r4 $r2 5\n')
	f.write('$ns cost $r4 $r3 1\n')

def writeAndAttachUdpAgents(routerId):
	for i in range(0,NODES_PER_ROUTER):
		f.write('set udp' +getNodeId(routerId,i) +' [new Agent/UDP]\n')
		f.write('$ns attach-agent $n'+getNodeId(routerId,i)+ ' $udp'+getNodeId(routerId,i)+'\n')

def writeAndAttachAllUdpAgents():
	for i in range(1,5):
		writeAndAttachUdpAgents(i)

def writeAllCBRTrafficSource():
	for i in range(1,5):
		createCBRTrafficSource(i)

def createCBRTrafficSource(nodeId):
	for i in range(0,NODES_PER_ROUTER):
		f.write('set cbr'+getNodeId(nodeId,i)+' [new Application/Traffic/CBR]\n')
		f.write('$cbr'+getNodeId(nodeId,i)+' set packetSize_ '+str(PACKET_SIZE)+'\n')
		f.write('$cbr'+getNodeId(nodeId,i)+' set interval_ '+str(INTERVAL)+'\n')
		f.write('$cbr'+getNodeId(nodeId,i)+' attach-agent $udp'+getNodeId(nodeId,i)+'\n')

def writeAllSinks():
	for i in range(1,5):
		f.write('set sink'+str(i)+' [new Agent/LossMonitor]\n')
		f.write('$ns attach-agent $r'+str(i)+' $sink'+str(i)+'\n')

def writeAllUdpConnections():
	connectAllNodesFromTo(1,2)
	connectAllNodesFromTo(2,1)
	connectAllNodesFromTo(3,2)
	connectAllNodesFromTo(4,2)

def writeAllCBRStart():
	for i in range(0, NODES_PER_ROUTER):
		for j in range(1,5):
			f.write('$ns at '+str(float(i)/10.0 + 0.1)+' "$cbr'+getNodeId(j,i)+' start"\n')
			f.write('$ns at '+str(TOTAL_TIME - 0.5)+' "$cbr'+getNodeId(j,i)+' stop"\n')
	
def writeAllQueueMonitors():
	for i in range(1,5):
		for j in range(i,5):
			if j != i:
				f.write('$ns trace-queue $r'+str(i)+' $r'+str(j)+'  $f'+str(i)+str(j) +'\n')
				f.write('$ns trace-queue $r'+str(j)+' $r'+str(i)+'  $f'+str(i)+str(j) +'\n')
				

#HEADER
f.write('\n#HEADER\n')
writeHeader()

#TOPOLOGY
f.write('\n#NODES\n')
defineAllNodes()
f.write('\n#LINKS\n')
writeAllNodeRouterLinks()
writeInterRouterLinks(' 20MB 10ms DropTail')

#FLOWS
f.write('\n#UDP AGENTS\n')
writeAndAttachAllUdpAgents()
f.write('\n#SINKS\n')
writeAllSinks()
f.write('\n#UDP CONNECTIONS\n')
writeAllUdpConnections()
f.write('\n#CBR\n')
writeAllCBRTrafficSource()

#MONITORING
f.write('\n#QUEUE MONITORS\n')
writeAllQueueMonitors()

#START
writeAllCBRStart()


#FOOTER
f.write('\n#RUN\n')
writeFooter()	
