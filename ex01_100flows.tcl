
#HEADER
set ns [new Simulator]
set nf [open out_100.tr w]
proc finish {} {
	global nf f12 f13 f14 f23 f24 f34
	close $f12
	close $f13
	close $f14
	close $f23
	close $f24
	close $f34
	close $nf
	exit 0
}
set f12 [open f12.q w]
set f13 [open f13.q w]
set f14 [open f14.q w]
set f23 [open f23.q w]
set f24 [open f24.q w]
set f34 [open f34.q w]

#NODES
set r1 [$ns node]
set n100 [$ns node]
set n101 [$ns node]
set n102 [$ns node]
set n103 [$ns node]
set n104 [$ns node]
set n105 [$ns node]
set n106 [$ns node]
set n107 [$ns node]
set n108 [$ns node]
set n109 [$ns node]
set n110 [$ns node]
set n111 [$ns node]
set n112 [$ns node]
set n113 [$ns node]
set n114 [$ns node]
set n115 [$ns node]
set n116 [$ns node]
set n117 [$ns node]
set n118 [$ns node]
set n119 [$ns node]
set n120 [$ns node]
set n121 [$ns node]
set n122 [$ns node]
set n123 [$ns node]
set n124 [$ns node]
set r2 [$ns node]
set n200 [$ns node]
set n201 [$ns node]
set n202 [$ns node]
set n203 [$ns node]
set n204 [$ns node]
set n205 [$ns node]
set n206 [$ns node]
set n207 [$ns node]
set n208 [$ns node]
set n209 [$ns node]
set n210 [$ns node]
set n211 [$ns node]
set n212 [$ns node]
set n213 [$ns node]
set n214 [$ns node]
set n215 [$ns node]
set n216 [$ns node]
set n217 [$ns node]
set n218 [$ns node]
set n219 [$ns node]
set n220 [$ns node]
set n221 [$ns node]
set n222 [$ns node]
set n223 [$ns node]
set n224 [$ns node]
set r3 [$ns node]
set n300 [$ns node]
set n301 [$ns node]
set n302 [$ns node]
set n303 [$ns node]
set n304 [$ns node]
set n305 [$ns node]
set n306 [$ns node]
set n307 [$ns node]
set n308 [$ns node]
set n309 [$ns node]
set n310 [$ns node]
set n311 [$ns node]
set n312 [$ns node]
set n313 [$ns node]
set n314 [$ns node]
set n315 [$ns node]
set n316 [$ns node]
set n317 [$ns node]
set n318 [$ns node]
set n319 [$ns node]
set n320 [$ns node]
set n321 [$ns node]
set n322 [$ns node]
set n323 [$ns node]
set n324 [$ns node]
set r4 [$ns node]
set n400 [$ns node]
set n401 [$ns node]
set n402 [$ns node]
set n403 [$ns node]
set n404 [$ns node]
set n405 [$ns node]
set n406 [$ns node]
set n407 [$ns node]
set n408 [$ns node]
set n409 [$ns node]
set n410 [$ns node]
set n411 [$ns node]
set n412 [$ns node]
set n413 [$ns node]
set n414 [$ns node]
set n415 [$ns node]
set n416 [$ns node]
set n417 [$ns node]
set n418 [$ns node]
set n419 [$ns node]
set n420 [$ns node]
set n421 [$ns node]
set n422 [$ns node]
set n423 [$ns node]
set n424 [$ns node]

