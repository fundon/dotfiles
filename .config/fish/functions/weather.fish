# Defined in - @ line 1
function weather --description 'alias weather=curl wttr.in/China'
	curl wttr.in/China $argv;
end

