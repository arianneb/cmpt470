% Arianne Butler
% alb153, 11068223
% CMPT470, A1

% Grammar:
% --------

% SPECIAL TOKENS
tokens
    include_file    "\#(include)(<)[\u]+(.)[hc](>)"
    id ... |        "[(&)(!)(*)(\u)(:)]\i+"
    compound_op     "[&|<>=+-]+"
    increment       "[\u]+[ \t]*[(++)(--)]"
    continue        "continue"
    return          "return"
end tokens


% COMMENTS
comments
    //
    /* */
end comments



% C PROGRAM

define program
    [c_function]
    | [single_include] [NL] [c_function]
    | [multi_include] [NL] [c_function]
end define

define single_include
    [include_file] [NL]
end define

define multi_include
    [repeat single_include] 
end define



% C FUNCTION

define c_function
    [function_head] [NL]
	{ [NL][IN]
	  [function_body] [EX]
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
    [repeat single_entity]
end define



% SINGLE CODE ENTITIES

define single_entity
    [variable_declaration]
    | [variable_assignment]
    | [if_statement]
    | [else_statement]
    | [switch_statement]
    | [for_loop]
    | [while_loop]
    | [dowhile_loop]
    | [increment_value]
    | [break_continue]
    | [print_or_scan]
    | [return_statement]
end define



% VARIABLE DECLARATION AND ASSIGNMENT

define variable_declaration
    [data_type] [variable_name]
    | [data_type] [repeat variable_name]
    | [data_type] [variable_assignment]
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
    [variable_name] = [assigned_value]
    | [variable_name] = [assigned_value]; [NL] 
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
    | [id] [op] [value]; [NL]
end define

define op
    '+
    | '*
    | '-
    | '/
end define



% IF ELSE STATEMENTS

define if_statement
    if ( [conditional] ) [NL] [conditional_body]
end define

define else_statement
    else [NL] [conditional_body]
end define



% CONDITIONALS

define conditional
    [single_condition]
    | [multi_condition]
end define

define single_condition
    [compare_value] [compound_op] [compare_value]
    | ( [compare_value] [compound_op] [compare_value] )
    | [special] ( [compare_value] [compound_op] [compare_value] )
end define

define multi_condition
    [single_condition] [add_condition]
end define

define add_condition
    [compound_op] [single_condition] 
end define

define compare_value
    [value]
    | [id]
end define

define conditional_body
    { [NL] [IN] [repeat single_entity] [EX] } [NL]
    | [IN] [single_entity] [EX]
    | [IN] [break_continue]
end define



% SWITCH STATEMENT

define switch_statement
    [id] ([id]) [NL] { 
    [NL] [IN] [repeat case_statement] [default] [EX] 
    } [NL]
end define

define case_statement
    [id] [value] [special] 
    [NL] [IN] [single_entity] [break_continue] [EX]
end define

define break_continue
    [token]; [NL]
    | [id]; [NL] [EX]
end define

define default
    [id] [special] [NL] [IN] [single_entity] [EX]
end define



% FOR LOOP

define for_loop
    [id] ( [variable_declaration]; [single_condition]; [increment_value] ) 
    [NL] [loop_body]
end define

define increment_value
    [increment]
    | [increment]; [NL]
    | [id] [compound_op]
    | [id] [compound_op]; [NL]
end define

define loop_body
    [IN] [single_entity] [EX]
    | { [NL] [IN] [repeat single_entity] [EX] } [NL]
end define



% WHILE LOOP

define while_loop
    [id] [conditional] [NL] [loop_body]
end define



% DO WHILE LOOP

define dowhile_loop
    [id] [NL] [dowhile_body] [id] [conditional]; [NL]    
end define

define dowhile_body
    [IN] [single_entity] [EX]
    | { [NL] [IN] [repeat single_entity] [EX] }
end define



% PRINT AND SCAN STATEMENTS

define print_or_scan
    printf([print_scan_content]); [NL]
    | scanf([print_scan_content]); [NL]

end define

define print_scan_content
    [stringlit]
    | [stringlit], [id]
end define

define special
    : | '! 
end define



% RETURN STATEMENT

define return_statement
    [token] [return_value]; [NL]
end define

define return_value
    [number]
end define



% RULES

function main
    match [program]
	P[program]
end function
