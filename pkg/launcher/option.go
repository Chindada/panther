package launcher

import "github.com/chindada/panther/pkg/logger"

type Option func(*postgresLauncher)

func DBName(dbName string) Option {
	return func(s *postgresLauncher) {
		if dbName != "" {
			s.dbName = dbName
		}
	}
}

func Listen(listen string) Option {
	return func(s *postgresLauncher) {
		if listen != "" {
			s.listenAddress = listen
		}
	}
}

func Port(port string) Option {
	return func(s *postgresLauncher) {
		if port != "" {
			s.port = port
		}
	}
}

func AddLogger(base logger.Logger) Option {
	return func(c *postgresLauncher) {
		c.Logger = logger.NewLogger(base)
	}
}

func BinaryRoot(root string) Option {
	return func(c *postgresLauncher) {
		c.binaryRoot = root
	}
}

func Verbose(verbose bool) Option {
	return func(c *postgresLauncher) {
		c.verbose = verbose
	}
}

func NeedLog() Option {
	return func(c *postgresLauncher) {
		c.needLog = true
	}
}
