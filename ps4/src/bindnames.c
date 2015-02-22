#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

//Solutions to last assignment, precompiled in bindsol.o
int bc(node_t* root, int stackOffset); //Eirik: Bind constant; places string type in symbol table
int bd(node_t* root, int stackOffset); //Eirik: Bind default; calls the bind function of the root's children

int bind_default ( node_t *root, int stackOffset)
{
	return bd(root, stackOffset);
}

int bind_function ( node_t *root, int stackOffset)
{
	//FINISHED
	//Eirik: Handles the bindings of a functions parameters and statements. The function itself has been bound in bind_function_list
	if(outputStage == 6)
		printf( "FUNCTION: Start: %s\n", root->label);

	scope_add();
	
	node_t* params = root->children[0];
	int n_params = params->n_children;

	stackOffset = 4*(n_params+1);

	for (int i = 0; i < n_params; i++){
		stackOffset = bind_declaration(params->children[i], stackOffset);
	}

	stackOffset = -4;

	node_t* stmts = root->children[1];
	int n_stmts = stmts->n_children;

	for (int j = 0; j < n_stmts; j++){
		stackOffset = bd(stmts->children[j], stackOffset);
	}

	scope_remove();

	if(outputStage == 6)
		printf( "FUNCTION: End\n");

	return stackOffset;
}

function_symbol_t* create_function_symbol(node_t* function_node)
{
	//FINISHED
	//Eirik: Creates a function symbol
    function_symbol_t* fs = malloc(sizeof(function_symbol_t));
    fs->label = STRDUP(function_node->label);
    fs->return_type = function_node->data_type;
    int args = function_node->children[0]->n_children;
    fs->nArguments = args;
    
    data_type_t* at = malloc(sizeof(data_type_t)*args);
    fs->argument_types = at;
    for (int i = 0; i < args; i++){
    	fs->argument_types[i] = function_node->children[0]->children[i]->data_type;
    }

    return fs;
}

int bind_function_list ( node_t *root, int stackOffset)
{
	//FINISHED
	//Eirik: Binds all function symbols in a function list and then continues tree traversal.
	if(outputStage == 6)
		printf( "FUNCTION_LIST: Start\n");

	for (int i = 0; i < root->n_children; i++){
		function_symbol_t* fs = create_function_symbol(children[i]);
		function_add(children[i]->label, fs);
	}

	for (int j = 0; j < root->n_children; j++){
		stackOffset = bind_function(root->children[j], stackOffset);
	}

	if(outputStage == 6)
		printf( "FUNCTION_LIST: End\n");

	return stackOffset;
}

int bind_constant ( node_t *root, int stackOffset)
{
	//FINISHED
    return bc(root, stackOffset); // Eirik: The same as the bind constant from last time
}


symbol_t* create_symbol(node_t* declaration_node, int stackOffset)
{
	//FINISHED
    //Eirik: Creates a symbol table struct and returns it.

	symbol_t* s = malloc(sizeof(symbol_t));
	s->stack_offset = stackOffset;
	s->label = STRDUP(declaration_node->label);
	s->type = declaration_node->data_type;

	return s;
}

int bind_declaration ( node_t *root, int stackOffset)
{
	//FINISHED
	//Eirik: Creates and passes an entry the symbol table.
	if(outputStage == 6)
		printf( "DECLARATION: parameter/variable : '%s', offset: %d\n", root->label, stackOffset);

	s = create_symbol(root, stackOffset);
	symbol_insert(s->label, s);

	stackOffset -= 4; // Eirik: stackOffset must be decremented, as per p. 14 in the recitation

	return stackOffset;
}

int bind_variable ( node_t *root, int stackOffset)
{	
	//FINISHED
	//Eirik: Binds a variables entry field to its appropriate symbol table entry
	if(outputStage == 6)
		printf( "VARIABLE: access: %s\n", root->label);

	root->entry = symbol_get(root->label);

	return stackOffset;
}

int bind_expression( node_t* root, int stackOffset)
{
	//FINISHED
	//Eirik: Binds an expression node of the func call type to its appropriate symbol table entry
	if(outputStage == 6)
		printf( "EXPRESSION: Start: %s\n", root->expression_type.text);

	if (root->expression_type.index == FUNC_CALL_E){
		root->function_entry = function_get(root->label);
	}

	if(outputStage == 6)
		printf( "EXPRESSION: End\n");

	return stackOffset;
}


