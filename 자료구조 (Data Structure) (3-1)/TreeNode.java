<<<<<<< HEAD

public class TreeNode {
	private Object element;
	private TreeNode parent;
	private TreeNode left;
	private TreeNode right;
	
	//null �� �ʱⰪ ������� (�Ⱦ��°Ű��� �ٵ�)
	public TreeNode(){
		this.element=null;
		this.right=null;
		this.left=null;
		this.parent=null;
	}
	//
	
	public TreeNode(TreeNode parent, Object element){
		// ������, parent �� element �� ���ڷ� �޾Ƽ� ��ü�� ����
		this.parent = parent;
		this.element = element;
	}
	public void addLeftChild(Object element){
		// left child ���� �޼ҵ�, ���ο� ��� ��ü�� ������ ���� ��ü�� parent-left �� ����
		TreeNode newNode = new TreeNode(this, element);
		this.left = newNode;
	}
	public void addRightChild(Object element){
		// right child ���� �޼ҵ�, ���ο� ��� ��ü�� ������ ���� ��ü�� parent-right �� ����
		TreeNode newNode = new TreeNode(this, element);
		this.right = newNode;
	}
	public void printData(){
		// ���� ��尡 �����ϰ� �ִ� element ���
		System.out.println(this.element);
	}
	public Object getData(){
		// element �� getter �޼ҵ�
		return this.element;
	}
	public TreeNode getLeftChild(){
		// left �� getter �޼ҵ�
		return this.left;
		get
	}
	public TreeNode getRightChild(){
		// right �� getter �޼ҵ�
		return this.right;
	}
	public boolean isLeft(){
		// left child �� �����ϴ��� ���� ��ȯ
		// left �� null �� �ƴҰ�� true, null �� ��� false ����
		if (this.left!=null)
			return true;
		else
			return false;
	}
	public boolean isRight(){
		// right child �� �����ϴ��� ���� ��ȯ
		// right �� null �� ���, false ����
		if (this.right!=null)
			return true;
		else
			return false;
	}
	public boolean isRoot(){
		// ���� ��尡 root ���� ���� Ȯ��, parent �� null �� ��� true ����
		if (this.parent==null)
			return true;
		else
			return false;
	}
	public TreeNode getParent(){
		// parent getter �޼ҵ�
		return this.parent;
	}
	public TreeNode getRoot(){
		TreeNode temp = getRoot_recursive(this);
		return temp;
	}
	public TreeNode getRoot_recursive(TreeNode n){//��Ʈ�� �ƴҶ��� ��Ŀ�ú� ���ư���
		if (n.isRoot())
			return n; 
		else
			return getRoot_recursive(n); //
	}
	public boolean isLeaf(){ //������������ƴ���, �Ѵٺ������ (�Ѵ� false�϶� true ����)
	
		if (!this.isLeft() && !this.isRight())
			return true;
		else
			return false;
	}
	public void setData(Object element){
		this.element = element;
	}
	//set�� �ʿ��ϸ� �� ������ָ�� �ٵ� �����ִ� addleft�� ����ѿ��� �ϴµ�
	public void setLeft(TreeNode left){
		this.left=left;
	}
	//
}
=======

public class TreeNode {
	private Object element;
	private TreeNode parent;
	private TreeNode left;
	private TreeNode right;
	
	//null �� �ʱⰪ ������� (�Ⱦ��°Ű��� �ٵ�)
	public TreeNode(){
		this.element=null;
		this.right=null;
		this.left=null;
		this.parent=null;
	}
	//
	
	public TreeNode(TreeNode parent, Object element){
		// ������, parent �� element �� ���ڷ� �޾Ƽ� ��ü�� ����
		this.parent = parent;
		this.element = element;
	}
	public void addLeftChild(Object element){
		// left child ���� �޼ҵ�, ���ο� ��� ��ü�� ������ ���� ��ü�� parent-left �� ����
		TreeNode newNode = new TreeNode(this, element);
		this.left = newNode;
	}
	public void addRightChild(Object element){
		// right child ���� �޼ҵ�, ���ο� ��� ��ü�� ������ ���� ��ü�� parent-right �� ����
		TreeNode newNode = new TreeNode(this, element);
		this.right = newNode;
	}
	public void printData(){
		// ���� ��尡 �����ϰ� �ִ� element ���
		System.out.println(this.element);
	}
	public Object getData(){
		// element �� getter �޼ҵ�
		return this.element;
	}
	public TreeNode getLeftChild(){
		// left �� getter �޼ҵ�
		return this.left;
		get
	}
	public TreeNode getRightChild(){
		// right �� getter �޼ҵ�
		return this.right;
	}
	public boolean isLeft(){
		// left child �� �����ϴ��� ���� ��ȯ
		// left �� null �� �ƴҰ�� true, null �� ��� false ����
		if (this.left!=null)
			return true;
		else
			return false;
	}
	public boolean isRight(){
		// right child �� �����ϴ��� ���� ��ȯ
		// right �� null �� ���, false ����
		if (this.right!=null)
			return true;
		else
			return false;
	}
	public boolean isRoot(){
		// ���� ��尡 root ���� ���� Ȯ��, parent �� null �� ��� true ����
		if (this.parent==null)
			return true;
		else
			return false;
	}
	public TreeNode getParent(){
		// parent getter �޼ҵ�
		return this.parent;
	}
	public TreeNode getRoot(){
		TreeNode temp = getRoot_recursive(this);
		return temp;
	}
	public TreeNode getRoot_recursive(TreeNode n){//��Ʈ�� �ƴҶ��� ��Ŀ�ú� ���ư���
		if (n.isRoot())
			return n; 
		else
			return getRoot_recursive(n); //
	}
	public boolean isLeaf(){ //������������ƴ���, �Ѵٺ������ (�Ѵ� false�϶� true ����)
	
		if (!this.isLeft() && !this.isRight())
			return true;
		else
			return false;
	}
	public void setData(Object element){
		this.element = element;
	}
	//set�� �ʿ��ϸ� �� ������ָ�� �ٵ� �����ִ� addleft�� ����ѿ��� �ϴµ�
	public void setLeft(TreeNode left){
		this.left=left;
	}
	//
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
