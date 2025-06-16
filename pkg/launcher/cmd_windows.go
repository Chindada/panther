//go:build windows

package launcher

import (
	"os"
	"os/exec"
	"os/user"
	"syscall"
)

func (l *postgresLauncher) getPosgresUser() *user.User {
	return nil
}

func (l *postgresLauncher) newCMD(command string, args ...string) *exec.Cmd {
	cmd := exec.Command(command, args...)
	cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
	if l.verbose {
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
	}
	return cmd
}

func (l *postgresLauncher) newCMDWithoutSetSTD(command string, args ...string) *exec.Cmd {
	return exec.Command(command, args...)
}
