%{
#include <stdio.h>
#include <stdlib.h>
%}

%token VAR CONST FUNCTION CLASS DESTRUCTOR FREE IMPORT INCLUDE LOOP FOR FOREACH IF ELSE RETURN NEW
%token INT FLOAT BOOL CHAR BYTE LONG STRING NULL_LITERAL
%token IDENTIFIER NUMBER STRING_LITERAL BOOLEAN_LITERAL
%token ASSIGN PLUS MINUS MULT DIV EXP EQ NEQ LT GT LE GE
%token DOT COMMA COLON SEMICOLON LPAREN RPAREN LBRACE RBRACE LT_OP GT_OP
%token SLASH FROM AS IN /* Added missing tokens */

%%

Program: StatementList ;

StatementList: StatementList Statement | /* empty */ ;

Statement: VariableDeclaration
         | Assignment
         | Expression
         | ControlFlow
         | ReturnStatement
         | ConstDeclaration
         | FunctionDefinition
         | ClassDefinition
         | ImportStatement
         | IncludeStatement
         | DestructorDefinition /* Added */
         | FreeStatement        /* Added */
         | ReferenceAssignment  /* Added */
         | CopyOnWrite          /* Added */
         ;

Block: LBRACE StatementList RBRACE ;

VariableDeclaration: VAR IDENTIFIER ASSIGN Expression SEMICOLON
                   | VAR IDENTIFIER SEMICOLON
                   ;

ConstDeclaration: CONST IDENTIFIER ASSIGN Expression SEMICOLON ;

Assignment: IDENTIFIER ASSIGN Expression SEMICOLON ;

Expression: Literal
          | IDENTIFIER
          | BinaryExpression
          | FunctionCall
          | ObjectCreation
          | PropertyAccess  /* Added */
          | MethodCall      /* Added */
          ;

Literal: NUMBER | STRING_LITERAL | BOOLEAN_LITERAL | NULL_LITERAL ;

BinaryExpression: Expression Operator Expression ;

Operator: PLUS | MINUS | MULT | DIV | EXP | EQ | NEQ | LT | GT | LE | GE ;

ClassDefinition: CLASS IDENTIFIER OptInheritance Block ;

OptInheritance: COLON IDENTIFIER InheritanceList | /* empty */ ;

InheritanceList: COMMA IDENTIFIER InheritanceList | /* empty */ ;

ObjectCreation: NEW IDENTIFIER LPAREN OptArgumentList RPAREN ;

PropertyAccess: IDENTIFIER DOT IDENTIFIER ;

MethodCall: IDENTIFIER DOT IDENTIFIER LPAREN OptArgumentList RPAREN ;

OptArgumentList: ArgumentList | /* empty */ ;

ArgumentList: Expression COMMA ArgumentList | Expression ;

FunctionDefinition: FUNCTION OptType IDENTIFIER LPAREN OptParameterList RPAREN Block ;

OptType: INT | FLOAT | BOOL | CHAR | BYTE | LONG | STRING | NULL_LITERAL | IDENTIFIER | /* empty */ ;

OptParameterList: ParameterList | /* empty */ ;

ParameterList: Parameter COMMA ParameterList | Parameter ;

Parameter: IDENTIFIER COLON OptType | IDENTIFIER ;

FunctionCall: IDENTIFIER LPAREN OptArgumentList RPAREN ;

ReturnStatement: RETURN OptExpression SEMICOLON ;

OptExpression: Expression | /* empty */ ;

ControlFlow: IfStatement | Loop | ForLoop | ForeachLoop ;

IfStatement: IF LPAREN Expression RPAREN Block OptElse %prec LOWER_THAN_ELSE;

OptElse: ELSE Block | /* empty */ ;

Loop: LOOP Block ;

ForLoop: FOR LPAREN IDENTIFIER ASSIGN Expression SEMICOLON Expression SEMICOLON Expression RPAREN Block ;

ForeachLoop: FOREACH LPAREN IDENTIFIER IN Expression RPAREN Block ;

DestructorDefinition: DESTRUCTOR LPAREN RPAREN Block ;

FreeStatement: FREE LPAREN Expression RPAREN SEMICOLON ;

ReferenceAssignment: IDENTIFIER ASSIGN PropertyAccess SEMICOLON ;

CopyOnWrite: IDENTIFIER ASSIGN Expression SEMICOLON ;

ImportStatement: IMPORT WildcardImport SEMICOLON
               | IMPORT SpecificImport SEMICOLON
               | IMPORT RenamedImport SEMICOLON
               ;

WildcardImport: MULT FROM ModulePath ;

SpecificImport: ImportPath FROM ModulePath ;

RenamedImport: ImportPath AS IDENTIFIER ;

ImportPath: IDENTIFIER SlashIdentifiers ;

SlashIdentifiers: SLASH IDENTIFIER SlashIdentifiers | /* empty */ ;

ModulePath: STRING_LITERAL ;

IncludeStatement: INCLUDE IncludePath SEMICOLON ;

IncludePath: STRING_LITERAL ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
