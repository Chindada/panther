//go:build windows

package dbtool

import (
	"os"
	"path/filepath"

	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

func flags(rootCmd *cobra.Command) {
	ex, err := os.Executable()
	if err != nil {
		panic(err)
	}

	rootPath := filepath.Join(filepath.Dir(ex), "..")
	binPath := filepath.Join(rootPath, "database", "bin")

	rootCmd.PersistentFlags().String("db-name", "", "DB name")
	rootCmd.PersistentFlags().String("listen", "*", "listen")
	rootCmd.PersistentFlags().String("port", "5432", "port")
	rootCmd.PersistentFlags().BoolP("verbose", "v", false, "verbose output")
	rootCmd.PersistentFlags().String("bin-path", binPath, "binary path")
	_ = viper.BindPFlag("db-name", rootCmd.PersistentFlags().Lookup("db-name"))
	_ = viper.BindPFlag("listen", rootCmd.PersistentFlags().Lookup("listen"))
	_ = viper.BindPFlag("port", rootCmd.PersistentFlags().Lookup("port"))
	_ = viper.BindPFlag("verbose", rootCmd.PersistentFlags().Lookup("verbose"))
	_ = viper.BindPFlag("bin-path", rootCmd.PersistentFlags().Lookup("bin-path"))
}
