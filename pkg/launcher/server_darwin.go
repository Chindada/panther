//go:build darwin

package launcher

import (
	"fmt"
	"net"
	"os"
)

// # DB Version: 17
// # OS Type: mac
// # DB Type: web
// # Total Memory (RAM): 2 GB
// # Connections num: 80
// # Data Storage: ssd

// max_connections = 80
// shared_buffers = 512MB
// effective_cache_size = 1536MB
// maintenance_work_mem = 128MB
// checkpoint_completion_target = 0.9
// wal_buffers = 16MB
// default_statistics_target = 100
// random_page_cost = 1.1
// work_mem = 3276kB
// huge_pages = off
// min_wal_size = 1GB
// max_wal_size = 4GB

func (l *postgresLauncher) serverOption() string {
	if l.listenAddress != "*" {
		ip := net.ParseIP(l.listenAddress)
		if ip == nil || !ip.IsLoopback() {
			l.listenAddress = "localhost"
			l.Warnf("host is not loopback, set to localhost")
		}
	}
	opts := []string{
		"-c shared_buffers=512MB",
		"-c effective_cache_size=1536MB",
		"-c maintenance_work_mem=128MB",
		"-c checkpoint_completion_target=0.9",
		"-c wal_buffers=16MB",
		"-c default_statistics_target=100",
		"-c random_page_cost=1.1",
		"-c work_mem=3276kB",
		"-c huge_pages=off",
		"-c min_wal_size=1GB",
		"-c max_wal_size=4GB",
		fmt.Sprintf("-c listen_addresses=%s", l.listenAddress),
		fmt.Sprintf("-c unix_socket_directories=%s", os.TempDir()),
		fmt.Sprintf("-p %s", l.port),
	}
	concated := ""
	for _, opt := range opts {
		concated = fmt.Sprintf("%s %s", concated, opt)
	}
	return concated
}
