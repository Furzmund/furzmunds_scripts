# Furzmund's Scripts
Helpful Linux scripts

## Scripts
1. **Backup**
    1. Create named backups for repeated use with date/time stamps
    ```bash
    backup -n <NAME>
    ```
    1. **Setup**
        1. Set *BACKUP_DESTINATION* environment variable
            1. This only has to be done once if it is added to the .bashrc file
            ```bash
            echo "export BACKUP_DESTINATION=$HOME/backups" >> ~/.bashrc
            ```
        1. Create at least the .include file\
        (Optionally the .exclude file)
        1. Run the backup with the name of the backup
        1. **Example**
            ```bash
            export BACKUP_DESTINATION=$HOME/backups
            echo $HOME/myproject > mybackup.include
            touch mybackup.exclude
            backup -n mybackup
            ```
