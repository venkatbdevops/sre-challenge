### FIRE WALL ##########
class apache::port {
exec { "open-multi-port-80,443,22":
	 command  => "iptables -A INPUT  -p tcp -m multiport --dports 22,80,443 -j ACCEPT",
	 path     => "${os_path}",
	 unless   => "iptables-save | grep 80 | grep INPUT | grep ACCEPT | grep NEW | wc -l | xargs test 1 -eq",
	 notify   => Exec["ip-tables-save"]
}

exec { "ip-tables-save":
	 command     => "service iptables save",
	 refreshonly => true,
	 path        => "${os_path}",
}
}
