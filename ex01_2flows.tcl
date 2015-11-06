#Create a simulator object
set ns [new Simulator]
#        n1               
#         \               
# 1Mb,10ms \  1.5Mb,10ms  
#           n0------------n3
# 1Mb,10ms /              
#         /               
#        n2               


#Open the output files
set f0 [open udp0.tr w]
set f1 [open udp1.tr w]
set fQueue [open udp.q w]

#Define a 'finish' procedure
proc finish {} {
        global nf f0 f1
	#Close the trace file
        close $f0
	close $f1
        exit 0
}

#Create two nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

#Create a duplex link between the nodes
$ns duplex-link $n0 $n1 1MB 10ms DropTail
$ns duplex-link $n0 $n2 1MB 10ms DropTail
$ns duplex-link $n0 $n3 1.5MB 10ms DRR
$ns duplex-link-op $n0 $n3 queuePos 1
$ns queue-limit $n0 $n3 2MB 


#Create a UDP agent and attach it to node n0
set udp1 [new Agent/UDP]
$ns attach-agent $n1 $udp1
set udp2 [new Agent/UDP]
$ns attach-agent $n2 $udp2

$udp1 set class_ 1
$udp2 set class_ 2

# Create a CBR traffic source and attach it to udp0
set cbr0 [new Application/Traffic/CBR]
$cbr0 set packetSize_ 1024B
$cbr0 set interval_ 0.0009765625
$cbr0 attach-agent $udp1
set cbr1 [new Application/Traffic/CBR]
$cbr1 set packetSize_ 1024B
$cbr1 set interval_ 0.0009765625
$cbr1 attach-agent $udp2

#Create a Null agent (a traffic sink) and attach it to node n1
set sink0 [new Agent/LossMonitor]
$ns attach-agent $n3 $sink0
set sink1 [new Agent/LossMonitor]
$ns attach-agent $n3 $sink1

#Connect the traffic source with the traffic sink
$ns connect $udp1 $sink0
$ns connect $udp2 $sink1    

#Set queue monitor
set qm [$ns monitor-queue $n0 $n3 $fQueue 0.2];

#Define a procedure which periodically records the bandwidth received by the
#three traffic sinks sink0/1/2 and writes it to the three files f0/1/2.
proc record {} {
        global sink0 sink1 f0 f1 
	#Get an instance of the simulator
	set ns [Simulator instance]
	#Set the time after which the procedure should be called again
        set time 0.1
	#How many bytes have been received by the traffic sinks?
        set bw0 [$sink0 set bytes_]
        set bw1 [$sink1 set bytes_]
	#Get the current time
        set now [$ns now]
	#Calculate the bandwidth (in MBit/s) and write it to the files
        puts $f0 "$now [expr $bw0/$time/1000000]"
        puts $f1 "$now [expr $bw1/$time/1000000]"
	#Reset the bytes_ values on the traffic sinks
        $sink0 set bytes_ 0
        $sink1 set bytes_ 0
	#Re-schedule the procedure
        $ns at [expr $now+$time] "record"
}

#Call the finish procedure after 5 seconds of simulation time
$ns at 16.0 "finish"
#Schedule events for the CBR agent
$ns at 0.5 "$cbr0 start"
$ns at 15.0 "$cbr0 stop"
#Schedule events for the CBR agent
$ns at 3.0 "$cbr1 start"
$ns at 15.0 "$cbr1 stop"
#Start queue monitoring
[$ns link $n0 $n3] queue-sample-timeout
#Start logging the received bandwidth
$ns at 0.0 "record"

#Run the simulation
$ns run
