# SWF player addon for retropie
## How to install:

Download the repository.
Give yourself modification rights using `chmod -x autosetup.sh`
Run the setup script using `sudo ./autosetup.sh`
## Manual install
Install gnash using `sudo apt-get gnash`

Then change the path to the roms in the `es_systems.cfg` to the path where you will store your `.swf` files.

Finally add everything from the `es_systems.cfg` to your own `es_systems.cfg`.

The default folder for `es_systems.cfg` is at `/etc/emulationstation`