#LINKS
$ns duplex-link $r1 $n100 1Mb 10ms DropTail
$ns duplex-link $r1 $n101 1Mb 10ms DropTail
$ns duplex-link $r1 $n102 1Mb 10ms DropTail
$ns duplex-link $r1 $n103 1Mb 10ms DropTail
$ns duplex-link $r1 $n104 1Mb 10ms DropTail
$ns duplex-link $r1 $n105 1Mb 10ms DropTail
$ns duplex-link $r1 $n106 1Mb 10ms DropTail
$ns duplex-link $r1 $n107 1Mb 10ms DropTail
$ns duplex-link $r1 $n108 1Mb 10ms DropTail
$ns duplex-link $r1 $n109 1Mb 10ms DropTail
$ns duplex-link $r1 $n110 1Mb 10ms DropTail
$ns duplex-link $r1 $n111 1Mb 10ms DropTail
$ns duplex-link $r1 $n112 1Mb 10ms DropTail
$ns duplex-link $r1 $n113 1Mb 10ms DropTail
$ns duplex-link $r1 $n114 1Mb 10ms DropTail
$ns duplex-link $r1 $n115 1Mb 10ms DropTail
$ns duplex-link $r1 $n116 1Mb 10ms DropTail
$ns duplex-link $r1 $n117 1Mb 10ms DropTail
$ns duplex-link $r1 $n118 1Mb 10ms DropTail
$ns duplex-link $r1 $n119 1Mb 10ms DropTail
$ns duplex-link $r1 $n120 1Mb 10ms DropTail
$ns duplex-link $r1 $n121 1Mb 10ms DropTail
$ns duplex-link $r1 $n122 1Mb 10ms DropTail
$ns duplex-link $r1 $n123 1Mb 10ms DropTail
$ns duplex-link $r1 $n124 1Mb 10ms DropTail
$ns duplex-link $r2 $n200 1Mb 10ms DropTail
$ns duplex-link $r2 $n201 1Mb 10ms DropTail
$ns duplex-link $r2 $n202 1Mb 10ms DropTail
$ns duplex-link $r2 $n203 1Mb 10ms DropTail
$ns duplex-link $r2 $n204 1Mb 10ms DropTail
$ns duplex-link $r2 $n205 1Mb 10ms DropTail
$ns duplex-link $r2 $n206 1Mb 10ms DropTail
$ns duplex-link $r2 $n207 1Mb 10ms DropTail
$ns duplex-link $r2 $n208 1Mb 10ms DropTail
$ns duplex-link $r2 $n209 1Mb 10ms DropTail
$ns duplex-link $r2 $n210 1Mb 10ms DropTail
$ns duplex-link $r2 $n211 1Mb 10ms DropTail
$ns duplex-link $r2 $n212 1Mb 10ms DropTail
$ns duplex-link $r2 $n213 1Mb 10ms DropTail
$ns duplex-link $r2 $n214 1Mb 10ms DropTail
$ns duplex-link $r2 $n215 1Mb 10ms DropTail
$ns duplex-link $r2 $n216 1Mb 10ms DropTail
$ns duplex-link $r2 $n217 1Mb 10ms DropTail
$ns duplex-link $r2 $n218 1Mb 10ms DropTail
$ns duplex-link $r2 $n219 1Mb 10ms DropTail
$ns duplex-link $r2 $n220 1Mb 10ms DropTail
$ns duplex-link $r2 $n221 1Mb 10ms DropTail
$ns duplex-link $r2 $n222 1Mb 10ms DropTail
$ns duplex-link $r2 $n223 1Mb 10ms DropTail
$ns duplex-link $r2 $n224 1Mb 10ms DropTail
$ns duplex-link $r3 $n300 1Mb 10ms DropTail
$ns duplex-link $r3 $n301 1Mb 10ms DropTail
$ns duplex-link $r3 $n302 1Mb 10ms DropTail
$ns duplex-link $r3 $n303 1Mb 10ms DropTail
$ns duplex-link $r3 $n304 1Mb 10ms DropTail
$ns duplex-link $r3 $n305 1Mb 10ms DropTail
$ns duplex-link $r3 $n306 1Mb 10ms DropTail
$ns duplex-link $r3 $n307 1Mb 10ms DropTail
$ns duplex-link $r3 $n308 1Mb 10ms DropTail
$ns duplex-link $r3 $n309 1Mb 10ms DropTail
$ns duplex-link $r3 $n310 1Mb 10ms DropTail
$ns duplex-link $r3 $n311 1Mb 10ms DropTail
$ns duplex-link $r3 $n312 1Mb 10ms DropTail
$ns duplex-link $r3 $n313 1Mb 10ms DropTail
$ns duplex-link $r3 $n314 1Mb 10ms DropTail
$ns duplex-link $r3 $n315 1Mb 10ms DropTail
$ns duplex-link $r3 $n316 1Mb 10ms DropTail
$ns duplex-link $r3 $n317 1Mb 10ms DropTail
$ns duplex-link $r3 $n318 1Mb 10ms DropTail
$ns duplex-link $r3 $n319 1Mb 10ms DropTail
$ns duplex-link $r3 $n320 1Mb 10ms DropTail
$ns duplex-link $r3 $n321 1Mb 10ms DropTail
$ns duplex-link $r3 $n322 1Mb 10ms DropTail
$ns duplex-link $r3 $n323 1Mb 10ms DropTail
$ns duplex-link $r3 $n324 1Mb 10ms DropTail
$ns duplex-link $r4 $n400 1Mb 10ms DropTail
$ns duplex-link $r4 $n401 1Mb 10ms DropTail
$ns duplex-link $r4 $n402 1Mb 10ms DropTail
$ns duplex-link $r4 $n403 1Mb 10ms DropTail
$ns duplex-link $r4 $n404 1Mb 10ms DropTail
$ns duplex-link $r4 $n405 1Mb 10ms DropTail
$ns duplex-link $r4 $n406 1Mb 10ms DropTail
$ns duplex-link $r4 $n407 1Mb 10ms DropTail
$ns duplex-link $r4 $n408 1Mb 10ms DropTail
$ns duplex-link $r4 $n409 1Mb 10ms DropTail
$ns duplex-link $r4 $n410 1Mb 10ms DropTail
$ns duplex-link $r4 $n411 1Mb 10ms DropTail
$ns duplex-link $r4 $n412 1Mb 10ms DropTail
$ns duplex-link $r4 $n413 1Mb 10ms DropTail
$ns duplex-link $r4 $n414 1Mb 10ms DropTail
$ns duplex-link $r4 $n415 1Mb 10ms DropTail
$ns duplex-link $r4 $n416 1Mb 10ms DropTail
$ns duplex-link $r4 $n417 1Mb 10ms DropTail
$ns duplex-link $r4 $n418 1Mb 10ms DropTail
$ns duplex-link $r4 $n419 1Mb 10ms DropTail
$ns duplex-link $r4 $n420 1Mb 10ms DropTail
$ns duplex-link $r4 $n421 1Mb 10ms DropTail
$ns duplex-link $r4 $n422 1Mb 10ms DropTail
$ns duplex-link $r4 $n423 1Mb 10ms DropTail
$ns duplex-link $r4 $n424 1Mb 10ms DropTail
$ns duplex-link $r1 $r2 20MB 10ms DropTail
$ns duplex-link $r1 $r3 20MB 10ms DropTail
$ns duplex-link $r1 $r4 20MB 10ms DropTail
$ns duplex-link $r2 $r3 20MB 10ms DropTail
$ns duplex-link $r2 $r4 20MB 10ms DropTail
$ns duplex-link $r3 $r4 20MB 10ms DropTail
$ns queue-limit $r1 $r2 5B
$ns queue-limit $r1 $r3 5B
$ns queue-limit $r1 $r4 5B
$ns queue-limit $r2 $r3 5B
$ns queue-limit $r2 $r4 5B
$ns queue-limit $r3 $r4 5B
$ns cost $r1 $r2 1
$ns cost $r1 $r3 1
$ns cost $r1 $r4 1
$ns cost $r2 $r3 1
$ns cost $r2 $r4 1
$ns cost $r3 $r4 1
$ns cost $r2 $r1 5
$ns cost $r3 $r1 1
$ns cost $r4 $r1 1
$ns cost $r3 $r2 10
$ns cost $r4 $r2 5
$ns cost $r4 $r3 1

