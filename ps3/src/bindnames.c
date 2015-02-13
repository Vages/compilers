#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

int bind_default ( node_t *root, int stackOffset)
{
	for (int i = 0; i < root->n_children; i++){
		node_t* child = root->children[i];
		if (child != NULL) {
			(child->bind_names)(child, stackOffset);
			/*	Eirik: Stack offset simply passed on 
				because we haven't yet been told what to do with it.
			*/
		}
	}

	return 0;
}



int bind_constant ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "CONSTANT\n");
	
	if (root->data_type.base_type == STRING_TYPE){ 
		/* 	Eirik: The only constant type that we yet know what to do with
			is strings. 
		*/
		root->string_index = strings_add(root->string_const);
	}

	return 0;
}





