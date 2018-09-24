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
    [data_type] [variable_declaration]
    | [variable_assignment]
    | [print_statement]
    | [return_statement]
end define

define variable_declaration
    [variable_name]
    | [repeat variable_name]
    | [variable_assignment]
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
    [variable_name] = [assigned_value]; [NL] 
end define

define variable_name
    [id]
    | [id],
    | [id]; [NL]
end define

define assigned_value
    [value]
    | [expression]
end define

define value
    [number]
    | [floatnumber]
    | [charlit]
end define

define expression
    [id] [op] [value]
end define

define op
    '+
    |'-
end define


% Print Statement
define print_statement
    printf([stringlit]); [NL]
end define


% Return Statement
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
