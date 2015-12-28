% Final
% 2013-12-03
% Eric Rasche

# Take Home

I have no illusions as to how busy all of you are. However, in the event that you wish to work on creating packages some more, I've written a spec for a take home project. If you complete this, feel free to email it to me and I'll check it over for you.

# Specification

At least try to achieve the main objectives. If you are feeling brave and have time for reading and coding, then feel free to attempt the other objectives! They should require some reading and searching the web for information. If you get stuck, email me and I will be happy to send you pointers.

## Main objectives

* Should provide a command that does something, anything. Recommendation of printing static text.
* Control file should be properly filled out such that the package can install on a *clean* system without issue.
* Invokes update-alternatives to create and remove alternate names for itself.
* Complete man page with all of the proper sections filled out so I can figure out what it does just by `man yourcommand`.
* Sign your package

## Optional objectives

These should be well within your reach.

* Scripting
	* Ask the user questions about how the programme should be configured in `postinst` (hint, [read this](http://www.fifi.org/doc/debconf-doc/tutorial.html))
	* Clean up all possibly created files in `postrm`

## Advanced Objectives

Feel free to IM/email me on these, I am not 100% familiar with the `dbconfig` package and will be happy to offer any assistance I can.

* Daemon
	* Should run as a daemon, install `/etc/init.d/` script
	* Should start and stop the daemon in `postinst` and start
* Database
	* Use `dbconfig-common`. 
	* Take advantage of `debian-sys-maint` for MySQL users.

