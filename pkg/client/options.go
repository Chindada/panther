package client

import "github.com/chindada/panther/pkg/logger"

// Option -.
type Option func(*postgresClient)

// MaxPoolSize -.
func MaxPoolSize(size int) Option {
	return func(c *postgresClient) {
		c.maxPoolSize = size
	}
}

// AddLogger -.
func AddLogger(base logger.Logger) Option {
	return func(c *postgresClient) {
		c.Logger = logger.NewLogger(base)
	}
}
