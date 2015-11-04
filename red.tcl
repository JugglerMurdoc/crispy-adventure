#Create a simulator object
set ns [new Simulator]
#        n1                   n3
#         \                  /
# 1Mb,10ms \  1Mb,10ms      /
#           r1------------r2
# 1Mb,10ms /                \
#         /                  \
#        n2                   n4


$ns rtproto DV

set nf [open out.nam w]

$ns namtrace-all $nf
$ns color 1 Blue
$ns color 2 Red

#Open the output files
set fQueue [open tcp_queue.tr w]

#Define a 'finish' procedure
proc finish {} {
        global ns nf f0 f1 fQueue
        #$ns flush-trace

	#Close the trace file
	close $fQueue
	Execute nam on the trace file
 	exec nam out.nam &
        exit 0
}

#Create six nodes
set r1 [$ns node]
set r2 [$ns node]

set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]

#Create a duplex link between the nodes
$ns duplex-link $r1 $n1 1Mb 10ms DropTail
$ns duplex-link $r1 $n2 1Mb 10ms DropTail
$ns duplex-link $r1 $n3 1Mb 10ms DropTail
$ns duplex-link $r1 $n4 1Mb 10ms DropTail

$ns duplex-link $r1 $r2 1Mb 10ms DropTail

$ns queue-limit $r1 $r2   100B

#Create a tcp agent and attach it to node r1
set tcp1 [new Agent/TCP/Tahoe]
$ns attach-agent $n1 $tcp1
set tcp2 [new Agent/TCP/Vegas]
$ns attach-agent $n2 $tcp2

$tcp1 set class_ 1
$tcp2 set class_ 2

set cbr0 [new Application/Traffic/CBR]
$cbr0 set packetSize_ 500B
$cbr0 set interval_ 0.005
$cbr0 attach-agent $tcp1
set cbr1 [new Application/Traffic/CBR]
$cbr1 set packetSize_ 500B
$cbr1 set interval_ 0.005
$cbr1 attach-agent $tcp2

#Create a Null agent (a traffic sink) and attach it to node n1
$ns attach-agent $n3 $sink0
$ns attach-agent $n4 $sink1

#Connect the traffic source with the traffic sink
$ns connect $tcp1 $sink0
$ns connect $tcp2 $sink1    


#Call the finish procedure after 5 seconds of simulation time
$ns at 5.0 "finish"

#Schedule events for the CBR agent
$ns at 0.1 "$cbr0 start"
$ns at 10.0 "$cbr0 stop"
#Schedule events for the CBR agent
$ns at 0.1 "$cbr1 start"
$ns at 10.0 "$cbr1 stop"

#Run the simulation
$ns run
