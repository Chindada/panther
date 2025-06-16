//go:build !windows && !darwin && !linux

package launcher

import (
	"fmt"
	"net"
)

func (l *postgresLauncher) serverOption() string {
	if l.listenAddress != "*" {
		ip := net.ParseIP(l.listenAddress)
		if ip == nil || !ip.IsLoopback() {
			l.listenAddress = "localhost"
			l.Warnf("host is not loopback, set to localhost")
		}
	}
	opts := []string{
		fmt.Sprintf("-c listen_addresses=%s", l.listenAddress),
		fmt.Sprintf("-p %s", l.port),
	}
	concated := ""
	for _, opt := range opts {
		concated = fmt.Sprintf("%s %s", concated, opt)
	}
	return concated
}
