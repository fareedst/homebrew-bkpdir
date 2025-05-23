# Homebrew Tap for BkpDir

This is the official Homebrew tap for [BkpDir](https://github.com/fareedst/bkpdir), a command-line tool for archiving directories on macOS and Linux.

## Installation

### Using Homebrew (Recommended)

First, tap this repository:
```bash
brew tap fareedst/bkpdir
```

Then install bkpdir:
```bash
brew install bkpdir
```

### One-liner Installation
```bash
brew install fareedst/bkpdir/bkpdir
```

## Features

BkpDir provides:
- Full and incremental directory archiving
- Exclusion patterns (like .gitignore)
- Git branch/hash in archive names
- Dry-run mode
- Archive listing
- Archive verification with checksums
- Automatic verification after creation

## Usage

After installation, you can use `bkpdir` from anywhere:

```bash
# Create a full backup
bkpdir full -n "Initial backup"

# Create an incremental backup
bkpdir inc -n "Changes after feature X"

# List all backups
bkpdir list

# Verify a backup
bkpdir verify backup-archive.zip
```

## Configuration

Place a `.bkpdir.yml` file in the root of your directory to configure exclusion patterns and other options.

## Uninstalling

```bash
brew uninstall bkpdir
brew untap fareedst/bkpdir
```

## About

BkpDir is developed by [Fareed Stevenson](https://github.com/fareedst).

For more information, visit the [main repository](https://github.com/fareedst/bkpdir). 