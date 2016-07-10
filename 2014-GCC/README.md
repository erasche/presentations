# TODO

1. Make code samples identical
2. Reduce length of code samples
3. Provide CLI `--help`
4. Provide single galaxy XML file presenting output
5. Maybe a bash example of generating a whole bunch of xml files? ``for i in /usr/local/bin/cpt*.pl; do $i --generate_galaxy_xml | xmllint --pretty 1 - > `basename $i .pl`.xml; done;``
