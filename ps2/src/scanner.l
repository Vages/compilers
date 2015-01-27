%{
/* This %{ ... %} section is code that is glued into the generated scanner. */
#include "parser.h"

extern int outputStage; // This variable is located in vslc.c
    #define RETURN(t) do {                                             \
        if ( outputStage == 1 )                                        \
            printf( "TOKEN ( %d,\t'%s' )\n", t, yytext );    \
        return t;                                                      \
    } while ( 0 )
  
    
%}

/* Regular definitions */

dgt [0-9]
ws [\ \t\n]
ltr [A-Za-z_]
str \"([^\n\"]|\\\")*\"

%option array
%option noyywrap
%option yylineno

/* Rules */
%%
	/* Comments and whitespace*/
{ws}+			{} /* Whitespace */
"\/\/".*"\n"	{} /* Comments */

	/* Keywords */
FUNC			{ RETURN(FUNC); }
PRINT			{ RETURN(PRINT); }
RETURN			{ RETURN(RETURN); }
NEW				{ RETURN(NEW); }
IF				{ RETURN(IF); }
THEN			{ RETURN(THEN); }
ELSE			{ RETURN(ELSE); }
END				{ RETURN(END); }
WHILE			{ RETURN(WHILE); }
DO				{ RETURN(DO); }
FOR				{ RETURN(FOR); }
TO				{ RETURN(TO); }
INT				{ RETURN(INT); }
BOOL			{ RETURN(BOOL); }
FLOAT			{ RETURN(FLOAT); }
START			{ RETURN(START); }
VOID			{ RETURN(VOID); }
ARRAY			{ RETURN(ARRAY); }

	/* Operators */
":="			{ RETURN(ASSIGN); }
"+"				{ RETURN('+'); }
"-"				{ RETURN('-'); }
"*"				{ RETURN('*'); }
"/"				{ RETURN('/'); }

"<" 			{ RETURN('<'); }
">"				{ RETURN('>'); }
"<="			{ RETURN(LEQUAL); }
">="			{ RETURN(GEQUAL); }
"=="			{ RETURN(EQUAL); }
"!="			{ RETURN(NEQUAL); }

"&&"			{ RETURN(AND); }
"||"			{ RETURN(OR); }
"!"				{ RETURN('!'); }
"."				{ RETURN('.'); }

	/* Types and stuff */
{dgt}+			{ RETURN(INT_CONST); }
{dgt}+\.{dgt}+	{ RETURN(FLOAT_CONST); }

TRUE			{ RETURN(TRUE_CONST); }
FALSE			{ RETURN(FALSE_CONST); }

{str}			{ RETURN(STRING_CONST); }
{ltr}({ltr}|{dgt})*	{ RETURN(IDENTIFIER); }

"("				{ RETURN('('); }
")"				{ RETURN(')'); }
","				{ RETURN(','); }
";"				{ RETURN(';'); }

%%
