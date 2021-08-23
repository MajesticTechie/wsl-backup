# wsl-backup
WSL export and import scripts, Useful for when reinstalling WSL

(this is for personal use and probably won't be much to use to anyone else)


# Export with:

`bash -c "$(wget -qO - https://raw.githubusercontent.com/MajesticTechie/wsl-backup/main/export.sh)"`

# Import with:

`bash -c "$(wget -qO - https://raw.githubusercontent.com/MajesticTechie/wsl-backup/main/import.sh)"`

# Powershell Commands for WSL
List Distributions:

 wsl --list --verbose

==========================

Remove a distribution:

  wsl --unregister <NAME>
