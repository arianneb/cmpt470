% Arianne Butler
% alb153, 11068223
% CMPT470, A1

% Grammar:
% --------

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


% Single line of code
define single_line
    [variable_declaration] [NL]
    | [print_statement] [NL]
    | [return_statement] [NL]
end define

define variable_declaration
    [data_type] [variable_name]
    | [data_type] [repeat variable_name]
    | [data_type] [variable_assignment]
end define

define data_type
    'const [type]
    | 'unsigned [type]
    | 'signed [type]
    | [type]
end define

define type
    'int
    | 'char
    | 'float
end define

define variable_assignment
    [variable_name] = [value]; 
end define

define variable_name
    [id]
    | [id],
    | [id]; [NL]
end define

define value
    [number]
    | [floatnumber]
end define


define print_statement
    printf([stringlit]); [NL]
end define

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
