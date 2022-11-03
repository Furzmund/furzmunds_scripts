## Scripts
1. ### Backup
    #### Types of backups
    - Archive - Full backup to tar.gz file
    - Sync - Syncronised from source to destination based on changes

    #### How To
    a. Start by creating a backup configuration file
        i. Configuration fields
| Field         | Description                         | Values                      |
|---------------|-------------------------------------|-----------------------------|
| BACKUP_NAME   | Identifier and part of the filename | Valid filename              |
| BACKUP_TYPE   | Type of backup desired              | ARCHIVE \| SYNC             |
| DESTINATION   | Sync destination path               | Existing directory path     |
| EXCLUDE_FILES | BASH array of files/dirs to exclude | ex. ("*.png" "Screenshots") |
| SOURCE_FILES  |                                     |                             |
| WORKING_PATH  |                                     |                             |

    ```bash
    BACKUP_NAME="photos"
    BACKUP_TYPE="ARCHIVE"
    DESTINATION="$HOME/backups"
    EXCLUDE_FILES=("*.png" "Screenshots")
    SOURCE_FILES=("Pictures")
    WORKING_PATH=$HOME```

    | Syntax | Description |
    | ----------- | ----------- |
    | Header | Title |
    | Paragraph | Text |

    ```backup [CONFIG.bc] [OPTIONS,..]```