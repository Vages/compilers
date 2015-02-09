#include "simplifynodes.h"

extern int outputStage; // This variable is located in vslc.c

Node_t* simplify_default ( Node_t *root, int depth )
{	
	for (int i = 0; i < root->n_children; i++){
		Node_t* child = root->children[i]
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

	root = simplify_default(root, depth);
}


Node_t* simplify_function ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);
}




Node_t* simplify_declaration_statement ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);
}


Node_t* simplify_single_child ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);

	node_t* temp_n = root->children[0];
	free(root);
	return temp_n;

}

Node_t* simplify_list_with_null ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);
}


Node_t* simplify_list ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	
	root = simplify_default(root, depth);
}


Node_t* simplify_expression ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s (%s) \n", depth, ' ', root->nodetype.text, root->expression_type.text );

	root = simplify_default(root, depth);
}

