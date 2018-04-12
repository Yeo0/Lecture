#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

typedef struct pointset {
	int start;
	int end;
}POINTSET;
int size;
int * arr;
pthread_mutex_t * mutex;
int *result;
pthread_mutex_t break_mutex;
int totalFlag;
