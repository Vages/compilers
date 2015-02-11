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

	if (root->data_type.base_type == ARRAY_TYPE){
		int no_of_children = root->n_children;
		for (int i = 0; i<no_of_children; i++){
			Node_t* child = root->children[i];
			if (child->nodetype.index == TYPE){
				root->data_type.array_type = child->data_type.base_type;
			} else if (child->nodetype.index == INDEX_LIST){
				int index_children = child->n_children;
				root->data_type.n_dimensions = index_children;
				root->data_type.dimensions = malloc(sizeof(int)*(index_children));
				for (int j = 0; j < index_children; j++){
					root->data_type.dimensions[j] = child->children[j].int_const;
				}
			}
		}
	}

	root->n_children = 0;
	
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
				//free(child);
			} else if (child->nodetype.index == VARIABLE){
				root->label=STRDUP(child->label);
				//free(child);
			} else {
				new_children[c_i] = child;
				c_i += 1;
			}
		}
	}

	//free(root->children);
	root->children = new_children;
	root->n_children = c_i;
	
	return root;
}




Node_t* simplify_declaration_statement ( Node_t *root, int depth )
{
	/* This seems to be working all right */
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	simplify_default(root, depth+1);
	int no_children = root->n_children;

	for (int i = 0; i < no_children; i++){
		Node_t* child = root->children[i];
		if (child != NULL){
			if (child->nodetype.index == TYPE){
				root->data_type = child->data_type;
			} else if (child->nodetype.index == VARIABLE){
				root->label = STRDUP(child->label);
			}
			node_finalize(child);
		}
	}

	root->n_children = 0;
	free(root->children);

	return root;
	
}


Node_t* simplify_single_child ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	root->children[0] = root->children[0]->simplify(root->children[0], depth+1);

	Node_t* child = root->children[0];
	//free (root);

	return child;

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
	/*Seems to be working*/
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );
	

	if (root->n_children == 1){
		root = simplify_default(root, depth+1);
	} else if (root->n_children>1){
		root = simplify_default(root, depth+1);
		Node_t* left_child = root->children[0];
		int no_of_children_in_left = left_child->n_children;
		
		Node_t** new_children = malloc(sizeof(Node_t*)*(no_of_children_in_left+1));
		
		for(int i = 0; i<no_of_children_in_left; i++){
			new_children[i] = left_child->children[i];
		}

		new_children[no_of_children_in_left] = root->children[1];

		root->children = new_children;
		root->n_children = no_of_children_in_left+1;
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

