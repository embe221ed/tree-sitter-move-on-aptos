(numerical_addr) @number
(number) @number
(byte_string) @string
(bool_literal) @boolean
(global_literal) @variable @constant
; (friend_param) @module

(module_ident) @class @variable @namespace
; (struct_identifier) @struct @variable @type
; (function_identifier) @function
(var_name) @variable
(type_param) @type
(primitive_type) @type
; (field_identifier) @property
; (constant_identifier) @property.static.constant

(module
  path: (identifier) @class @variable @namespace
  name: (identifier) @class @variable @namespace)
(type_args
  "<" @punctuation.bracket
  (type) @type
  ">" @punctuation.bracket)
(function_decl
  name: (identifier) @function
  (parameters
    (parameter
      (type
        (name_access_chain
            name: (identifier) @type))))?
  return_type: (type)? @type)
(struct_decl
    name: (identifier) @struct @variable @type
    (body
      (field_annot
        field: (identifier) @property
        (type) @type)?))
(constant_decl
  name: (identifier) @property.static.constant)
(use_decl
  (member
    (identifier) @type))

(friend_decl
  name: (name_access_chain
    (identifier) @namespace))
; (spec_let
;   name: (identifier) @property)
; (spec_property
;   (identifier) @property)
; (spec_variable
;   name: (identifier) @variable)
; (apply_type
;   (module_access
;     (identifier) @type))
; (apply_type
;   (module_access
;     (identifier) @type.defaultLibrary
;     (#match? @type.defaultLibrary "^u8|u16|u32|u64|u128|bool|address|signer|vector$")))
(call_expr
  func_name: (name_access_chain) @function)
(macro_call_expr
  macro_name: (name_access_chain) @function.macro
  "!"? @function.macro)
(pack_expr
  struct_name: (name_access_chain) @struct @type)
(expr_field
  field: (identifier) @property)
(expr_field
  field: (shorthand_field_identifier) @property)

; (bind_unpack
;   (module_access
;     (identifier) @struct @type))
; (dot_expression
;   access: (name_expression) @property)
;
; (quantifier_binding
;   (identifier) @parameter)
;
;
; (function_parameters
;   (function_parameter
;     name: (variable_identifier) @parameter.modification
;     type: (ref_type
;             mutable: ("&") (mutable_keyword))))
; (function_parameters
;   (function_parameter
;     name: (variable_identifier) @parameter.readonly
;     type: (ref_type
;             mutable: "&")))
;
; (binary_expression
;   operator: (binary_operator) @operator)
; (unary_op) @operator
;
;
; (spec_apply_name_pattern) @struct
;
;
(line_comment) @comment
(
  (line_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\/\\\/([^/].*)?$")
)
(block_comment) @comment
(
  (block_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\*\\\*(\\n|[^*].*)")
)
; (condition_kind) @macro
; (invariant_modifier) @modifier

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

; (type_arguments
;   "<" @punctuation.bracket
;   ">" @punctuation.bracket)
;
; (type_parameters
;   "<" @punctuation.bracket
;   ">" @punctuation.bracket)

"::" @punctuation.delimiter
":" @punctuation.delimiter
"." @punctuation.delimiter
"," @punctuation.delimiter
";" @punctuation.delimiter

"const" @keyword
"as" @keyword
"address" @keyword
"use" @keyword
"entry" @keyword
"friend" @keyword
"has" @keyword
"module" @keyword
"native" @keyword
"struct" @keyword
"public" @keyword
"fun" @keyword
"spec" @keyword
"schema" @keyword
"include" @keyword
"apply" @keyword
"to" @keyword
"with" @keyword
"internal" @keyword
"pragma" @keyword
"global" @keyword
"local" @keyword
"copy" @keyword
"drop" @keyword
"key" @keyword
"store" @keyword
"move" @keyword
"let" @keyword
"if" @keyword
"else" @keyword
"while" @keyword
"loop" @keyword
"return" @keyword
"abort" @keyword
"acquires" @keyword
(phantom) @keyword
(inline_keyword) @keyword
(mutable_keyword) @keyword
