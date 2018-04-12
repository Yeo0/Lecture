#include <stdio.h>
#include <stdlib.h>
#include <mqueue.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#define MAX_SIZE 4000
#define MAX_MSG 10

#define NAME_POSIX_1 "/my_mq"
#define NAME_POSIX_2 "/my_mq2"

typedef struct sendPoint {
	int start;
	int end;
}SENDPOINT;

typedef struct recvData {
	int size;
	int arr[256];
}RECVDATA;

int * arr;
void sender_main(SENDPOINT * sendpoint);
int size;
void recv_process();
void recv_master(int p_count, int* resultarr);
