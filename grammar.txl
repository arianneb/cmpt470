% Arianne Butler
% alb153, 11068223
% CMPT470, A1


% Grammar:

% keys
%   int char
% end keys


% C Program
define program
    [c_function]
end define


% C Function
define c_function
    [function_head] [NL]
	{ [NL][IN]
	  [function_body]
	}
end define


% Functions pieces:
define function_head
    [return_type] [function_name] ()
end define

define return_type
    int
end define

define function_name
    [id]
end define

define function_body
    [repeat single_line] [NL]
end define


% Single lines of code
define single_line
    [variable_declaration] [NL]
    | [print_statement] [NL]
    | [return_statement] [NL]
end define

define variable_declaration
    [data_type] [id];
end define

define data_type
    'int
    | 'char
end define

define print_statement
    printf([stringlit]); [NL]
end define


% Function Returns
define return_statement
    return [return_value]; [NL][EX]
end define

define return_value
    [number]
end define


% Rules:

function main
    match [program]
	P[program]
end function
