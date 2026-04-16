set portsc [socket network.nekoweb.org 80]
fconfigure $portsc -buffering line
puts $portsc "GET / HTTP/1.1\nHost: network.nekoweb.org\nConnection: close\n\n"
while {[gets $portsc resp] >= 0} {
       puts $resp
}
close $portsc
