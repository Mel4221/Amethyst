/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_GRAMMAR_TAB_H_INCLUDED
# define YY_YY_GRAMMAR_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    VAR = 258,                     /* VAR  */
    CONST = 259,                   /* CONST  */
    FUNCTION = 260,                /* FUNCTION  */
    CLASS = 261,                   /* CLASS  */
    DESTRUCTOR = 262,              /* DESTRUCTOR  */
    FREE = 263,                    /* FREE  */
    IMPORT = 264,                  /* IMPORT  */
    INCLUDE = 265,                 /* INCLUDE  */
    LOOP = 266,                    /* LOOP  */
    FOR = 267,                     /* FOR  */
    FOREACH = 268,                 /* FOREACH  */
    IF = 269,                      /* IF  */
    ELSE = 270,                    /* ELSE  */
    RETURN = 271,                  /* RETURN  */
    NEW = 272,                     /* NEW  */
    INT = 273,                     /* INT  */
    FLOAT = 274,                   /* FLOAT  */
    BOOL = 275,                    /* BOOL  */
    CHAR = 276,                    /* CHAR  */
    BYTE = 277,                    /* BYTE  */
    LONG = 278,                    /* LONG  */
    STRING = 279,                  /* STRING  */
    NULL_LITERAL = 280,            /* NULL_LITERAL  */
    IDENTIFIER = 281,              /* IDENTIFIER  */
    NUMBER = 282,                  /* NUMBER  */
    STRING_LITERAL = 283,          /* STRING_LITERAL  */
    BOOLEAN_LITERAL = 284,         /* BOOLEAN_LITERAL  */
    ASSIGN = 285,                  /* ASSIGN  */
    PLUS = 286,                    /* PLUS  */
    MINUS = 287,                   /* MINUS  */
    MULT = 288,                    /* MULT  */
    DIV = 289,                     /* DIV  */
    EXP = 290,                     /* EXP  */
    EQ = 291,                      /* EQ  */
    NEQ = 292,                     /* NEQ  */
    LT = 293,                      /* LT  */
    GT = 294,                      /* GT  */
    LE = 295,                      /* LE  */
    GE = 296,                      /* GE  */
    DOT = 297,                     /* DOT  */
    COMMA = 298,                   /* COMMA  */
    COLON = 299,                   /* COLON  */
    SEMICOLON = 300,               /* SEMICOLON  */
    LPAREN = 301,                  /* LPAREN  */
    RPAREN = 302,                  /* RPAREN  */
    LBRACE = 303,                  /* LBRACE  */
    RBRACE = 304,                  /* RBRACE  */
    LT_OP = 305,                   /* LT_OP  */
    GT_OP = 306,                   /* GT_OP  */
    SLASH = 307,                   /* SLASH  */
    FROM = 308,                    /* FROM  */
    AS = 309,                      /* AS  */
    IN = 310,                      /* IN  */
    LOWER_THAN_ELSE = 311          /* LOWER_THAN_ELSE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_GRAMMAR_TAB_H_INCLUDED  */
