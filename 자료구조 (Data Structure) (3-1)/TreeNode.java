<<<<<<< HEAD

public class TreeNode {
	private Object element;
	private TreeNode parent;
	private TreeNode left;
	private TreeNode right;
	
	//null 로 초기값 만들려면 (안쓰는거같다 근데)
	public TreeNode(){
		this.element=null;
		this.right=null;
		this.left=null;
		this.parent=null;
	}
	//
	
	public TreeNode(TreeNode parent, Object element){
		// 생성자, parent 와 element 를 인자로 받아서 객체에 저장
		this.parent = parent;
		this.element = element;
	}
	public void addLeftChild(Object element){
		// left child 생성 메소드, 새로운 노드 객체를 생성해 현재 객체와 parent-left 로 연결
		TreeNode newNode = new TreeNode(this, element);
		this.left = newNode;
	}
	public void addRightChild(Object element){
		// right child 생성 메소드, 새로운 노드 객체를 생성해 현재 객체와 parent-right 로 연결
		TreeNode newNode = new TreeNode(this, element);
		this.right = newNode;
	}
	public void printData(){
		// 현재 노드가 저장하고 있는 element 출력
		System.out.println(this.element);
	}
	public Object getData(){
		// element 의 getter 메소드
		return this.element;
	}
	public TreeNode getLeftChild(){
		// left 의 getter 메소드
		return this.left;
		get
	}
	public TreeNode getRightChild(){
		// right 의 getter 메소드
		return this.right;
	}
	public boolean isLeft(){
		// left child 가 존재하는지 여부 반환
		// left 가 null 이 아닐경우 true, null 일 경우 false 리턴
		if (this.left!=null)
			return true;
		else
			return false;
	}
	public boolean isRight(){
		// right child 가 존재하는지 여부 반환
		// right 가 null 일 경우, false 리턴
		if (this.right!=null)
			return true;
		else
			return false;
	}
	public boolean isRoot(){
		// 현재 노드가 root 인지 여부 확인, parent 가 null 일 경우 true 리턴
		if (this.parent==null)
			return true;
		else
			return false;
	}
	public TreeNode getParent(){
		// parent getter 메소드
		return this.parent;
	}
	public TreeNode getRoot(){
		TreeNode temp = getRoot_recursive(this);
		return temp;
	}
	public TreeNode getRoot_recursive(TreeNode n){//루트가 아닐때만 리커시브 돌아가게
		if (n.isRoot())
			return n; 
		else
			return getRoot_recursive(n); //
	}
	public boolean isLeaf(){ //리프노드인지아닌지, 둘다비었때만 (둘다 false일때 true 리턴)
	
		if (!this.isLeft() && !this.isRight())
			return true;
		else
			return false;
	}
	public void setData(Object element){
		this.element = element;
	}
	//set더 필요하면 등 만들어주면됨 근데 위에있는 addleft가 비슷한역할 하는듯
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
	
	//null 로 초기값 만들려면 (안쓰는거같다 근데)
	public TreeNode(){
		this.element=null;
		this.right=null;
		this.left=null;
		this.parent=null;
	}
	//
	
	public TreeNode(TreeNode parent, Object element){
		// 생성자, parent 와 element 를 인자로 받아서 객체에 저장
		this.parent = parent;
		this.element = element;
	}
	public void addLeftChild(Object element){
		// left child 생성 메소드, 새로운 노드 객체를 생성해 현재 객체와 parent-left 로 연결
		TreeNode newNode = new TreeNode(this, element);
		this.left = newNode;
	}
	public void addRightChild(Object element){
		// right child 생성 메소드, 새로운 노드 객체를 생성해 현재 객체와 parent-right 로 연결
		TreeNode newNode = new TreeNode(this, element);
		this.right = newNode;
	}
	public void printData(){
		// 현재 노드가 저장하고 있는 element 출력
		System.out.println(this.element);
	}
	public Object getData(){
		// element 의 getter 메소드
		return this.element;
	}
	public TreeNode getLeftChild(){
		// left 의 getter 메소드
		return this.left;
		get
	}
	public TreeNode getRightChild(){
		// right 의 getter 메소드
		return this.right;
	}
	public boolean isLeft(){
		// left child 가 존재하는지 여부 반환
		// left 가 null 이 아닐경우 true, null 일 경우 false 리턴
		if (this.left!=null)
			return true;
		else
			return false;
	}
	public boolean isRight(){
		// right child 가 존재하는지 여부 반환
		// right 가 null 일 경우, false 리턴
		if (this.right!=null)
			return true;
		else
			return false;
	}
	public boolean isRoot(){
		// 현재 노드가 root 인지 여부 확인, parent 가 null 일 경우 true 리턴
		if (this.parent==null)
			return true;
		else
			return false;
	}
	public TreeNode getParent(){
		// parent getter 메소드
		return this.parent;
	}
	public TreeNode getRoot(){
		TreeNode temp = getRoot_recursive(this);
		return temp;
	}
	public TreeNode getRoot_recursive(TreeNode n){//루트가 아닐때만 리커시브 돌아가게
		if (n.isRoot())
			return n; 
		else
			return getRoot_recursive(n); //
	}
	public boolean isLeaf(){ //리프노드인지아닌지, 둘다비었때만 (둘다 false일때 true 리턴)
	
		if (!this.isLeft() && !this.isRight())
			return true;
		else
			return false;
	}
	public void setData(Object element){
		this.element = element;
	}
	//set더 필요하면 등 만들어주면됨 근데 위에있는 addleft가 비슷한역할 하는듯
	public void setLeft(TreeNode left){
		this.left=left;
	}
	//
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
