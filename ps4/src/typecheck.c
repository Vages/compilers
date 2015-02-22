#include "typecheck.h"
extern int outputStage;

static int type_errors = 0;

int has_type_errors(){
	return type_errors;
}

void type_error(node_t* root){
        fprintf(stdout, "Type error at:\n");
        if(root != NULL){
                fprintf(stdout,"%s", root->nodetype.text);
                if(root->nodetype.index == EXPRESSION){
                        fprintf(stdout," (%s)", root->expression_type.text);
                }
                fprintf(stdout,"\n");
        }
        type_errors++;
}

int equal_types(data_type_t a, data_type_t b){

	if(a.base_type == INT_TYPE || a.base_type == FLOAT_TYPE || a.base_type == BOOL_TYPE || a.base_type == STRING_TYPE){
		return a.base_type == b.base_type;
	}
	else if(a.base_type == ARRAY_TYPE){
		int equals = b.base_type == ARRAY_TYPE;
		equals = equals && (a.array_type == b.array_type);
		equals = equals && (a.n_dimensions == b.n_dimensions);
		if(!equals){
			return equals;
		}
		for(int i = 0; i < a.n_dimensions; i++){
			equals = equals && (a.dimensions[i] == b.dimensions[i]);
		}

		return equals;
	}
	else{
		return 0;
	}
}

data_type_t typecheck_default(node_t* root)
{
    for (int i = 0; i < root->n_children; i++){
        if (root->children[i] != NULL){
            root->children[i]->data_type = (root->children[i]->typecheck)(root->children[i]);
        }
    }

    return root->data_type;
}

data_type_t typecheck_expression(node_t* root)
{

    //You may need to add code at various places to complete this function
    
	if(outputStage == 10)
		printf( "Type checking expression %s\n", root->expression_type.text);

    typecheck_default(root);

	if(root->n_children == 0){
        return root->data_type;
	}

	else if(root->n_children == 1){
            node_t* child = root->children[0];
            if (child != NULL){
                data_type_t child_dt = child->data_type;    
            }
            switch(root->expression_type.index){
                case UMINUS_E:
                    if ((child_dt.base_type != INT_TYPE) && (child_dt.base_type != FLOAT_TYPE)){
                        type_error(root);
                    }
                    return child_dt;
                    break;
                    
                case NOT_E:
                    if (child_dt.base_type != BOOL_TYPE){
                        type_error(root);
                    }
                    return child_dt;
                    break;
                    
                default:
                    return root->data_type;
                    break;
            }
        }
        else if(root->n_children > 1){

            switch(root->expression_type.index)
            {
                data_type_t l_child_dt;
                data_type_t r_child_dt;
                case ADD_E: case SUB_E: case DIV_E: case MUL_E:
                    ;
                    l_child_dt = root->children[0]->data_type;
                    r_child_dt = root->children[1]->data_type;
                    if (!equal_types(l_child_dt, r_child_dt)){
                        fprintf(stderr, "%s\n", "Unequal types");
                        type_error(root);
                    } else if ((l_child_dt.base_type != FLOAT_TYPE) && (l_child_dt.base_type != INT_TYPE)){
                        fprintf(stderr, "%s\n", "Not float or int");
                        type_error(root);
                    }
                    return l_child_dt;
                    break;
                        
                case LEQUAL_E: case GEQUAL_E: case GREATER_E: case LESS_E:
                    ;
                    l_child_dt = root->children[0]->data_type;
                    r_child_dt = root->children[1]->data_type;
                    if (!equal_types(l_child_dt, r_child_dt)){
                        type_error(root);
                    } else if ((l_child_dt.base_type != FLOAT_TYPE) && (l_child_dt.base_type != INT_TYPE)){
                        type_error(root);
                    }
                    data_type_t tmp_dt = {.base_type = BOOL_TYPE};
                    return tmp_dt;
                    break;
                        
                case AND_E: case OR_E:
                    ;
                    l_child_dt = root->children[0]->data_type;
                    r_child_dt = root->children[1]->data_type;
                    if (!equal_types(l_child_dt, r_child_dt)){
                        type_error(root);
                    } else if (l_child_dt.base_type != BOOL_TYPE){
                        type_error(root);
                    }
                    return l_child_dt;
                    break;
                    
                case EQUAL_E: case NEQUAL_E:
                    ;
                    l_child_dt = root->children[0]->data_type;
                    r_child_dt = root->children[1]->data_type;
                    if (!equal_types(l_child_dt, r_child_dt)){
                        type_error(root);
                    } else if ((l_child_dt.base_type != FLOAT_TYPE) && (l_child_dt.base_type != INT_TYPE) && (l_child_dt.base_type != BOOL_TYPE)){
                        type_error(root);
                    }
                    return tmp_dt;
                    break;
                        
                case FUNC_CALL_E: 
                    ;
                    function_symbol_t* fst = root->function_entry;
                    if(fst->nArguments>0){
                        for (int i = 0; i < fst->nArguments; i++){
                            if (!(equal_types(fst->argument_types[i], root->children[1]->children[i]->data_type))){
                                type_error(root);
                            }
                        }
                    }
                    return fst->return_type;
                    break;
                
                case ARRAY_INDEX_E:
                    ;
                    l_child_dt = root->children[0]->data_type;
                    r_child_dt = root->children[1]->data_type;
                    if (!equal_types(l_child_dt, r_child_dt)){
                        type_error(root);
                    }

                    return l_child_dt;
                    break;
                
                default:
                    return root->data_type;
                    break;
            }
        }
    return root->data_type;
}

data_type_t typecheck_variable(node_t* root){
    typecheck_default(root);

    if(root->entry != NULL){
        return root->entry->type;
    }

    return root->data_type;
}

data_type_t typecheck_assignment(node_t* root)
{
	if(outputStage == 10){
		printf( "Type checking assignment\n");
	}
    typecheck_default(root);

    data_type_t l_child_dt = root->children[0]->data_type;
    int iseq = equal_types(l_child_dt, root->children[1]->data_type);
    if (!iseq){
        type_error(root);
    }

    return l_child_dt;
}
