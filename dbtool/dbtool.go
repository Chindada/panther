package dbtool

import (
	"errors"
	"fmt"
	"os"

	"github.com/chindada/panther/pkg/launcher"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

func Run() {
	// Init root command
	rootCmd := &cobra.Command{
		Use:           "mk-dbtool",
		Short:         "Manage DB",
		SilenceErrors: true,
		SilenceUsage:  true,
		CompletionOptions: cobra.CompletionOptions{
			DisableDefaultCmd: true,
		},
		PersistentPreRunE: initDbt,
	}

	subCommands := []*cobra.Command{
		GetInitSubcommand(),
		GetMigrateSubcommand(),
		GetStatusSubcommand(),
		GetStartSubcommand(),
		GetStopSubcommand(),
		GetBackupSubcommand(),
		GetRestoreSubcommand(),
		GetListBackupsSubcommand(),
		GetDataPathSubcommand(),
		GetClearSubcommand(),
	}
	for _, subCommand := range subCommands {
		rootCmd.AddCommand(subCommand)
	}
	flags(rootCmd)
	if e := rootCmd.Execute(); e != nil {
		fmt.Println(e)
		os.Exit(1)
	}
}

func initDbt(*cobra.Command, []string) error {
	dbName := viper.GetString("db-name")
	if dbName == "" {
		return errors.New("db-name is required")
	}
	var options []launcher.Option
	if viper.GetString("listen") != "" {
		options = append(options, launcher.Listen(viper.GetString("listen")))
	}
	if viper.GetString("port") != "" {
		options = append(options, launcher.Port(viper.GetString("port")))
	}
	if viper.GetString("bin-path") != "" {
		options = append(options, launcher.BinaryRoot(viper.GetString("bin-path")))
	}
	if viper.GetBool("verbose") {
		options = append(options, launcher.Verbose(true))
	}
	options = append(options, launcher.DBName(dbName))
	launcher.Init(options...)
	return nil
}