#UDP AGENTS
set udp100 [new Agent/UDP]
$ns attach-agent $n100 $udp100
set udp101 [new Agent/UDP]
$ns attach-agent $n101 $udp101
set udp102 [new Agent/UDP]
$ns attach-agent $n102 $udp102
set udp103 [new Agent/UDP]
$ns attach-agent $n103 $udp103
set udp104 [new Agent/UDP]
$ns attach-agent $n104 $udp104
set udp105 [new Agent/UDP]
$ns attach-agent $n105 $udp105
set udp106 [new Agent/UDP]
$ns attach-agent $n106 $udp106
set udp107 [new Agent/UDP]
$ns attach-agent $n107 $udp107
set udp108 [new Agent/UDP]
$ns attach-agent $n108 $udp108
set udp109 [new Agent/UDP]
$ns attach-agent $n109 $udp109
set udp110 [new Agent/UDP]
$ns attach-agent $n110 $udp110
set udp111 [new Agent/UDP]
$ns attach-agent $n111 $udp111
set udp112 [new Agent/UDP]
$ns attach-agent $n112 $udp112
set udp113 [new Agent/UDP]
$ns attach-agent $n113 $udp113
set udp114 [new Agent/UDP]
$ns attach-agent $n114 $udp114
set udp115 [new Agent/UDP]
$ns attach-agent $n115 $udp115
set udp116 [new Agent/UDP]
$ns attach-agent $n116 $udp116
set udp117 [new Agent/UDP]
$ns attach-agent $n117 $udp117
set udp118 [new Agent/UDP]
$ns attach-agent $n118 $udp118
set udp119 [new Agent/UDP]
$ns attach-agent $n119 $udp119
set udp120 [new Agent/UDP]
$ns attach-agent $n120 $udp120
set udp121 [new Agent/UDP]
$ns attach-agent $n121 $udp121
set udp122 [new Agent/UDP]
$ns attach-agent $n122 $udp122
set udp123 [new Agent/UDP]
$ns attach-agent $n123 $udp123
set udp124 [new Agent/UDP]
$ns attach-agent $n124 $udp124
set udp200 [new Agent/UDP]
$ns attach-agent $n200 $udp200
set udp201 [new Agent/UDP]
$ns attach-agent $n201 $udp201
set udp202 [new Agent/UDP]
$ns attach-agent $n202 $udp202
set udp203 [new Agent/UDP]
$ns attach-agent $n203 $udp203
set udp204 [new Agent/UDP]
$ns attach-agent $n204 $udp204
set udp205 [new Agent/UDP]
$ns attach-agent $n205 $udp205
set udp206 [new Agent/UDP]
$ns attach-agent $n206 $udp206
set udp207 [new Agent/UDP]
$ns attach-agent $n207 $udp207
set udp208 [new Agent/UDP]
$ns attach-agent $n208 $udp208
set udp209 [new Agent/UDP]
$ns attach-agent $n209 $udp209
set udp210 [new Agent/UDP]
$ns attach-agent $n210 $udp210
set udp211 [new Agent/UDP]
$ns attach-agent $n211 $udp211
set udp212 [new Agent/UDP]
$ns attach-agent $n212 $udp212
set udp213 [new Agent/UDP]
$ns attach-agent $n213 $udp213
set udp214 [new Agent/UDP]
$ns attach-agent $n214 $udp214
set udp215 [new Agent/UDP]
$ns attach-agent $n215 $udp215
set udp216 [new Agent/UDP]
$ns attach-agent $n216 $udp216
set udp217 [new Agent/UDP]
$ns attach-agent $n217 $udp217
set udp218 [new Agent/UDP]
$ns attach-agent $n218 $udp218
set udp219 [new Agent/UDP]
$ns attach-agent $n219 $udp219
set udp220 [new Agent/UDP]
$ns attach-agent $n220 $udp220
set udp221 [new Agent/UDP]
$ns attach-agent $n221 $udp221
set udp222 [new Agent/UDP]
$ns attach-agent $n222 $udp222
set udp223 [new Agent/UDP]
$ns attach-agent $n223 $udp223
set udp224 [new Agent/UDP]
$ns attach-agent $n224 $udp224
set udp300 [new Agent/UDP]
$ns attach-agent $n300 $udp300
set udp301 [new Agent/UDP]
$ns attach-agent $n301 $udp301
set udp302 [new Agent/UDP]
$ns attach-agent $n302 $udp302
set udp303 [new Agent/UDP]
$ns attach-agent $n303 $udp303
set udp304 [new Agent/UDP]
$ns attach-agent $n304 $udp304
set udp305 [new Agent/UDP]
$ns attach-agent $n305 $udp305
set udp306 [new Agent/UDP]
$ns attach-agent $n306 $udp306
set udp307 [new Agent/UDP]
$ns attach-agent $n307 $udp307
set udp308 [new Agent/UDP]
$ns attach-agent $n308 $udp308
set udp309 [new Agent/UDP]
$ns attach-agent $n309 $udp309
set udp310 [new Agent/UDP]
$ns attach-agent $n310 $udp310
set udp311 [new Agent/UDP]
$ns attach-agent $n311 $udp311
set udp312 [new Agent/UDP]
$ns attach-agent $n312 $udp312
set udp313 [new Agent/UDP]
$ns attach-agent $n313 $udp313
set udp314 [new Agent/UDP]
$ns attach-agent $n314 $udp314
set udp315 [new Agent/UDP]
$ns attach-agent $n315 $udp315
set udp316 [new Agent/UDP]
$ns attach-agent $n316 $udp316
set udp317 [new Agent/UDP]
$ns attach-agent $n317 $udp317
set udp318 [new Agent/UDP]
$ns attach-agent $n318 $udp318
set udp319 [new Agent/UDP]
$ns attach-agent $n319 $udp319
set udp320 [new Agent/UDP]
$ns attach-agent $n320 $udp320
set udp321 [new Agent/UDP]
$ns attach-agent $n321 $udp321
set udp322 [new Agent/UDP]
$ns attach-agent $n322 $udp322
set udp323 [new Agent/UDP]
$ns attach-agent $n323 $udp323
set udp324 [new Agent/UDP]
$ns attach-agent $n324 $udp324
set udp400 [new Agent/UDP]
$ns attach-agent $n400 $udp400
set udp401 [new Agent/UDP]
$ns attach-agent $n401 $udp401
set udp402 [new Agent/UDP]
$ns attach-agent $n402 $udp402
set udp403 [new Agent/UDP]
$ns attach-agent $n403 $udp403
set udp404 [new Agent/UDP]
$ns attach-agent $n404 $udp404
set udp405 [new Agent/UDP]
$ns attach-agent $n405 $udp405
set udp406 [new Agent/UDP]
$ns attach-agent $n406 $udp406
set udp407 [new Agent/UDP]
$ns attach-agent $n407 $udp407
set udp408 [new Agent/UDP]
$ns attach-agent $n408 $udp408
set udp409 [new Agent/UDP]
$ns attach-agent $n409 $udp409
set udp410 [new Agent/UDP]
$ns attach-agent $n410 $udp410
set udp411 [new Agent/UDP]
$ns attach-agent $n411 $udp411
set udp412 [new Agent/UDP]
$ns attach-agent $n412 $udp412
set udp413 [new Agent/UDP]
$ns attach-agent $n413 $udp413
set udp414 [new Agent/UDP]
$ns attach-agent $n414 $udp414
set udp415 [new Agent/UDP]
$ns attach-agent $n415 $udp415
set udp416 [new Agent/UDP]
$ns attach-agent $n416 $udp416
set udp417 [new Agent/UDP]
$ns attach-agent $n417 $udp417
set udp418 [new Agent/UDP]
$ns attach-agent $n418 $udp418
set udp419 [new Agent/UDP]
$ns attach-agent $n419 $udp419
set udp420 [new Agent/UDP]
$ns attach-agent $n420 $udp420
set udp421 [new Agent/UDP]
$ns attach-agent $n421 $udp421
set udp422 [new Agent/UDP]
$ns attach-agent $n422 $udp422
set udp423 [new Agent/UDP]
$ns attach-agent $n423 $udp423
set udp424 [new Agent/UDP]
$ns attach-agent $n424 $udp424

