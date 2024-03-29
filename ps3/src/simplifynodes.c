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

	root = simplify_default(root, depth);
	
	if (root->data_type.base_type == ARRAY_TYPE){
		
		root->data_type.array_type = root->children[0]->data_type.base_type;
		node_finalize(root->children[0]);
		
		int index_children = root->children[1]->n_children;
		root->data_type.n_dimensions = index_children;
		
		root->data_type.dimensions = malloc(sizeof(int)*index_children);
		
		for (int j = 0; j < index_children; j++){
			root->data_type.dimensions[j] = root->children[1]->children[j]->int_const;
			node_finalize(root->children[1]->children[j]); // This fixed the last memory leak
		}
		
		node_finalize(root->children[1]);

		root->n_children = 0;
	}

	return root;
}


Node_t* simplify_function ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);

	Node_t** new_children = (Node_t**)malloc(sizeof(Node_t*)*2);

	root->data_type = root->children[0]->data_type;
	node_finalize(root->children[0]);

	root->label = STRDUP(root->children[1]->label);
	node_finalize(root->children[1]);

	new_children[0] = root->children[2];
	new_children[1] = root->children[3];

	free(root->children);

	root->children = new_children;
	root->n_children = 2;

	return root;
}




Node_t* simplify_declaration_statement ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	
	simplify_default(root, depth);

	root->data_type = root->children[0]->data_type;
	node_finalize(root->children[0]);

	root->label = STRDUP(root->children[1]->label);
	node_finalize(root->children[1]);

	free(root->children);
	root->n_children = 0;

	return root;

}


Node_t* simplify_single_child ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	simplify_default(root, depth);

	if(root->nodetype.index==ARGUMENT_LIST){
		Node_t* child = root->children[0];
		node_finalize(root);
		root = child;
	} else if ((root->nodetype.index == STATEMENT)||(root->nodetype.index == PARAMETER_LIST)){
		if (root->n_children ==1){
			Node_t* child = root->children[0];
			node_finalize(root);
			root = child;
		}
	}

	return root;
}

Node_t* simplify_list_with_null ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root = simplify_default(root, depth);
	
	if (root->children[0]==NULL){
		Node_t** new_children = malloc(sizeof(Node_t*));
		new_children[0] = root->children[1];
		
		free(root->children);
		root->children = new_children;
		root->n_children = 1;
		
		return root;
	}

	Node_t* left_child = root->children[0];
	int no_of_children_in_left = left_child->n_children;
	
	Node_t** new_children = malloc(sizeof(Node_t*)*(no_of_children_in_left+1));
	
	for(int i = 0; i<no_of_children_in_left; i++){
		new_children[i] = left_child->children[i];
	}

	new_children[no_of_children_in_left] = root->children[1];
	
	node_finalize(left_child);
	free(root->children);
	
	root->children = new_children;
	root->n_children = no_of_children_in_left+1;
	
	return root;	
}


Node_t* simplify_list ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	
	root = simplify_default(root, depth);

	if (root->n_children>1){
		Node_t* left_child = root->children[0];
		int no_of_children_in_left = left_child->n_children;
		
		Node_t** new_children = malloc(sizeof(Node_t*)*(no_of_children_in_left+1));
		
		for(int i = 0; i<no_of_children_in_left; i++){
			new_children[i] = left_child->children[i];
		}

		new_children[no_of_children_in_left] = root->children[1];
		
		node_finalize(left_child);
		free(root->children);
		
		root->children = new_children;
		root->n_children = no_of_children_in_left+1;
	}

	return root;
}


Node_t* simplify_expression ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s (%s) \n", depth, ' ', root->nodetype.text, root->expression_type.text );

	root = simplify_default(root, depth);

	if (root->n_children == 1){
		if((root->expression_type.index!=NOT_E)&&(root->expression_type.index!=UMINUS_E)&&(root->expression_type.index!=NEW_E)){
			Node_t* child = root->children[0];
			node_finalize(root);
			root = child;
		}
	}

	return root;
}

