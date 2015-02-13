#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

int bind_default ( node_t *root, int stackOffset)
{
	for (int i = 0; i < root->n_children; i++){
		node_t* child = root->children[i];
		if (child != NULL) {
			(child->bind_names)(child, stackOffset);
		}
	}

	return 0;
}



int bind_constant ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "CONSTANT\n");
	
		root.string_index = strings_add(root->string_const);
	if (root->data_type.base_type == STRING_TYPE){ 
	}

	return 0;
}