#SINKS
set sink1 [new Agent/LossMonitor]
$ns attach-agent $r1 $sink1
set sink2 [new Agent/LossMonitor]
$ns attach-agent $r2 $sink2
set sink3 [new Agent/LossMonitor]
$ns attach-agent $r3 $sink3
set sink4 [new Agent/LossMonitor]
$ns attach-agent $r4 $sink4

#UDP CONNECTIONS
$ns connect $udp100 $sink2
$ns connect $udp101 $sink2
$ns connect $udp102 $sink2
$ns connect $udp103 $sink2
$ns connect $udp104 $sink2
$ns connect $udp105 $sink2
$ns connect $udp106 $sink2
$ns connect $udp107 $sink2
$ns connect $udp108 $sink2
$ns connect $udp109 $sink2
$ns connect $udp110 $sink2
$ns connect $udp111 $sink2
$ns connect $udp112 $sink2
$ns connect $udp113 $sink2
$ns connect $udp114 $sink2
$ns connect $udp115 $sink2
$ns connect $udp116 $sink2
$ns connect $udp117 $sink2
$ns connect $udp118 $sink2
$ns connect $udp119 $sink2
$ns connect $udp120 $sink2
$ns connect $udp121 $sink2
$ns connect $udp122 $sink2
$ns connect $udp123 $sink2
$ns connect $udp124 $sink2
$ns connect $udp200 $sink1
$ns connect $udp201 $sink1
$ns connect $udp202 $sink1
$ns connect $udp203 $sink1
$ns connect $udp204 $sink1
$ns connect $udp205 $sink1
$ns connect $udp206 $sink1
$ns connect $udp207 $sink1
$ns connect $udp208 $sink1
$ns connect $udp209 $sink1
$ns connect $udp210 $sink1
$ns connect $udp211 $sink1
$ns connect $udp212 $sink1
$ns connect $udp213 $sink1
$ns connect $udp214 $sink1
$ns connect $udp215 $sink1
$ns connect $udp216 $sink1
$ns connect $udp217 $sink1
$ns connect $udp218 $sink1
$ns connect $udp219 $sink1
$ns connect $udp220 $sink1
$ns connect $udp221 $sink1
$ns connect $udp222 $sink1
$ns connect $udp223 $sink1
$ns connect $udp224 $sink1
$ns connect $udp300 $sink2
$ns connect $udp301 $sink2
$ns connect $udp302 $sink2
$ns connect $udp303 $sink2
$ns connect $udp304 $sink2
$ns connect $udp305 $sink2
$ns connect $udp306 $sink2
$ns connect $udp307 $sink2
$ns connect $udp308 $sink2
$ns connect $udp309 $sink2
$ns connect $udp310 $sink2
$ns connect $udp311 $sink2
$ns connect $udp312 $sink2
$ns connect $udp313 $sink2
$ns connect $udp314 $sink2
$ns connect $udp315 $sink2
$ns connect $udp316 $sink2
$ns connect $udp317 $sink2
$ns connect $udp318 $sink2
$ns connect $udp319 $sink2
$ns connect $udp320 $sink2
$ns connect $udp321 $sink2
$ns connect $udp322 $sink2
$ns connect $udp323 $sink2
$ns connect $udp324 $sink2
$ns connect $udp400 $sink2
$ns connect $udp401 $sink2
$ns connect $udp402 $sink2
$ns connect $udp403 $sink2
$ns connect $udp404 $sink2
$ns connect $udp405 $sink2
$ns connect $udp406 $sink2
$ns connect $udp407 $sink2
$ns connect $udp408 $sink2
$ns connect $udp409 $sink2
$ns connect $udp410 $sink2
$ns connect $udp411 $sink2
$ns connect $udp412 $sink2
$ns connect $udp413 $sink2
$ns connect $udp414 $sink2
$ns connect $udp415 $sink2
$ns connect $udp416 $sink2
$ns connect $udp417 $sink2
$ns connect $udp418 $sink2
$ns connect $udp419 $sink2
$ns connect $udp420 $sink2
$ns connect $udp421 $sink2
$ns connect $udp422 $sink2
$ns connect $udp423 $sink2
$ns connect $udp424 $sink2

