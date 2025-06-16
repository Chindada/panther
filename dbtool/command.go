package dbtool

import (
	"errors"
	"fmt"

	"github.com/chindada/panther/pkg/launcher"
	"github.com/spf13/cobra"
)

func GetStatusSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "status",
		Short: "Get the status of the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			status, err := dbt.IsRunning()
			if err != nil {
				return err
			}
			fmt.Printf("Database running status: %t\n", status)
			return nil
		},
	}
	return subcommand
}

func GetClearSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "clear",
		Short: "Clear the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			if !dbt.DatabaseAlreadyExists() {
				return nil
			}
			if err := dbt.StopDB(); err != nil {
				return err
			}
			if err := dbt.ClearDB(); err != nil {
				return err
			}
			return nil
		},
	}
	return subcommand
}

func GetDataPathSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "data",
		Short: "Get the data path of the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			dataPath := dbt.GetDataPath()
			fmt.Printf("Data path: %s\n", dataPath)
			return nil
		},
	}
	return subcommand
}

func GetInitSubcommand() *cobra.Command {
	var force, start bool
	subcommand := &cobra.Command{
		Use:   "init",
		Short: "Initialize the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			if dbt.DatabaseAlreadyExists() {
				if !force {
					return launcher.ErrDatabaseAlreadyExists
				}
				if err := dbt.ClearDB(); err != nil {
					return err
				}
			}
			return dbt.InitDB(start)
		},
	}
	subcommand.Flags().BoolVarP(&force, "force", "f", false, "Force initialization")
	subcommand.Flags().BoolVarP(&start, "start", "s", false, "Start the database after initialization")
	return subcommand
}

func GetMigrateSubcommand() *cobra.Command {
	var step int
	cli := &cobra.Command{
		Use:   "migrate",
		Short: "Migrate the database",
	}
	cli.AddCommand(&cobra.Command{
		Use:   "up",
		Short: "Migrate the database up",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			if step != 0 {
				return dbt.MigrateScheme(&step)
			}
			return dbt.MigrateScheme(nil)
		},
	})
	cli.AddCommand(&cobra.Command{
		Use:   "down",
		Short: "Migrate the database down",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			if step != 0 {
				step = -step
				return dbt.MigrateScheme(&step)
			}
			return errors.New("step is required")
		},
	})
	cli.PersistentFlags().IntVarP(&step, "step", "s", 0, "Migrate the database by step")
	return cli
}

func GetStartSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "start",
		Short: "Start the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			return dbt.StartDB()
		},
	}
	return subcommand
}

func GetStopSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "stop",
		Short: "Stop the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			return dbt.StopDB()
		},
	}
	return subcommand
}

func GetBackupSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "backup",
		Short: "Backup the database",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			return dbt.Backup(false)
		},
	}
	return subcommand
}

func GetRestoreSubcommand() *cobra.Command {
	var name string
	subcommand := &cobra.Command{
		Use:   "restore",
		Short: "Restore the database",
		RunE: func(*cobra.Command, []string) error {
			if name == "" {
				return errors.New("name is required")
			}
			dbt := launcher.Get()
			if err := dbt.StartDB(); err != nil {
				return err
			}
			return dbt.RestoreDatabase(name)
		},
	}
	subcommand.Flags().StringVarP(&name, "name", "n", "", "Name of the backup to restore")
	return subcommand
}

func GetListBackupsSubcommand() *cobra.Command {
	subcommand := &cobra.Command{
		Use:   "list",
		Short: "List all backups",
		RunE: func(*cobra.Command, []string) error {
			dbt := launcher.Get()
			backups, err := dbt.ListBackups()
			if err != nil {
				return err
			}
			for _, v := range backups {
				fmt.Printf("%s: %s\n", v.Name, v.Path)
			}
			return nil
		},
	}
	return subcommand
}
