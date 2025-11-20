%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT    [0-9]
WORD     [a-zA-Z_а-яА-ЯіІїЇєЄ0-9\x80-\xFF]

%%

{DIGIT}+ {
    int num = atoi(yytext);
    printf("%d", num + 1);
}

{WORD}+ {
    printf("%s", yytext);
}

.|\n {
    printf("%s", yytext);
}

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
