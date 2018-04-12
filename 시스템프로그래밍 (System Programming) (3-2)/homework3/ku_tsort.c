#include "ku_tsort.h"
void *sort_function(void * data)
{
	POINTSET * mypoint = (POINTSET*)data;
	int i, j, k;
	int temp;
	int flag = 0;
	int myindex = 0;
	j = mypoint->start;

	while(1) {
		pthread_mutex_lock(&mutex[j]);
		if(arr[j] < arr[j+1]) {
			temp = arr[j];
			arr[j] = arr[j+1];
			arr[j+1] = temp;
			pthread_mutex_lock(&break_mutex);
			totalFlag = 0;
			pthread_mutex_unlock(&break_mutex);
		}
		else {
			pthread_mutex_lock(&break_mutex);
			totalFlag++;
			pthread_mutex_unlock(&break_mutex);
		}
		pthread_mutex_unlock(&mutex[j]);
		if(totalFlag > size-1) {
			break;
		}
		if(j==size-2) {
			j = 0;
		}
		else {
			j++;
		}
	}
	printf("%ul finished\n", pthread_self());
}

int main(int argc, char ** argv) {

	int t_count = atoi(argv[2]);
	FILE * origin = fopen(argv[3], "r");
	FILE * result = fopen(argv[4], "w");
	int i;
	pthread_t * pthread;
	int term = 0;
	int mod = 0;
	int tmpTID = -1;
	POINTSET * pset;
	int counting=0;
	int status;
	size = atoi(argv[1]);
        mutex = (pthread_mutex_t*)malloc(sizeof(pthread_mutex_t)*(size-1));
	for(i=0;i<size-1;i++) {
		pthread_mutex_init(&mutex[i], NULL);
	}
	pthread_mutex_init(&break_mutex, NULL);
	term = size/t_count;
	mod = size%t_count;
	arr = (int*)malloc(sizeof(int)*size);
	for(i=0;i<size;i++) {
		fscanf(origin, "%d", &arr[i]);
	}
	pthread = (pthread_t*)malloc(sizeof(pthread_t)*t_count);
	pset = (POINTSET*)malloc(sizeof(POINTSET)*t_count);
	for(i=0;i<t_count;i++) {
		pset[i].start = counting;
		pset[i].end = counting+term;
		counting += term;
		if(mod > 0) {
			pset[i].end +=1;
			mod--;
			counting += 1;
		}
		tmpTID = pthread_create(&pthread[i], NULL, sort_function, (void*)&pset[i]);
		if(tmpTID < 0) {
			perror("thread create error : ");
			exit(0);
		}
	}
	for(i=0;i<t_count;i++) {
		pthread_join(pthread[i], (void**)&status);
	}
	printf("sort finished\n");
	for(i=0;i<size;i++) {
		fprintf(result, "%d\n", arr[i]);
	}
	printf("sorted numbers are saved in result.txt\n");
	for(i=0;i<size-1;i++) {
		pthread_mutex_destroy(&mutex[i]);
	}
	pthread_mutex_destroy(&break_mutex);
	return 0;
}
