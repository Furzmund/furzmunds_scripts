# Scripts
1. ## Backup
    ### Types of backups
    - Archive - Full backup to tar.gz file
    - Sync - Syncronised from source to destination based on changes

    ### How To
    Create a backup configuration file using the fields in the table below

    *See also the examples in the repo*

    | Field         | Description                         | Values or Examples          |
    | ------------- | ----------------------------------- | --------------------------- |
    | BACKUP_NAME   | Identifier and part of the filename | Valid filename              |
    | BACKUP_TYPE   | Type of backup desired              | ARCHIVE or SYNC             |
    | DESTINATION   | Sync destination path               | Valid directory path        |
    | EXCLUDE_FILES | BASH array of files/dirs to exclude | ex. ("*.png" "Screenshots") |
    | SOURCE_FILES  | BASH array of files/dirs to backup  | ex. ("*.png" "Screenshots") |
    | WORKING_PATH  | The path in which to run            | Valid directory path        |

    ### Backup Configuration Example
    ```bash
    BACKUP_NAME="photos"
    BACKUP_TYPE="ARCHIVE"
    DESTINATION="$HOME/backups"
    EXCLUDE_FILES=("*.png" "Screenshots")
    SOURCE_FILES=("Pictures")
    WORKING_PATH=$HOME
    ```

    Run the backup script using the configuration file

    ```backup [CONFIG.bc] [OPTIONS,..]```

2. ## RamDisk
    ### How To Use

    Type `ramdisk` to mount the disk

    Type `ramdisk` again to dismount the disk

    ### Environment Variables

    | Field         | Description                         | Values or Examples          |
    | --- | --- | --- |
    | RAMDISK_PATH | Mount path for the ram disk | /mnt/myramdisk |
    | RAMDISK_SIZE | Size of the ram disk (Be mindful of how much ram is available) | 100m |
