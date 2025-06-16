//go:build !windows

package launcher

import (
	"os"
	"os/exec"
	"os/user"
	"strconv"
	"syscall"
)

func (l *postgresLauncher) getPosgresUser() *user.User {
	u, err := user.Lookup(defaultUser)
	if err != nil {
		return nil
	}
	return u
}

func (l *postgresLauncher) getCMDCrendential() *syscall.Credential {
	u := l.getPosgresUser()
	if u == nil {
		return nil
	}
	uid, err := strconv.Atoi(u.Uid)
	if err != nil {
		return nil
	}
	gid, err := strconv.Atoi(u.Gid)
	if err != nil {
		return nil
	}
	return &syscall.Credential{Uid: uint32(uid), Gid: uint32(gid)}
}

func (l *postgresLauncher) newCMD(command string, args ...string) *exec.Cmd {
	cmd := exec.Command(command, args...)
	cmd.SysProcAttr = &syscall.SysProcAttr{
		Credential: l.getCMDCrendential(),
	}
	if l.verbose {
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
	}
	return cmd
}

func (l *postgresLauncher) newCMDWithoutSetSTD(command string, args ...string) *exec.Cmd {
	cmd := exec.Command(command, args...)
	cmd.SysProcAttr = &syscall.SysProcAttr{
		Credential: l.getCMDCrendential(),
	}
	return cmd
}
