<<<<<<< HEAD

public class ListNode {
	//Variable
	private Object element;  //private ����, ���� ��� ������ �����ϴ� ����
	private ListNode next;  //private ����, ���� ��� ������ �����ϴ� ����
	private ListNode prev;  //private ����, ���� ��� ������ �����ϴ� ����
	
	/* �⺻������ ������� null�� �ʱ�ȭ
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
		// ������, ���ڷ� ���� prev, next, element �� ��ü�� ������ �ʱ�ȭ 
	}
	public void setNextNode(ListNode next){
		// next �� setter �޼ҵ�
		this.next = next;
	}
	public ListNode getNextNode(){
		// next �� getter �޼ҵ�
		return this.next;
	}
	public void setPrevNode(ListNode prev){
		// prev �� setter �޼ҵ�
		this.prev = prev;
	}
	public ListNode getPrevNode(){
		// prev �� getter �޼ҵ�
		return this.prev;
	}
	public void setElement(Object element){
		// element setter �޼ҵ�
		this.element = element;
	}
	public Object getElement(){
		// element getter �޼ҵ�
		return this.element;
	}
}
=======

public class ListNode {
	//Variable
	private Object element;  //private ����, ���� ��� ������ �����ϴ� ����
	private ListNode next;  //private ����, ���� ��� ������ �����ϴ� ����
	private ListNode prev;  //private ����, ���� ��� ������ �����ϴ� ����
	
	/* �⺻������ ������� null�� �ʱ�ȭ
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
		// ������, ���ڷ� ���� prev, next, element �� ��ü�� ������ �ʱ�ȭ 
	}
	public void setNextNode(ListNode next){
		// next �� setter �޼ҵ�
		this.next = next;
	}
	public ListNode getNextNode(){
		// next �� getter �޼ҵ�
		return this.next;
	}
	public void setPrevNode(ListNode prev){
		// prev �� setter �޼ҵ�
		this.prev = prev;
	}
	public ListNode getPrevNode(){
		// prev �� getter �޼ҵ�
		return this.prev;
	}
	public void setElement(Object element){
		// element setter �޼ҵ�
		this.element = element;
	}
	public Object getElement(){
		// element getter �޼ҵ�
		return this.element;
	}
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
