#include "ku_psort.h"
int main(int argc, char ** argv) {
	int status;
	int p_count = atoi(argv[2]);
	FILE * origin = fopen(argv[3], "r");
	FILE * result = fopen(argv[4], "w");
	int i, j;
	int term = size/p_count;
	int mod = size%p_count;
	pid_t * pid;
	int tempCount = 0;
	int temp;
	int * resultarr;
	SENDPOINT * sendpoint;
	sendpoint = (SENDPOINT*)malloc(sizeof(SENDPOINT)*p_count);
	size = atoi(argv[1]);
	pid = (pid_t*)malloc(sizeof(pid_t)*p_count);
	arr = (int*)malloc(sizeof(int)*size);
	resultarr = (int*)malloc(sizeof(int)*size);
	for(i=0;i<size;i++) {
		fscanf(origin, "%d", &arr[i]);
	}
	for(i=0;i<p_count;i++) {
		sendpoint[i].start = tempCount;
		sendpoint[i].end = tempCount + term;
		tempCount += term;
		if(mod > 0 ) {
			sendpoint[i].end ++;
			mod--;
			tempCount++;
		}
		sender_main(&sendpoint[i]);
		printf("sended %d\n",i);
	}
	for(i=0;i<p_count;i++) {
		if((pid[i]=fork())==0) {
			recv_process();
			exit(0);
		}
	}
	for(i=0;i<p_count;i++) {
		waitpid(pid[i], &status, NULL);
	}
	recv_master(p_count, resultarr);
	for(i=0;i<size;i++) {
		fprintf(result, "%d\n", arr[i]);
	}
}	

void sender_main(SENDPOINT * sendpoint) {
	struct mq_attr attr;
	mqd_t mqid_send;
	SENDPOINT* mysend = sendpoint;
	attr.mq_maxmsg = MAX_MSG;
	attr.mq_msgsize = MAX_SIZE;
	mqid_send = mq_open(NAME_POSIX_1, O_CREAT|O_WRONLY, 0666, &attr);
	if(mqid_send == -1) {
		perror("MQID create failed\n");
		exit(0);
	}
	if(mq_send(mqid_send, (const char*)mysend, MAX_SIZE, 1) == -1) {
		perror("send failed\n");
		exit(0);
	}
	mq_close(mqid_send);
}

void recv_process() {
	RECVDATA mydata;
	struct mq_attr attr;
	struct mq_attr attr2;
	mqd_t mqid_recv;
	mqd_t mqid_send;
	int prio;
	int i, j;
	SENDPOINT mysendpoint;
	int arrIndex;
	int temp;
	attr.mq_maxmsg = MAX_MSG;
	attr.mq_msgsize = sizeof(SENDPOINT*);
	mqid_recv = mq_open(NAME_POSIX_1, O_RDWR|O_CREAT, 0666, &attr);
	if(mq_receive(mqid_recv, (char*)&mysendpoint, MAX_SIZE, NULL) == -1) {
		perror("recv failed\n");
	}
	mq_getattr(mqid_recv, &attr);
	mq_close(mqid_recv);
	attr2.mq_maxmsg = MAX_MSG;
	attr2.mq_msgsize = MAX_SIZE;
	mqid_send = mq_open(NAME_POSIX_2, O_CREAT|O_WRONLY, 0666, &attr2);
	/*
	printf("Received Data : ");
	for(i=mysendpoint.start;i<mysendpoint.end;i++) {
		printf("%d ", arr[i]);
	}
	printf("\n");*/
	arrIndex = mysendpoint.start;
	mydata.size = mysendpoint.end-mysendpoint.start;
	for(i=0;i<mydata.size;i++) {
		mydata.arr[i] = arr[arrIndex];
		arrIndex++;
	}
	for(i=0;i<mydata.size-1;i++) {
		for(j=0;j<mydata.size -1-i;j++) {
			if(mydata.arr[j] < mydata.arr[j+1]) {
				temp = mydata.arr[j];
				mydata.arr[j] = mydata.arr[j+1];
				mydata.arr[j+1] = temp;
			}
		}
	}
	printf("\n");
	if(mq_send(mqid_send, (const char*)&mydata, MAX_SIZE, 1) == -1) {
		perror("child send error\n");
		exit(0);
	}
	mq_close(mqid_recv);
	

}

void recv_master(int p_count, int* resultarr) {
	struct mq_attr attr;
	mqd_t mqid_recv;
	RECVDATA recv_data;
	int i, j;
	int temp;
	int index = 0;
	attr.mq_maxmsg = MAX_MSG;
	attr.mq_msgsize = MAX_SIZE;
	mqid_recv = mq_open(NAME_POSIX_2, O_RDWR | O_CREAT, 0666, &attr);
	for(j=0;j<p_count;j++) {
		if(mq_receive(mqid_recv, (char*)&recv_data, MAX_SIZE, NULL) == -1) {
			perror("recv master failed\n");
			exit(0);
		}
		for(i=0;i<recv_data.size;i++) {
			arr[index] = recv_data.arr[i];
			//printf(" test : %d\n",arr[index]);
			index++;
		}
	}
	for(i=0;i<size-1;i++) {
		for(j=0;j<size -1-i;j++) {
			if(arr[j] < arr[j+1]) {
				temp = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = temp;
			}
		}
	}
}
