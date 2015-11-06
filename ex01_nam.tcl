#Create a simulator object
set ns [new Simulator]
#        n1               
#         \               
# 1Mb,10ms \  1Mb,10ms  
#           n0------------n3
# 1Mb,10ms /              
#         /               
#        n2               


set nf [open out.nam w]
$ns namtrace-all $nf
$ns color 1 Blue
$ns color 2 Red

#Define a 'finish' procedure
proc finish {} {
        global ns nf f0 f1 fQueue
        $ns flush-trace
	#Execute nam on the trace file
 	exec nam out.nam &
        exit 0
}

#Create two nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

#Create a duplex link between the nodes
$ns duplex-link $n0 $n1 1Mb 10ms DropTail
$ns duplex-link $n0 $n2 1Mb 10ms DropTail
$ns duplex-link $n0 $n3 1.5Mb 10ms DropTail
$ns duplex-link-op $n0 $n3 queuePos 1
$ns queue-limit $n0 $n3 5Mb 


$ns duplex-link-op $n0 $n1 orient left
$ns duplex-link-op $n0 $n2 orient right
$ns duplex-link-op $n0 $n3 orient down

#Create a UDP agent and attach it to node n0
set udp1 [new Agent/UDP]
$ns attach-agent $n1 $udp1
set udp2 [new Agent/UDP]
$ns attach-agent $n2 $udp2

$udp1 set class_ 1
$udp2 set class_ 2

# Create a CBR traffic source and attach it to udp0
set cbr0 [new Application/Traffic/CBR]
$cbr0 set packetSize_ 500B
$cbr0 set interval_ 0.005
$cbr0 attach-agent $udp1
set cbr1 [new Application/Traffic/CBR]
$cbr1 set packetSize_ 500B
$cbr1 set interval_ 0.005
$cbr1 attach-agent $udp2

#Create a Null agent (a traffic sink) and attach it to node n1
set sink0 [new Agent/LossMonitor]
$ns attach-agent $n3 $sink0
set sink1 [new Agent/LossMonitor]
$ns attach-agent $n3 $sink1

#Connect the traffic source with the traffic sink
$ns connect $udp1 $sink0
$ns connect $udp2 $sink1    

#Call the finish procedure after 5 seconds of simulation time
$ns at 5.0 "finish"

#Schedule events for the CBR agent
$ns at 0.2 "$cbr0 start"
$ns at 5.0 "$cbr0 stop"
#Schedule events for the CBR agent
$ns at 0.2 "$cbr1 start"
$ns at 5.0 "$cbr1 stop"

#Run the simulation
$ns run
