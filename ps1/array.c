#include <stdio.h>
#include <stdlib.h>


// Returns a random number between 0 and n
// For simplicity, the random number generator is not seeded,
// hence the same random numbers will be generated on every execution
int get_random_number(int n){
    return rand() % n;
}

// Return a (dynamically allocated) array of length size,
// filled with random numbers between 0 and n
int* create_random_array(int size, int n){
	int* random_array = (int*)malloc(sizeof(int)*size);

	for(int i = 0; i < size; i++)
		random_array[i] = get_random_number(n);
	

	return random_array;
}


// Should print the contents of array of lenght size
void print_array(int* array, int size){
	for(int i = 0; i<size; i++){
		printf("%d\n", array[i]);
	}

	return;
}


// Sorts the numbers into even and odd numbers
void sort(int* array, int size, int** even, int* even_size, int** odd, int* odd_size){
	*odd_size = 0;
	*even_size = 0;

	for (int i = 0; i<size; i++){
		if (array[i]%2){
			*odd_size+=1;
		}
	}
	
	*even_size = size-*odd_size;

	*odd = (int*)malloc(sizeof(int)*(*odd_size));
	*even = (int*)malloc(sizeof(int)*(*even_size));

	int odd_count = 0;
	int even_count = 0;

	for (int j = 0; j<size; j++){
		if (array[j]%2){
			(*odd)[odd_count] = array[j];
			odd_count+=1;
		} else {
			(*even)[even_count] = array[j];
			even_count+=1;
		}
	}

	return;
}


// Computes x^2
int x_squared(int x){
    return x*x;
}


// Computes x^3
int x_cubed(int x){
    return x*x*x;
}


// Applies the function to each element of the array, and returns new array with results
int* map(int (*function)(int), int* array, int size){
	int* new_array = (int*)malloc(sizeof(int)*size);

    for(int i = 0; i<size; i++){
    	new_array[i] = (*function)(array[i]);
    }

    return new_array;
}

int main(int argc, char** argv){

    // Creates an array with random values
    int* array = create_random_array(10, 10);

    // Prints the values of the array, e.g:
    // 3 6 7 5 3 5 6 2 9 1
    printf("\nFirst random array:\n");
    print_array(array, 10);

 	
    // Declaring variables
    int *odd, *even;
    int even_size, odd_size;
    
    // Sorting array into even and odd numbers
    sort(array, 10, &even, &even_size, &odd, &odd_size);
    
    //Printing even numbers, e.g:
    // 6 6 2
    printf("\nEven numbers:\n");
    print_array(even, even_size);
    
    //Printing odd numbers, e.g:
    // 3 7 5 3 5 9 1
    printf("\nOdd numbers:\n");
    print_array(odd, odd_size);

    // Create another random array
    int* new_array = create_random_array(10,10);

    // Print the second array, e.g:
    // 2 7 0 9 3 6 0 6 2 6
    printf("\nSecond random array:\n");
    print_array(new_array, 10);
    
    // Compute the cube of each array element
    int* cubed = map(x_cubed, new_array, 10);
    // Print the cubed values, e.g:
    // 8 343 0 729 27 216 0 216 8 216 
    printf("\nCubed:\n");
    print_array(cubed, 10);
    
    //Compute the square of each array element
    int* squared = map(x_squared, new_array, 10);
    // Print the squared values, e.g:
    // 4 49 0 81 9 36 0 36 4 36
    printf("\nSquared:\n");
    print_array(squared, 10);
	
	return 0;
}




