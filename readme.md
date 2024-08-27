

## Lutfika Evelyn

## About

**Lutfika Evelyn** is an image for database backup that uses Restic and Rclone.

> Do you speak Indonesian? [Click here](readme.id.md)

## Supports

1. PostgreSQL: `lutfika/evelyn:ubuntu24-pgsql-rclone`
2. Microsoft SQL Server `lutfika/evelyn:ubuntu24-mssql-rclone`


## Before You Start

1. You must install Rclone and Restic on your machine to generate the configuration and repository for your backup. You can't configure it before running these tools.
2. Run `rclone config` to set up the drive where you want to store your backups.
3. After that, Rclone will generate the necessary authentication to access the drive. Use `rclone config file` to locate it.
4. Create a repository by typing `restic init -r rclone:<drive_name>:[directory]`.
5. The section after `-r ...` is your `RESTIC_REPOSITORY`, and the password you input will be your `RESTIC_PASSWORD`.
6. Note: The `[directory]` section is optional but required if you're using S3 or want to create a dedicated folder.

## Configure It!

1. Go to [example/postgres/rcfg](example/postgres/rcfg) and copy the files to the location where you want to set up the backup job server.
2. Configure the `.env.example` file and rename it to `.env`.
3. Copy the latest Rclone configuration file to the `rclone.conf` file provided in the example. The configuration file was generated in the "Before You Start" section (please read carefully).
4. NOTE: Ensure that the `RESTIC_REPOSITORY` matches the configuration you set up.

