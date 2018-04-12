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
		size = 0; //�Ƹ� ������ size������ �־�����
		//System.out.println("A List is Initialized by Constructor");
	}
	
	//����Ʈ�� �ϴ°� �ƴ϶�� �̰ŷε� ���
	ListNode header = new ListNode();
	ListNode trailer = new ListNode();
	
	public List(){
		header.setNextNode(trailer);
		trailer.setPrev(header);
	}
	//

	public void initialization(){
		// ����� Ʈ���Ϸ��� ���� ������� ������ ������ ������ ����, �ʱ�ȭ���� �˸��� ���� ���
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size=0;
		//System.out.println("List is initialized by initization");
	}
	public void addLast(Object element){
		// Ʈ���Ϸ��� prev �� ���ο� ��� ����, ���� �� size ����
		ListNode newNode = new ListNode(trailer.getPrevNode(), trailer, element);
		trailer.getPrevNode().setNextNode(newNode);
		trailer.setPrevNode(newNode);
		size++;
	}
	public void addFirst(Object element){
		// ����� next �� ���ο� ��� ����, ���� �� size ����
		ListNode newNode = new ListNode(header, header.getNextNode(), element);
		header.getNextNode().setPrevNode(newNode);
		header.setNextNode(newNode);
		size++;
	}
	
	//
	public void addBefore(ListNode n, Object element ) { //n�� �������� �տ� ��带 �ְ� ������ addbefore ���
		ListNode newNode = new ListNode (n.getPrevNode(),n,element); // ���ε��¾�
		n.getPrevNode().setNextNode(newNode); //�߰��Ǵ� �ڸ��� �տ��� �����ͼ� next�� �߰��Ǵ� ����� �������� ����
		n.setPrevNode(newNode); // p�� �ճ�带 ���ο� ���� ��������
	}
	//
	//
	public void addAfter(ListNode n, Object element){ 
		ListNode newNode = new ListNode(n, n.getNextNode(), element); //���� ���¾� 
		n.getNextNode().setPrevNode(newNode);
		n.setNextNode(newNode);
	}
	//
	
	public Object getNode (int n){
		// ����� next ��带 index 0 ���� ���, �ε����� �������Ѱ���, ���ڷ� �Ѱܹ��� ���� �ε����� ��ġ�ϸ�, �� �������� ����� element ��ȯ
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
		// size �� getter �޼ҵ�
		return this.size;
	}
	
	//size�������� size ���ϴ°�
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
	
	//list ��ü ��带 ��ȸ�ϸ鼭 ���ڷ� ���� string �� ���� string�� ���� node�� ã�� ������ ��ȯ�Ѵ�
	public ListNode find(Object element){ 
		ListNode temp = header.getNextNode(); //temp�� ���� ����
		while (temp!=trailer){
			if (temp.getElement().equals(element)){ // �������������� �����ϴϱ� ���� else�ڿ� �޾����ʿ���� (��¥�� ���ϵǸ� �޼ҵ� ������ �����ϱ�)
				return temp; //������ return�� ���ְ� while���� ��������
			}
		temp=temp.getNextNode(); // �� if�� �ٱ� while�� �ȿ��� �����!!!
		}
		return null; // temp �� trailer�϶���(=������ ��ã������) ������� ���ϱ�
	}
	//
	//�ε����� ���ã��. header�� next ���� 0���� �ε��� �ο�. ����� �ε������� ����� �ű⿡ �ش��ϴ� ��带 ��ȯ�ϰ���� �� // ����Ʈ array �� ��ȯ
	public ListNode getindex(int num){ //(int num) <-���� input
		ListNode temp=header.getNextNode();
		for (int i=0; temp!=trailer; i++){    //for (�ʱ��;���ǽ�;������)	
			if(i==num){ //index�� �޾ƿ� ���ڶ� ������
				return temp; // �ش����ȯ
			}
			temp=temp.getNextNode(); //if ���ٱ� �ݺ��� �ȿ��� �����
		}
		return null; // �ٳ����µ��� num �� i���� Ŭ�� = ���� ������� ã����� num �� �� Ŭ��
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
		size = 0; //�Ƹ� ������ size������ �־�����
		//System.out.println("A List is Initialized by Constructor");
	}
	
	//����Ʈ�� �ϴ°� �ƴ϶�� �̰ŷε� ���
	ListNode header = new ListNode();
	ListNode trailer = new ListNode();
	
	public List(){
		header.setNextNode(trailer);
		trailer.setPrev(header);
	}
	//

	public void initialization(){
		// ����� Ʈ���Ϸ��� ���� ������� ������ ������ ������ ����, �ʱ�ȭ���� �˸��� ���� ���
		header.setNextNode(trailer);
		trailer.setPrevNode(header);
		size=0;
		//System.out.println("List is initialized by initization");
	}
	public void addLast(Object element){
		// Ʈ���Ϸ��� prev �� ���ο� ��� ����, ���� �� size ����
		ListNode newNode = new ListNode(trailer.getPrevNode(), trailer, element);
		trailer.getPrevNode().setNextNode(newNode);
		trailer.setPrevNode(newNode);
		size++;
	}
	public void addFirst(Object element){
		// ����� next �� ���ο� ��� ����, ���� �� size ����
		ListNode newNode = new ListNode(header, header.getNextNode(), element);
		header.getNextNode().setPrevNode(newNode);
		header.setNextNode(newNode);
		size++;
	}
	
	//
	public void addBefore(ListNode n, Object element ) { //n�� �������� �տ� ��带 �ְ� ������ addbefore ���
		ListNode newNode = new ListNode (n.getPrevNode(),n,element); // ���ε��¾�
		n.getPrevNode().setNextNode(newNode); //�߰��Ǵ� �ڸ��� �տ��� �����ͼ� next�� �߰��Ǵ� ����� �������� ����
		n.setPrevNode(newNode); // p�� �ճ�带 ���ο� ���� ��������
	}
	//
	//
	public void addAfter(ListNode n, Object element){ 
		ListNode newNode = new ListNode(n, n.getNextNode(), element); //���� ���¾� 
		n.getNextNode().setPrevNode(newNode);
		n.setNextNode(newNode);
	}
	//
	
	public Object getNode (int n){
		// ����� next ��带 index 0 ���� ���, �ε����� �������Ѱ���, ���ڷ� �Ѱܹ��� ���� �ε����� ��ġ�ϸ�, �� �������� ����� element ��ȯ
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
		// size �� getter �޼ҵ�
		return this.size;
	}
	
	//size�������� size ���ϴ°�
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
	
	//list ��ü ��带 ��ȸ�ϸ鼭 ���ڷ� ���� string �� ���� string�� ���� node�� ã�� ������ ��ȯ�Ѵ�
	public ListNode find(Object element){ 
		ListNode temp = header.getNextNode(); //temp�� ���� ����
		while (temp!=trailer){
			if (temp.getElement().equals(element)){ // �������������� �����ϴϱ� ���� else�ڿ� �޾����ʿ���� (��¥�� ���ϵǸ� �޼ҵ� ������ �����ϱ�)
				return temp; //������ return�� ���ְ� while���� ��������
			}
		temp=temp.getNextNode(); // �� if�� �ٱ� while�� �ȿ��� �����!!!
		}
		return null; // temp �� trailer�϶���(=������ ��ã������) ������� ���ϱ�
	}
	//
	//�ε����� ���ã��. header�� next ���� 0���� �ε��� �ο�. ����� �ε������� ����� �ű⿡ �ش��ϴ� ��带 ��ȯ�ϰ���� �� // ����Ʈ array �� ��ȯ
	public ListNode getindex(int num){ //(int num) <-���� input
		ListNode temp=header.getNextNode();
		for (int i=0; temp!=trailer; i++){    //for (�ʱ��;���ǽ�;������)	
			if(i==num){ //index�� �޾ƿ� ���ڶ� ������
				return temp; // �ش����ȯ
			}
			temp=temp.getNextNode(); //if ���ٱ� �ݺ��� �ȿ��� �����
		}
		return null; // �ٳ����µ��� num �� i���� Ŭ�� = ���� ������� ã����� num �� �� Ŭ��
	}
	//		
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
