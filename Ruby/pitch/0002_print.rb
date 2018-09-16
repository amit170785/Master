#!/usr/bin/ruby -w

print <<EOF
    These statements are printed
    using EOF method.
EOF

print <<"EOF";                # same as above
    These statements are printed
    using EOF method too.
EOF

print <<`EOC`                 # execute commands
	echo "Executing echo."
	ls -lrt
EOC

print <<"foo", <<"bar"  # you can stack them
	Option foo is selected.
foo
	No Option bar is selected.
bar
