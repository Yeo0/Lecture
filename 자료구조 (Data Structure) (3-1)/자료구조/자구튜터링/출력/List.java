<<<<<<< HEAD
public class List {
	
	private ListNode header;
	private ListNode trailer;
	private int size;
	
	public List(){
		header = new ListNode(null, null, "header");
		trailer = new ListNode(null, null, "trailer");
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size = 0; //아마 문제에 size변수가 있었을껴
		//System.out.println("A List is Initialized by Constructor");
	}
	
	//리스트로 하는게 아니라면 이거로도 충분
	ListNode header = new ListNode();
	ListNode trailer = new ListNode();
	
	public List(){
		header.setNextNode(trailer);
		trailer.setPrev(header);
	}
	//

	public void initialization(){
		// 헤더와 트레일러를 서로 연결시켜 나머지 노드와의 연결을 끊고, 초기화됨을 알리는 문장 출력
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size=0;
		//System.out.println("List is initialized by initization");
	}
	public void addLast(Object element){
		// 트레일러의 prev 에 새로운 노드 삽입, 삽입 후 size 증가
		ListNode newNode = new ListNode(trailer.getPrevNode(), trailer, element);
		trailer.getPrevNode().setNextNode(newNode);
		trailer.setPrevNode(newNode);
		size++;
	}
	public void addFirst(Object element){
		// 헤더의 next 에 새로운 노드 삽입, 삽입 후 size 증가
		ListNode newNode = new ListNode(header, header.getNextNode(), element);
		header.getNextNode().setPrevNode(newNode);
		header.setNextNode(newNode);
		size++;
	}
	
	//
	public void addBefore(ListNode n, Object element ) { //n을 기준으로 앞에 노드를 넣고 싶을때 addbefore 사용
		ListNode newNode = new ListNode (n.getPrevNode(),n,element); // 새로들어가는애
		n.getPrevNode().setNextNode(newNode); //추가되는 자리의 앞에껄 가져와서 next를 추가되는 노드의 다음노드로 지정
		n.setPrevNode(newNode); // p의 앞노드를 새로운 노드로 지정해줌
	}
	//
	//
	public void addAfter(ListNode n, Object element){ 
		ListNode newNode = new ListNode(n, n.getNextNode(), element); //새로 들어가는애 
		n.getNextNode().setPrevNode(newNode);
		n.setNextNode(newNode);
	}
	//
	
	public Object getNode (int n){
		// 헤더의 next 노드를 index 0 으로 잡고, 인덱스를 증가시켜가며, 인자로 넘겨받은 수와 인덱스가 일치하면, 그 시점에서 노드의 element 반환
		ListNode temp = header.getNextNode();
		int i = 0;
		while (temp!=trailer){
			if (i==n)
				break;
			temp = temp.getNextNode();
			i++;
		}
		return temp.getElement();
	}
	
	public int getSize(){
		// size 의 getter 메소드
		return this.size;
	}
	
	//size변수없이 size 구하는건
	public int size(int i){
		ListNode temp=header.getNextNode();
		while(temp!=trailer){
			i=length(temp);
			temp=temp.getNextNode();
		}
	}
	//
	//
	public void printAllNodes(){
		ListNode temp=header.getNextNode();
		while(temp!=trailer){
			System.out.print(temp.getElement());
			temp=temp.getNextNode();
		}
		System.out.println("");
	}
	//
	
	//list 전체 노드를 순회하면서 인자로 받은 string 과 같은 string을 갖는 node를 찾고 같으면 반환한다
	public ListNode find(Object element){ 
		ListNode temp = header.getNextNode(); //temp가 지금 노드야
		while (temp!=trailer){
			if (temp.getElement().equals(element)){ // 조건이있을때만 리턴하니까 굳이 else뒤에 달아줄필요없음 (어짜피 리턴되면 메소드 밖으로 나가니까)
				return temp; //같으면 return을 해주고 while문을 빠져나옴
			}
		temp=temp.getNextNode(); // 꼭 if문 바깥 while문 안에서 써야함!!!
		}
		return null; // temp 가 trailer일때만(=같은걸 못찾을때만) 여기까지 오니까
	}
	//
	//인덱스로 노드찾기. header의 next 부터 0으로 인덱스 부여. 몇번쩨 인덱스인지 물어보면 거기에 해당하는 노드를 반환하고싶은 것 // 리스트 array 식 변환
	public ListNode getindex(int num){ //(int num) <-인자 input
		ListNode temp=header.getNextNode();
		for (int i=0; temp!=trailer; i++){    //for (초기식;조건식;증감식)	
			if(i==num){ //index랑 받아온 숫자랑 같으면
				return temp; // 해당노드반환
			}
			temp=temp.getNextNode(); //if 문바깥 반복문 안에서 써야함
		}
		return null; // 다끝났는데도 num 이 i보다 클때 = 원래 사이즈보다 찾고싶은 num 이 더 클때
	}
	//		
}
=======
public class List {
	
