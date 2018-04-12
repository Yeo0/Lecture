<<<<<<< HEAD

public class ListNode {
	//Variable
	private Object element;  //private 생성, 현재 노드 데이터 지정하는 변수
	private ListNode next;  //private 생성, 현재 노드 데이터 지정하는 변수
	private ListNode prev;  //private 생성, 현재 노드 데이터 지정하는 변수
	
	/* 기본생성자 멤버변수 null로 초기화
	public ListNode(){
		prev=null;
		next=null;
		element=null; 
	}
	*/
	
	public ListNode(ListNode prev, ListNode next, Object element){
		this.prev = prev;
		this.next = next;
		this.element = element;
		// 생성자, 인자로 받은 prev, next, element 로 객체의 데이터 초기화 
	}
	public void setNextNode(ListNode next){
		// next 의 setter 메소드
		this.next = next;
	}
	public ListNode getNextNode(){
		// next 의 getter 메소드
		return this.next;
	}
	public void setPrevNode(ListNode prev){
		// prev 의 setter 메소드
		this.prev = prev;
	}
	public ListNode getPrevNode(){
		// prev 의 getter 메소드
		return this.prev;
	}
	public void setElement(Object element){
		// element setter 메소드
		this.element = element;
	}
	public Object getElement(){
		// element getter 메소드
		return this.element;
	}
}
=======

public class ListNode {
	//Variable
	private Object element;  //private 생성, 현재 노드 데이터 지정하는 변수
	private ListNode next;  //private 생성, 현재 노드 데이터 지정하는 변수
	private ListNode prev;  //private 생성, 현재 노드 데이터 지정하는 변수
	
	/* 기본생성자 멤버변수 null로 초기화
	public ListNode(){
		prev=null;
		next=null;
		element=null; 
	}
	*/
	
	public ListNode(ListNode prev, ListNode next, Object element){
		this.prev = prev;
		this.next = next;
		this.element = element;
		// 생성자, 인자로 받은 prev, next, element 로 객체의 데이터 초기화 
	}
	public void setNextNode(ListNode next){
		// next 의 setter 메소드
		this.next = next;
	}
	public ListNode getNextNode(){
		// next 의 getter 메소드
		return this.next;
	}
	public void setPrevNode(ListNode prev){
		// prev 의 setter 메소드
		this.prev = prev;
	}
	public ListNode getPrevNode(){
		// prev 의 getter 메소드
		return this.prev;
	}
	public void setElement(Object element){
		// element setter 메소드
		this.element = element;
	}
	public Object getElement(){
		// element getter 메소드
		return this.element;
	}
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
