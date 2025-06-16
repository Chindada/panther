package logger

import (
	"fmt"
	"os"
	"strings"
)

type Logger interface {
	Infof(format string, args ...interface{})
	Warnf(format string, args ...interface{})
	Errorf(format string, args ...interface{})
	Fatalf(format string, args ...interface{})
}

type logger struct {
	base Logger
}

func NewLogger(base Logger) Logger {
	if base == nil {
		return &logger{}
	}
	return &logger{base: base}
}

func (l *logger) Infof(format string, args ...interface{}) {
	if l.base != nil {
		l.base.Infof(format, args...)
	} else {
		if !strings.HasSuffix(format, "\n") {
			format = fmt.Sprintf("%s\n", format)
		}
		fmt.Printf(format, args...)
	}
}

func (l *logger) Warnf(format string, args ...interface{}) {
	if l.base != nil {
		l.base.Warnf(format, args...)
	} else {
		if !strings.HasSuffix(format, "\n") {
			format = fmt.Sprintf("%s\n", format)
		}
		fmt.Printf(format, args...)
	}
}

func (l *logger) Errorf(format string, args ...interface{}) {
	if l.base != nil {
		l.base.Errorf(format, args...)
	} else {
		if !strings.HasSuffix(format, "\n") {
			format = fmt.Sprintf("%s\n", format)
		}
		fmt.Printf(format, args...)
	}
}

func (l *logger) Fatalf(format string, args ...interface{}) {
	if l.base != nil {
		l.base.Fatalf(format, args...)
	} else {
		if !strings.HasSuffix(format, "\n") {
			format = fmt.Sprintf("%s\n", format)
		}
		fmt.Printf(format, args...)
		os.Exit(-1)
	}
}
