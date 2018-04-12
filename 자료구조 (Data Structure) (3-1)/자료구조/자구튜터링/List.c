#include <stdio.h>

int list_count;

typedef struct Node {
	struct Node* prev;
	struct Node* next;
	char * value;
}Node;

typedef struct List {
	Node* header;
	Node* tailer;
	int num;
}List;

void ListInit(List* l){
	l->header = (Node*)malloc(sizeof(Node));
	l->tailer = (Node*)malloc(sizeof(Node));
	l->header->next = l->tailer;
	l->header->prev = NULL;
	l->tailer->prev = l->header;
	l->tailer->next = NULL;
	l->num = ++list_count;
}

void add (List l, Node newNode){
	Node *temp = l->tailer->prev;
	temp->next = newNode;
	newNode->prev = temp;
	newNode->next = l->tailer;
	l->tailer->prev = newNode;
}
void add_function(List l,char *buf){
	Node *newNode = (Node*)malloc(sizeof(Node));
	newNode->value = buf;
	add(l, newNode);
}
void find(Node *n, char * df){

}
void find_function(List l, char *df, int first_size, int size){
	
}

void main (){
	list_count = 0;
	char *file_str;

	while 
}