#CBR
set cbr100 [new Application/Traffic/CBR]
$cbr100 set packetSize_ 1024
$cbr100 set interval_ 0.01
$cbr100 attach-agent $udp100
set cbr101 [new Application/Traffic/CBR]
$cbr101 set packetSize_ 1024
$cbr101 set interval_ 0.01
$cbr101 attach-agent $udp101
set cbr102 [new Application/Traffic/CBR]
$cbr102 set packetSize_ 1024
$cbr102 set interval_ 0.01
$cbr102 attach-agent $udp102
set cbr103 [new Application/Traffic/CBR]
$cbr103 set packetSize_ 1024
$cbr103 set interval_ 0.01
$cbr103 attach-agent $udp103
set cbr104 [new Application/Traffic/CBR]
$cbr104 set packetSize_ 1024
$cbr104 set interval_ 0.01
$cbr104 attach-agent $udp104
set cbr105 [new Application/Traffic/CBR]
$cbr105 set packetSize_ 1024
$cbr105 set interval_ 0.01
$cbr105 attach-agent $udp105
set cbr106 [new Application/Traffic/CBR]
$cbr106 set packetSize_ 1024
$cbr106 set interval_ 0.01
$cbr106 attach-agent $udp106
set cbr107 [new Application/Traffic/CBR]
$cbr107 set packetSize_ 1024
$cbr107 set interval_ 0.01
$cbr107 attach-agent $udp107
set cbr108 [new Application/Traffic/CBR]
$cbr108 set packetSize_ 1024
$cbr108 set interval_ 0.01
$cbr108 attach-agent $udp108
set cbr109 [new Application/Traffic/CBR]
$cbr109 set packetSize_ 1024
$cbr109 set interval_ 0.01
$cbr109 attach-agent $udp109
set cbr110 [new Application/Traffic/CBR]
$cbr110 set packetSize_ 1024
$cbr110 set interval_ 0.01
$cbr110 attach-agent $udp110
set cbr111 [new Application/Traffic/CBR]
$cbr111 set packetSize_ 1024
$cbr111 set interval_ 0.01
$cbr111 attach-agent $udp111
set cbr112 [new Application/Traffic/CBR]
$cbr112 set packetSize_ 1024
$cbr112 set interval_ 0.01
$cbr112 attach-agent $udp112
set cbr113 [new Application/Traffic/CBR]
$cbr113 set packetSize_ 1024
$cbr113 set interval_ 0.01
$cbr113 attach-agent $udp113
set cbr114 [new Application/Traffic/CBR]
$cbr114 set packetSize_ 1024
$cbr114 set interval_ 0.01
$cbr114 attach-agent $udp114
set cbr115 [new Application/Traffic/CBR]
$cbr115 set packetSize_ 1024
$cbr115 set interval_ 0.01
$cbr115 attach-agent $udp115
set cbr116 [new Application/Traffic/CBR]
$cbr116 set packetSize_ 1024
$cbr116 set interval_ 0.01
$cbr116 attach-agent $udp116
set cbr117 [new Application/Traffic/CBR]
$cbr117 set packetSize_ 1024
$cbr117 set interval_ 0.01
$cbr117 attach-agent $udp117
set cbr118 [new Application/Traffic/CBR]
$cbr118 set packetSize_ 1024
$cbr118 set interval_ 0.01
$cbr118 attach-agent $udp118
set cbr119 [new Application/Traffic/CBR]
$cbr119 set packetSize_ 1024
$cbr119 set interval_ 0.01
$cbr119 attach-agent $udp119
set cbr120 [new Application/Traffic/CBR]
$cbr120 set packetSize_ 1024
$cbr120 set interval_ 0.01
$cbr120 attach-agent $udp120
set cbr121 [new Application/Traffic/CBR]
$cbr121 set packetSize_ 1024
$cbr121 set interval_ 0.01
$cbr121 attach-agent $udp121
set cbr122 [new Application/Traffic/CBR]
$cbr122 set packetSize_ 1024
$cbr122 set interval_ 0.01
$cbr122 attach-agent $udp122
set cbr123 [new Application/Traffic/CBR]
$cbr123 set packetSize_ 1024
$cbr123 set interval_ 0.01
$cbr123 attach-agent $udp123
set cbr124 [new Application/Traffic/CBR]
$cbr124 set packetSize_ 1024
$cbr124 set interval_ 0.01
$cbr124 attach-agent $udp124
set cbr200 [new Application/Traffic/CBR]
$cbr200 set packetSize_ 1024
$cbr200 set interval_ 0.01
$cbr200 attach-agent $udp200
set cbr201 [new Application/Traffic/CBR]
$cbr201 set packetSize_ 1024
$cbr201 set interval_ 0.01
$cbr201 attach-agent $udp201
set cbr202 [new Application/Traffic/CBR]
$cbr202 set packetSize_ 1024
$cbr202 set interval_ 0.01
$cbr202 attach-agent $udp202
set cbr203 [new Application/Traffic/CBR]
$cbr203 set packetSize_ 1024
$cbr203 set interval_ 0.01
$cbr203 attach-agent $udp203
set cbr204 [new Application/Traffic/CBR]
$cbr204 set packetSize_ 1024
$cbr204 set interval_ 0.01
$cbr204 attach-agent $udp204
set cbr205 [new Application/Traffic/CBR]
$cbr205 set packetSize_ 1024
$cbr205 set interval_ 0.01
$cbr205 attach-agent $udp205
set cbr206 [new Application/Traffic/CBR]
$cbr206 set packetSize_ 1024
$cbr206 set interval_ 0.01
$cbr206 attach-agent $udp206
set cbr207 [new Application/Traffic/CBR]
$cbr207 set packetSize_ 1024
$cbr207 set interval_ 0.01
$cbr207 attach-agent $udp207
set cbr208 [new Application/Traffic/CBR]
$cbr208 set packetSize_ 1024
$cbr208 set interval_ 0.01
$cbr208 attach-agent $udp208
set cbr209 [new Application/Traffic/CBR]
$cbr209 set packetSize_ 1024
$cbr209 set interval_ 0.01
$cbr209 attach-agent $udp209
set cbr210 [new Application/Traffic/CBR]
$cbr210 set packetSize_ 1024
$cbr210 set interval_ 0.01
$cbr210 attach-agent $udp210
set cbr211 [new Application/Traffic/CBR]
$cbr211 set packetSize_ 1024
$cbr211 set interval_ 0.01
$cbr211 attach-agent $udp211
set cbr212 [new Application/Traffic/CBR]
$cbr212 set packetSize_ 1024
$cbr212 set interval_ 0.01
$cbr212 attach-agent $udp212
set cbr213 [new Application/Traffic/CBR]
$cbr213 set packetSize_ 1024
$cbr213 set interval_ 0.01
$cbr213 attach-agent $udp213
set cbr214 [new Application/Traffic/CBR]
$cbr214 set packetSize_ 1024
$cbr214 set interval_ 0.01
$cbr214 attach-agent $udp214
set cbr215 [new Application/Traffic/CBR]
$cbr215 set packetSize_ 1024
$cbr215 set interval_ 0.01
$cbr215 attach-agent $udp215
set cbr216 [new Application/Traffic/CBR]
$cbr216 set packetSize_ 1024
$cbr216 set interval_ 0.01
$cbr216 attach-agent $udp216
set cbr217 [new Application/Traffic/CBR]
$cbr217 set packetSize_ 1024
$cbr217 set interval_ 0.01
$cbr217 attach-agent $udp217
set cbr218 [new Application/Traffic/CBR]
$cbr218 set packetSize_ 1024
$cbr218 set interval_ 0.01
$cbr218 attach-agent $udp218
set cbr219 [new Application/Traffic/CBR]
$cbr219 set packetSize_ 1024
$cbr219 set interval_ 0.01
$cbr219 attach-agent $udp219
set cbr220 [new Application/Traffic/CBR]
$cbr220 set packetSize_ 1024
$cbr220 set interval_ 0.01
$cbr220 attach-agent $udp220
set cbr221 [new Application/Traffic/CBR]
$cbr221 set packetSize_ 1024
$cbr221 set interval_ 0.01
$cbr221 attach-agent $udp221
set cbr222 [new Application/Traffic/CBR]
$cbr222 set packetSize_ 1024
$cbr222 set interval_ 0.01
$cbr222 attach-agent $udp222
set cbr223 [new Application/Traffic/CBR]
$cbr223 set packetSize_ 1024
$cbr223 set interval_ 0.01
$cbr223 attach-agent $udp223
set cbr224 [new Application/Traffic/CBR]
$cbr224 set packetSize_ 1024
$cbr224 set interval_ 0.01
$cbr224 attach-agent $udp224
set cbr300 [new Application/Traffic/CBR]
$cbr300 set packetSize_ 1024
$cbr300 set interval_ 0.01
$cbr300 attach-agent $udp300
set cbr301 [new Application/Traffic/CBR]
$cbr301 set packetSize_ 1024
$cbr301 set interval_ 0.01
$cbr301 attach-agent $udp301
set cbr302 [new Application/Traffic/CBR]
$cbr302 set packetSize_ 1024
$cbr302 set interval_ 0.01
$cbr302 attach-agent $udp302
set cbr303 [new Application/Traffic/CBR]
$cbr303 set packetSize_ 1024
$cbr303 set interval_ 0.01
$cbr303 attach-agent $udp303
set cbr304 [new Application/Traffic/CBR]
$cbr304 set packetSize_ 1024
$cbr304 set interval_ 0.01
$cbr304 attach-agent $udp304
set cbr305 [new Application/Traffic/CBR]
$cbr305 set packetSize_ 1024
$cbr305 set interval_ 0.01
$cbr305 attach-agent $udp305
set cbr306 [new Application/Traffic/CBR]
$cbr306 set packetSize_ 1024
$cbr306 set interval_ 0.01
$cbr306 attach-agent $udp306
set cbr307 [new Application/Traffic/CBR]
$cbr307 set packetSize_ 1024
$cbr307 set interval_ 0.01
$cbr307 attach-agent $udp307
set cbr308 [new Application/Traffic/CBR]
$cbr308 set packetSize_ 1024
$cbr308 set interval_ 0.01
$cbr308 attach-agent $udp308
set cbr309 [new Application/Traffic/CBR]
$cbr309 set packetSize_ 1024
$cbr309 set interval_ 0.01
$cbr309 attach-agent $udp309
set cbr310 [new Application/Traffic/CBR]
$cbr310 set packetSize_ 1024
$cbr310 set interval_ 0.01
$cbr310 attach-agent $udp310
set cbr311 [new Application/Traffic/CBR]
$cbr311 set packetSize_ 1024
$cbr311 set interval_ 0.01
$cbr311 attach-agent $udp311
set cbr312 [new Application/Traffic/CBR]
$cbr312 set packetSize_ 1024
$cbr312 set interval_ 0.01
$cbr312 attach-agent $udp312
set cbr313 [new Application/Traffic/CBR]
$cbr313 set packetSize_ 1024
$cbr313 set interval_ 0.01
$cbr313 attach-agent $udp313
set cbr314 [new Application/Traffic/CBR]
$cbr314 set packetSize_ 1024
$cbr314 set interval_ 0.01
$cbr314 attach-agent $udp314
set cbr315 [new Application/Traffic/CBR]
$cbr315 set packetSize_ 1024
$cbr315 set interval_ 0.01
$cbr315 attach-agent $udp315
set cbr316 [new Application/Traffic/CBR]
$cbr316 set packetSize_ 1024
$cbr316 set interval_ 0.01
$cbr316 attach-agent $udp316
set cbr317 [new Application/Traffic/CBR]
$cbr317 set packetSize_ 1024
$cbr317 set interval_ 0.01
$cbr317 attach-agent $udp317
set cbr318 [new Application/Traffic/CBR]
$cbr318 set packetSize_ 1024
$cbr318 set interval_ 0.01
$cbr318 attach-agent $udp318
set cbr319 [new Application/Traffic/CBR]
$cbr319 set packetSize_ 1024
$cbr319 set interval_ 0.01
$cbr319 attach-agent $udp319
set cbr320 [new Application/Traffic/CBR]
$cbr320 set packetSize_ 1024
$cbr320 set interval_ 0.01
$cbr320 attach-agent $udp320
set cbr321 [new Application/Traffic/CBR]
$cbr321 set packetSize_ 1024
$cbr321 set interval_ 0.01
$cbr321 attach-agent $udp321
set cbr322 [new Application/Traffic/CBR]
$cbr322 set packetSize_ 1024
$cbr322 set interval_ 0.01
$cbr322 attach-agent $udp322
set cbr323 [new Application/Traffic/CBR]
$cbr323 set packetSize_ 1024
$cbr323 set interval_ 0.01
$cbr323 attach-agent $udp323
set cbr324 [new Application/Traffic/CBR]
$cbr324 set packetSize_ 1024
$cbr324 set interval_ 0.01
$cbr324 attach-agent $udp324
set cbr400 [new Application/Traffic/CBR]
$cbr400 set packetSize_ 1024
$cbr400 set interval_ 0.01
$cbr400 attach-agent $udp400
set cbr401 [new Application/Traffic/CBR]
$cbr401 set packetSize_ 1024
$cbr401 set interval_ 0.01
$cbr401 attach-agent $udp401
set cbr402 [new Application/Traffic/CBR]
$cbr402 set packetSize_ 1024
$cbr402 set interval_ 0.01
$cbr402 attach-agent $udp402
set cbr403 [new Application/Traffic/CBR]
$cbr403 set packetSize_ 1024
$cbr403 set interval_ 0.01
$cbr403 attach-agent $udp403
set cbr404 [new Application/Traffic/CBR]
$cbr404 set packetSize_ 1024
$cbr404 set interval_ 0.01
$cbr404 attach-agent $udp404
set cbr405 [new Application/Traffic/CBR]
$cbr405 set packetSize_ 1024
$cbr405 set interval_ 0.01
$cbr405 attach-agent $udp405
set cbr406 [new Application/Traffic/CBR]
$cbr406 set packetSize_ 1024
$cbr406 set interval_ 0.01
$cbr406 attach-agent $udp406
set cbr407 [new Application/Traffic/CBR]
$cbr407 set packetSize_ 1024
$cbr407 set interval_ 0.01
$cbr407 attach-agent $udp407
set cbr408 [new Application/Traffic/CBR]
$cbr408 set packetSize_ 1024
$cbr408 set interval_ 0.01
$cbr408 attach-agent $udp408
set cbr409 [new Application/Traffic/CBR]
$cbr409 set packetSize_ 1024
$cbr409 set interval_ 0.01
$cbr409 attach-agent $udp409
set cbr410 [new Application/Traffic/CBR]
$cbr410 set packetSize_ 1024
$cbr410 set interval_ 0.01
$cbr410 attach-agent $udp410
set cbr411 [new Application/Traffic/CBR]
$cbr411 set packetSize_ 1024
$cbr411 set interval_ 0.01
$cbr411 attach-agent $udp411
set cbr412 [new Application/Traffic/CBR]
$cbr412 set packetSize_ 1024
$cbr412 set interval_ 0.01
$cbr412 attach-agent $udp412
set cbr413 [new Application/Traffic/CBR]
$cbr413 set packetSize_ 1024
$cbr413 set interval_ 0.01
$cbr413 attach-agent $udp413
set cbr414 [new Application/Traffic/CBR]
$cbr414 set packetSize_ 1024
$cbr414 set interval_ 0.01
$cbr414 attach-agent $udp414
set cbr415 [new Application/Traffic/CBR]
$cbr415 set packetSize_ 1024
$cbr415 set interval_ 0.01
$cbr415 attach-agent $udp415
set cbr416 [new Application/Traffic/CBR]
$cbr416 set packetSize_ 1024
$cbr416 set interval_ 0.01
$cbr416 attach-agent $udp416
set cbr417 [new Application/Traffic/CBR]
$cbr417 set packetSize_ 1024
$cbr417 set interval_ 0.01
$cbr417 attach-agent $udp417
set cbr418 [new Application/Traffic/CBR]
$cbr418 set packetSize_ 1024
$cbr418 set interval_ 0.01
$cbr418 attach-agent $udp418
set cbr419 [new Application/Traffic/CBR]
$cbr419 set packetSize_ 1024
$cbr419 set interval_ 0.01
$cbr419 attach-agent $udp419
set cbr420 [new Application/Traffic/CBR]
$cbr420 set packetSize_ 1024
$cbr420 set interval_ 0.01
$cbr420 attach-agent $udp420
set cbr421 [new Application/Traffic/CBR]
$cbr421 set packetSize_ 1024
$cbr421 set interval_ 0.01
$cbr421 attach-agent $udp421
set cbr422 [new Application/Traffic/CBR]
$cbr422 set packetSize_ 1024
$cbr422 set interval_ 0.01
$cbr422 attach-agent $udp422
set cbr423 [new Application/Traffic/CBR]
$cbr423 set packetSize_ 1024
$cbr423 set interval_ 0.01
$cbr423 attach-agent $udp423
set cbr424 [new Application/Traffic/CBR]
$cbr424 set packetSize_ 1024
$cbr424 set interval_ 0.01
$cbr424 attach-agent $udp424

