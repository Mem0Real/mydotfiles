function mkcd --description "Create a directory and move into it"
	mkdir -p $argv[1] && cd $argv[1]
end
