#Create a simulator object
set ns [new Simulator]
#        n1                    n3/sink3
#         \                   /
# 10Mb,2ms \  0.5Mb,10ms     /
#           r1------------r2
# 10Mb,3ms /                \
#         /                  \
#        n2                   n4/sink4


$ns rtproto DV

set nf [open out.nam w]

$ns namtrace-all $nf
$ns color 1 Blue
$ns color 2 Red

#Open the output files
#set fQueue [open tcp_queue.tr w]

#Define a 'finish' procedure
proc finish {} {
        global ns #fQueue
        $ns flush-trace

	#Close the trace file
	#close $fQueue
	#Execute nam on the trace file
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
$ns duplex-link $n1 $r1 10Mb 2ms DropTail 
$ns duplex-link $n2 $r1 10Mb 3ms DropTail 
$ns duplex-link $n3 $r2 10Mb 4ms DropTail
$ns duplex-link $n4 $r2 10Mb 5ms DropTail

$ns duplex-link $r1 $r2 10Mb 5ms DropTail 
$ns duplex-link-op $r1 $r2 queuePos 1

$ns queue-limit $r1 $r2   50B

#TCP Agents
set tcp1 [new Agent/TCP/Newreno]
$ns attach-agent $n2 $tcp1
set tcp2 [new Agent/TCP/Vegas]
$ns attach-agent $n1 $tcp2

$tcp1 set class_ 1
$tcp2 set class_ 2
$tcp1 set window_ 20
$tcp2 set window_ 20



set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1

set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2

#Create a Null agent (a traffic sink) and attach it to node n1
set sink3 [new Agent/TCPSink]
$ns attach-agent $n3 $sink3
set sink4 [new Agent/TCPSink]
$ns attach-agent $n4 $sink4

#Connect the traffic source with the traffic sink
$ns connect $tcp1 $sink3
$ns connect $tcp2 $sink4    

#Call the finish procedure after 5 seconds of simulation time
$ns at 5.5 "finish"

#Schedule events for the CBR agent
$ns at 0.1 "$ftp2 start"
$ns at 5 "$ftp2 stop"
#Schedule events for the CBR agent
$ns at 0.1 "$ftp1 start"
$ns at 5 "$ftp1 stop"

#Run the simulation
$ns run
