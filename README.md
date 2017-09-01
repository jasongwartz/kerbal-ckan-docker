# Kerbal CKAN Docker Image

This is a Debian-based Docker image for the [Comprehensive Kerbal Archive Network](https://github.com/KSP-CKAN/CKAN) command-line interface.

To run, mount the KSP directory into the `/kerbal` directory and enable interactive terminal mode, such as:

    docker run -it -v /Users/jasongwartz/Library/Application\ Support/Steam/SteamApps/common/Kerbal\ Space\ Program:/kerbal jasongwartz/kerbal-ckan

When the container starts, it will add the Kerbal directory to its registry, show the help message, and leave you in a bash shell. You can then execute commands with `ckan <COMMAND>`.