#QUEUE MONITORS
$ns trace-queue $r1 $r2  $f12
$ns trace-queue $r2 $r1  $f12
$ns trace-queue $r1 $r3  $f13
$ns trace-queue $r3 $r1  $f13
$ns trace-queue $r1 $r4  $f14
$ns trace-queue $r4 $r1  $f14
$ns trace-queue $r2 $r3  $f23
$ns trace-queue $r3 $r2  $f23
$ns trace-queue $r2 $r4  $f24
$ns trace-queue $r4 $r2  $f24
$ns trace-queue $r3 $r4  $f34
$ns trace-queue $r4 $r3  $f34
$ns at 0.1 "$cbr100 start"
$ns at 9.5 "$cbr100 stop"
$ns at 0.1 "$cbr200 start"
$ns at 9.5 "$cbr200 stop"
$ns at 0.1 "$cbr300 start"
$ns at 9.5 "$cbr300 stop"
$ns at 0.1 "$cbr400 start"
$ns at 9.5 "$cbr400 stop"
$ns at 0.2 "$cbr101 start"
$ns at 9.5 "$cbr101 stop"
$ns at 0.2 "$cbr201 start"
$ns at 9.5 "$cbr201 stop"
$ns at 0.2 "$cbr301 start"
$ns at 9.5 "$cbr301 stop"
$ns at 0.2 "$cbr401 start"
$ns at 9.5 "$cbr401 stop"
$ns at 0.3 "$cbr102 start"
$ns at 9.5 "$cbr102 stop"
$ns at 0.3 "$cbr202 start"
$ns at 9.5 "$cbr202 stop"
$ns at 0.3 "$cbr302 start"
$ns at 9.5 "$cbr302 stop"
$ns at 0.3 "$cbr402 start"
$ns at 9.5 "$cbr402 stop"
$ns at 0.4 "$cbr103 start"
$ns at 9.5 "$cbr103 stop"
$ns at 0.4 "$cbr203 start"
$ns at 9.5 "$cbr203 stop"
$ns at 0.4 "$cbr303 start"
$ns at 9.5 "$cbr303 stop"
$ns at 0.4 "$cbr403 start"
$ns at 9.5 "$cbr403 stop"
$ns at 0.5 "$cbr104 start"
$ns at 9.5 "$cbr104 stop"
$ns at 0.5 "$cbr204 start"
$ns at 9.5 "$cbr204 stop"
$ns at 0.5 "$cbr304 start"
$ns at 9.5 "$cbr304 stop"
$ns at 0.5 "$cbr404 start"
$ns at 9.5 "$cbr404 stop"
$ns at 0.6 "$cbr105 start"
$ns at 9.5 "$cbr105 stop"
$ns at 0.6 "$cbr205 start"
$ns at 9.5 "$cbr205 stop"
$ns at 0.6 "$cbr305 start"
$ns at 9.5 "$cbr305 stop"
$ns at 0.6 "$cbr405 start"
$ns at 9.5 "$cbr405 stop"
$ns at 0.7 "$cbr106 start"
$ns at 9.5 "$cbr106 stop"
$ns at 0.7 "$cbr206 start"
$ns at 9.5 "$cbr206 stop"
$ns at 0.7 "$cbr306 start"
$ns at 9.5 "$cbr306 stop"
$ns at 0.7 "$cbr406 start"
$ns at 9.5 "$cbr406 stop"
$ns at 0.8 "$cbr107 start"
$ns at 9.5 "$cbr107 stop"
$ns at 0.8 "$cbr207 start"
$ns at 9.5 "$cbr207 stop"
$ns at 0.8 "$cbr307 start"
$ns at 9.5 "$cbr307 stop"
$ns at 0.8 "$cbr407 start"
$ns at 9.5 "$cbr407 stop"
$ns at 0.9 "$cbr108 start"
$ns at 9.5 "$cbr108 stop"
$ns at 0.9 "$cbr208 start"
$ns at 9.5 "$cbr208 stop"
$ns at 0.9 "$cbr308 start"
$ns at 9.5 "$cbr308 stop"
$ns at 0.9 "$cbr408 start"
$ns at 9.5 "$cbr408 stop"
$ns at 1.0 "$cbr109 start"
$ns at 9.5 "$cbr109 stop"
$ns at 1.0 "$cbr209 start"
$ns at 9.5 "$cbr209 stop"
$ns at 1.0 "$cbr309 start"
$ns at 9.5 "$cbr309 stop"
$ns at 1.0 "$cbr409 start"
$ns at 9.5 "$cbr409 stop"
$ns at 1.1 "$cbr110 start"
$ns at 9.5 "$cbr110 stop"
$ns at 1.1 "$cbr210 start"
$ns at 9.5 "$cbr210 stop"
$ns at 1.1 "$cbr310 start"
$ns at 9.5 "$cbr310 stop"
$ns at 1.1 "$cbr410 start"
$ns at 9.5 "$cbr410 stop"
$ns at 1.2 "$cbr111 start"
$ns at 9.5 "$cbr111 stop"
$ns at 1.2 "$cbr211 start"
$ns at 9.5 "$cbr211 stop"
$ns at 1.2 "$cbr311 start"
$ns at 9.5 "$cbr311 stop"
$ns at 1.2 "$cbr411 start"
$ns at 9.5 "$cbr411 stop"
$ns at 1.3 "$cbr112 start"
$ns at 9.5 "$cbr112 stop"
$ns at 1.3 "$cbr212 start"
$ns at 9.5 "$cbr212 stop"
$ns at 1.3 "$cbr312 start"
$ns at 9.5 "$cbr312 stop"
$ns at 1.3 "$cbr412 start"
$ns at 9.5 "$cbr412 stop"
$ns at 1.4 "$cbr113 start"
$ns at 9.5 "$cbr113 stop"
$ns at 1.4 "$cbr213 start"
$ns at 9.5 "$cbr213 stop"
$ns at 1.4 "$cbr313 start"
$ns at 9.5 "$cbr313 stop"
$ns at 1.4 "$cbr413 start"
$ns at 9.5 "$cbr413 stop"
$ns at 1.5 "$cbr114 start"
$ns at 9.5 "$cbr114 stop"
$ns at 1.5 "$cbr214 start"
$ns at 9.5 "$cbr214 stop"
$ns at 1.5 "$cbr314 start"
$ns at 9.5 "$cbr314 stop"
$ns at 1.5 "$cbr414 start"
$ns at 9.5 "$cbr414 stop"
$ns at 1.6 "$cbr115 start"
$ns at 9.5 "$cbr115 stop"
$ns at 1.6 "$cbr215 start"
$ns at 9.5 "$cbr215 stop"
$ns at 1.6 "$cbr315 start"
$ns at 9.5 "$cbr315 stop"
$ns at 1.6 "$cbr415 start"
$ns at 9.5 "$cbr415 stop"
$ns at 1.7 "$cbr116 start"
$ns at 9.5 "$cbr116 stop"
$ns at 1.7 "$cbr216 start"
$ns at 9.5 "$cbr216 stop"
$ns at 1.7 "$cbr316 start"
$ns at 9.5 "$cbr316 stop"
$ns at 1.7 "$cbr416 start"
$ns at 9.5 "$cbr416 stop"
$ns at 1.8 "$cbr117 start"
$ns at 9.5 "$cbr117 stop"
$ns at 1.8 "$cbr217 start"
$ns at 9.5 "$cbr217 stop"
$ns at 1.8 "$cbr317 start"
$ns at 9.5 "$cbr317 stop"
$ns at 1.8 "$cbr417 start"
$ns at 9.5 "$cbr417 stop"
$ns at 1.9 "$cbr118 start"
$ns at 9.5 "$cbr118 stop"
$ns at 1.9 "$cbr218 start"
$ns at 9.5 "$cbr218 stop"
$ns at 1.9 "$cbr318 start"
$ns at 9.5 "$cbr318 stop"
$ns at 1.9 "$cbr418 start"
$ns at 9.5 "$cbr418 stop"
$ns at 2.0 "$cbr119 start"
$ns at 9.5 "$cbr119 stop"
$ns at 2.0 "$cbr219 start"
$ns at 9.5 "$cbr219 stop"
$ns at 2.0 "$cbr319 start"
$ns at 9.5 "$cbr319 stop"
$ns at 2.0 "$cbr419 start"
$ns at 9.5 "$cbr419 stop"
$ns at 2.1 "$cbr120 start"
$ns at 9.5 "$cbr120 stop"
$ns at 2.1 "$cbr220 start"
$ns at 9.5 "$cbr220 stop"
$ns at 2.1 "$cbr320 start"
$ns at 9.5 "$cbr320 stop"
$ns at 2.1 "$cbr420 start"
$ns at 9.5 "$cbr420 stop"
$ns at 2.2 "$cbr121 start"
$ns at 9.5 "$cbr121 stop"
$ns at 2.2 "$cbr221 start"
$ns at 9.5 "$cbr221 stop"
$ns at 2.2 "$cbr321 start"
$ns at 9.5 "$cbr321 stop"
$ns at 2.2 "$cbr421 start"
$ns at 9.5 "$cbr421 stop"
$ns at 2.3 "$cbr122 start"
$ns at 9.5 "$cbr122 stop"
$ns at 2.3 "$cbr222 start"
$ns at 9.5 "$cbr222 stop"
$ns at 2.3 "$cbr322 start"
$ns at 9.5 "$cbr322 stop"
$ns at 2.3 "$cbr422 start"
$ns at 9.5 "$cbr422 stop"
$ns at 2.4 "$cbr123 start"
$ns at 9.5 "$cbr123 stop"
$ns at 2.4 "$cbr223 start"
$ns at 9.5 "$cbr223 stop"
$ns at 2.4 "$cbr323 start"
$ns at 9.5 "$cbr323 stop"
$ns at 2.4 "$cbr423 start"
$ns at 9.5 "$cbr423 stop"
$ns at 2.5 "$cbr124 start"
$ns at 9.5 "$cbr124 stop"
$ns at 2.5 "$cbr224 start"
$ns at 9.5 "$cbr224 stop"
$ns at 2.5 "$cbr324 start"
$ns at 9.5 "$cbr324 stop"
$ns at 2.5 "$cbr424 start"
$ns at 9.5 "$cbr424 stop"

#RUN
$ns run
$ns at 10.0 "finish"
