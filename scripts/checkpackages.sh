$()$(
	bash
	#!/bin/bash

	# Get the list of installed packages
	pacman -Qqe >../installed_packages.txt

	# Check if a package is installed or not
	package_name="package_name"
	if pacman -Q ${package_name} >/dev/null; then
		echo "${package_name} is installed"
	else
		echo "${package_name} is not installed"
	fi
)$()
You can then run the script like this:
$()$(
	chmod +x check_installed_packages.sh
	./check_installed_packages.sh
)$()
