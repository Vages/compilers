#include "symtab.h"



//For the sting table
static char **strings;
static int strings_size = 16, strings_index = -1;

extern int outputStage; // This variable is located in vslc.c




void
symtab_init ( void )
{
	strings = (char**)malloc(sizeof(char*)*strings_size);
}


void
symtab_finalize ( void )
{
	for(int i = 0; i <= strings_index; i++){
		free(strings[i]);
	}
	/* 	Eirik's note: I am a bit uncertain as to whether freeing each cell of strings is
		not double freeing, because I do not know the contents of node_finalize
		in the file from which tree.o has been compiled. However, I did not think
		to do this when I programmed node_finalize, so I guess the safest choice
		is to do it here.
	*/
	free(strings);
    
}


int
strings_add ( char *str )
{
	strings_index++;
	
	if(strings_index >= strings_size){
		strings_size = strings_size*2;
		strings = (char**)realloc(strings, strings_size*sizeof(char*));
		/* 	Eirik: I wager that we are more pressed for time than space,
			and thus I'm choosing to allocate more space exponentially 
			(by doubling the size of the array) rather than linearly.
		*/
	}
	
	strings[strings_index] = str;

	if(outputStage == 7)
        printf( "Add strings (%s), index: %d \n", str, strings_index );
	
	return strings_index;
}


void
strings_output ( FILE *stream )
{
	 fputs (
		".syntax unified\n"
		".cpu cortex-a15\n"
		".fpu vfpv3-d16\n"
		".data\n"
		".align	2\n"
		".DEBUG: .ascii \"Hit Debug\\n\\000\"\n"
		".DEBUGINT: .ascii \"Hit Debug, r0 was: %d\\n\\000\"\n"
		".INTEGER: .ascii \"%d \\000\"\n"
		".FLOAT: .ascii \"%f \\000\"\n"
		".NEWLINE: .ascii \"\\n \\000\"\n",
		stream
	);
	for ( int i=0; i<=strings_index; i++ ) {
		fprintf ( stream, ".STRING%d: .ascii %s\n", i, strings[i] );
		fprintf ( stream, ".ascii \"\\000\"\n"); // ugly hack
	}
	fputs ( ".globl main\n", stream );
	fputs ( ".align	2\n", stream );
}







char* base_type_to_string(base_data_type_t bt){
	switch(bt){
	case INT_TYPE:
		return "INT";
	case FLOAT_TYPE:
		return "FLOAT";
	case BOOL_TYPE:
		return "BOOL";
	case VOID_TYPE:
		return "VOID";
	case STRING_TYPE:
		return "STRING";
	case ARRAY_TYPE:
		return "ARRAY";
	default:
		return "";
	}
}


char* type_to_string(data_type_t type){
	switch(type.base_type){


		case ARRAY_TYPE:
		{
			char* buffer = malloc(200);
			char index_buffer[10];

			sprintf(buffer, "ARRAY(%s)", base_type_to_string(type.array_type));
			for(int i = 0; i < type.n_dimensions; i++){
				sprintf(index_buffer, "[%d]", type.dimensions[i]);
				strcat(buffer, index_buffer);
			}
			return buffer;
		}
		default:
			return base_type_to_string(type.base_type);
	}
}

char* function_symbol_to_string(function_symbol_t* fun_symbol){
	// memory leak :)
	char* buffer = malloc(100);
	buffer[0] = 0;

	strcat(buffer, fun_symbol->label);
	strcat(buffer, " ");
	strcat(buffer, type_to_string(fun_symbol->return_type));
	strcat(buffer, "<=(");
	for(int i = 0; i < fun_symbol->nArguments; i++){
		strcat(buffer, type_to_string(fun_symbol->argument_types[i]));
		if(i != fun_symbol->nArguments-1)
			strcat(buffer, ",");
	}
	strcat(buffer, ")");

	return buffer;
}

char* symbol_to_string(symbol_t* symbol){
    char* buffer = malloc(100);
    char num_buffer[10];
    buffer[0] = 0;

    strcat(buffer, symbol->label);
    strcat(buffer, " ");
    strcat(buffer, type_to_string(symbol->type));
    strcat(buffer, " depth:");
    sprintf(num_buffer, "%d", symbol->depth);
    strcat(buffer, num_buffer);
    strcat(buffer, " offset:");
    sprintf(num_buffer, "%d", symbol->stack_offset);
    strcat(buffer, num_buffer);

    return buffer;
}

