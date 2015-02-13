#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

int bind_default ( node_t *root, int stackOffset)
{
	for (int i = 0; i < root->n_children; i++){
		Node_t* child = root->children[i];
		if (child != NULL) {
			child->bind(child, depth+1);
		}
	}
}



int bind_constant ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "CONSTANT\n");


}





