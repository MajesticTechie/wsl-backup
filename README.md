# wsl-backup
WSL export and import scripts, Useful for when reinstalling WSL

Backs up to C drive the .SSH dir, ssh_conf and bashrc file
# Export with:

`bash -c "$(wget -qO - https://raw.githubusercontent.com/MajesticTechie/wsl-backup/main/export.sh)"`

# Import with:

`bash -c "$(wget -qO - https://raw.githubusercontent.com/MajesticTechie/wsl-backup/main/import.sh)"`

# Powershell Commands for WSL
List Distributions:

`wsl --list --verbose`

==========================

Remove a distribution:

`wsl --unregister <NAME>`
