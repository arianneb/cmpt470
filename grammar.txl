% Arianne Butler
% alb153, 11068223
% CMPT470, A1

% Grammar:
% --------

% C PROGRAM
define program
    [c_function]
end define


% C FUNCTION
define c_function
    [function_head] [NL]
	{ [NL][IN]
	  [function_body]
	}
end define


% FUNCTION PIECES
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
    [repeat single_entity] [NL]
end define


% SINGLE ENTITY OF CODE
define single_entity
    [data_type] [variable_declaration]
    | [variable_assignment]
    | [if_statement]
    | [else_statement]
    | [switch_statement]
    | [print_or_scan]
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
    | [id]
end define

define expression
    [id] [op] [value]
end define

define op
    '+
    |'*
    |'-
end define


% IF ELSE STATEMENTS
define if_statement
    if ( [conditional] ) [NL] [conditional_body]
    
end define

define else_statement
    else [NL] [conditional_body]
end define

define conditional
    [single_condition]
    | [multi_condition]
end define

define single_condition
    [id] [repeat compare_op] [value]
    | [special] ( [id] [repeat compare_op] [value] )
end define

define multi_condition
    [single_condition] [add_condition]
end define

define add_condition
    [repeat special+] [single_condition] 
end define

define compare_op
    '< | '> | '=
end define

define conditional_body
    { [NL] [IN] [repeat single_entity] [NL] [EX] } [NL]
    | [IN] [single_entity] [EX]
end define


% PRINT AND SCAN STATEMENT
define print_or_scan
    printf([print_scan_content]); [NL]
    | scanf([print_scan_content]); [NL]

end define

define print_scan_content
    [stringlit]
    | [stringlit], [id]
    | [stringlit], [special] [id]
end define

define special
    '& | '! | ': | '|
end define


% SWITCH STATEMENT

define switch_statement
    [id] ([id]) [NL] { [NL] [IN] [repeat case_statement] [default] [EX] [NL] } [NL]
end define

define case_statement
    [id] [value] [special] [NL] [IN] [single_entity] [break]
end define

define break
    [id]; [NL] [EX]
end define

define default
    [id] [special] [NL] [IN] [single_entity] [EX] [NL]
end define


% RETURN STATEMENT
define return_statement
    return [return_value]; [EX]
end define

define return_value
    [number]
end define


% RULES

function main
    match [program]
	P[program]
end function
