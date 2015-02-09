#include "simplifynodes.h"

extern int outputStage; // This variable is located in vslc.c

Node_t* simplify_default ( Node_t *root, int depth )
{	
	for (int i = 0; i < root->n_children; i++){
		Node_t* child = root->children[i];
		if (child != NULL) {
			root->children[i] = child->simplify(child, depth+1);
		}
	}

	return root;
}


Node_t* simplify_types ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	/*
	Node_t** new_children = malloc(sizeof(Node_t*)*2);
	int c_i = 0;

	for (int i = 0; i<root->n_children; i++){
		Node_t* child = root->children[i];
		if (child != NULL){
			child = child->simplify(child, depth+1);
			if (child->nodetype.index == TYPE){
				root->data_type = child->data_type;
				free(child);
			} else if (child->nodetype.index == VARIABLE){
				root->label=STRDUP(child->label);
				free(child);
			} else {
				new_children[c_i] = child;
				c_i += 1;
			}
		}
	}

	free(root->children);
	root->children = new_children;
	root->n_children = c_i;*/

	root = simplify_default(root, depth+1);
	
	return root;
}


Node_t* simplify_function ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	Node_t** new_children = malloc(sizeof(Node_t*)*2);
	int c_i = 0;

	for (int i = 0; i<root->n_children; i++){
		Node_t* child = root->children[i];
		if (child != NULL){
			child = child->simplify(child, depth+1);
			if (child->nodetype.index == TYPE){
				root->data_type = child->data_type;
				free(child);
			} else if (child->nodetype.index == VARIABLE){
				root->label=STRDUP(child->label);
				free(child);
			} else {
				new_children[c_i] = child;
				c_i += 1;
			}
		}
	}

	free(root->children);
	root->children = new_children;
	root->n_children = c_i;
	
	return root;
}




Node_t* simplify_declaration_statement ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth+1);
}


Node_t* simplify_single_child ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth+1);

	return root;

}

Node_t* simplify_list_with_null ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth+1);

	return root;
}


Node_t* simplify_list ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	
	root = simplify_default(root, depth);
	
	if (root->n_children > 1){
		Node_t* left_child = root->children[0];
		no_of_left_children = left_child->n_children;
		Node_t** new_children = malloc(sizeof(Node_t*)*(no_of_left_children+1));
		for(int i = 0; i<no_of_left_children; i++){
			new_children[i] = left_child->children[i];
		}
		new_children[no_of_left_children] = root->children[0];

		free(root->children);
		root->children = new_children;
		root->n_children = no_of_left_children+1;
	}

	return root;
}


Node_t* simplify_expression ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s (%s) \n", depth, ' ', root->nodetype.text, root->expression_type.text );

	root = simplify_default(root, depth+1);

	return root;
}