	private ListNode header;
	private ListNode trailer;
	private int size;
	
	public List(){
		header = new ListNode(null, null, "header");
		trailer = new ListNode(null, null, "trailer");
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size = 0; //아마 문제에 size변수가 있었을껴
		//System.out.println("A List is Initialized by Constructor");
	}
	
	//리스트로 하는게 아니라면 이거로도 충분
	ListNode header = new ListNode();
	ListNode trailer = new ListNode();
	
	public List(){
		header.setNextNode(trailer);
		trailer.setPrev(header);
	}
	//

	public void initialization(){
		// 헤더와 트레일러를 서로 연결시켜 나머지 노드와의 연결을 끊고, 초기화됨을 알리는 문장 출력
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size=0;
		//System.out.println("List is initialized by initization");
	}
	public void addLast(Object element){
		// 트레일러의 prev 에 새로운 노드 삽입, 삽입 후 size 증가
		ListNode newNode = new ListNode(trailer.getPrevNode(), trailer, element);
		trailer.getPrevNode().setNextNode(newNode);
		trailer.setPrevNode(newNode);
		size++;
	}
	public void addFirst(Object element){
		// 헤더의 next 에 새로운 노드 삽입, 삽입 후 size 증가
		ListNode newNode = new ListNode(header, header.getNextNode(), element);
		header.getNextNode().setPrevNode(newNode);
		header.setNextNode(newNode);
		size++;
	}
	
	//
	public void addBefore(ListNode n, Object element ) { //n을 기준으로 앞에 노드를 넣고 싶을때 addbefore 사용
		ListNode newNode = new ListNode (n.getPrevNode(),n,element); // 새로들어가는애
		n.getPrevNode().setNextNode(newNode); //추가되는 자리의 앞에껄 가져와서 next를 추가되는 노드의 다음노드로 지정
		n.setPrevNode(newNode); // p의 앞노드를 새로운 노드로 지정해줌
	}
	//
	//
	public void addAfter(ListNode n, Object element){ 
		ListNode newNode = new ListNode(n, n.getNextNode(), element); //새로 들어가는애 
		n.getNextNode().setPrevNode(newNode);
		n.setNextNode(newNode);
	}
	//
	
	public Object getNode (int n){
		// 헤더의 next 노드를 index 0 으로 잡고, 인덱스를 증가시켜가며, 인자로 넘겨받은 수와 인덱스가 일치하면, 그 시점에서 노드의 element 반환
		ListNode temp = header.getNextNode();
		int i = 0;
		while (temp!=trailer){
			if (i==n)
				break;
			temp = temp.getNextNode();
			i++;
		}
		return temp.getElement();
	}
	
	public int getSize(){
		// size 의 getter 메소드
		return this.size;
	}
	
	//size변수없이 size 구하는건
	public int size(int i){
		ListNode temp=header.getNextNode();
		while(temp!=trailer){
			i=length(temp);
			temp=temp.getNextNode();
		}
	}
	//
	//
	public void printAllNodes(){
		ListNode temp=header.getNextNode();
		while(temp!=trailer){
			System.out.print(temp.getElement());
			temp=temp.getNextNode();
		}
		System.out.println("");
	}
	//
	
	//list 전체 노드를 순회하면서 인자로 받은 string 과 같은 string을 갖는 node를 찾고 같으면 반환한다
	public ListNode find(Object element){ 
		ListNode temp = header.getNextNode(); //temp가 지금 노드야
		while (temp!=trailer){
			if (temp.getElement().equals(element)){ // 조건이있을때만 리턴하니까 굳이 else뒤에 달아줄필요없음 (어짜피 리턴되면 메소드 밖으로 나가니까)
				return temp; //같으면 return을 해주고 while문을 빠져나옴
			}
		temp=temp.getNextNode(); // 꼭 if문 바깥 while문 안에서 써야함!!!
		}
		return null; // temp 가 trailer일때만(=같은걸 못찾을때만) 여기까지 오니까
	}
	//
	//인덱스로 노드찾기. header의 next 부터 0으로 인덱스 부여. 몇번쩨 인덱스인지 물어보면 거기에 해당하는 노드를 반환하고싶은 것 // 리스트 array 식 변환
	public ListNode getindex(int num){ //(int num) <-인자 input
		ListNode temp=header.getNextNode();
		for (int i=0; temp!=trailer; i++){    //for (초기식;조건식;증감식)	
			if(i==num){ //index랑 받아온 숫자랑 같으면
				return temp; // 해당노드반환
			}
			temp=temp.getNextNode(); //if 문바깥 반복문 안에서 써야함
		}
		return null; // 다끝났는데도 num 이 i보다 클때 = 원래 사이즈보다 찾고싶은 num 이 더 클때
	}
	//		
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
