# Running Nix Configuration

## Introduction

This guide outlines the steps to execute the provided Nix configuration to set up your environment.

## Prerequisites

Ensure you have the following prerequisites installed:
- [Nix package manager](https://nixos.org/download.html)
- [Bash](https://www.gnu.org/software/bash/)

## Configuration Files

Ensure you have the following configuration files in your environment:

- `default.nix`: Contains the Nix package definitions and shell configuration.
- `bash_it.sh`: Bash-it configuration script.
- `script.sh`: Shell script containing executable commands.

## Steps to Execute

1. **Clone the Repository:**

   Clone the repository containing the configuration files.

   ```bash
   git clone <repository_url>
    ```
### Navigate to the Directory:

Change into the directory containing the cloned repository.

```bash
cd <repository_directory>

```
### Execute Nix Shell:

Execute the Nix shell by running the following command:

```bash
nix-shell default.nix
```
