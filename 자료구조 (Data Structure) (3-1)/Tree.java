<<<<<<< HEAD

public class Tree {
	private TreeNode root;
	private TreeNode findNode;
	private List list;
	private List subList; //아래에 임의로 만든건데 사용하려면 이렇게 지정해줘야해
	private int height;
	private Object [] treeToArray;
	
	//이런식의 선언 혹시 문제에따라서
	public Tree (TreeNode root){
		this.root = root;
	}
	public TreeNode left(TreeNode t){
		return t.getLeftChild();
	}
	public TreeNode right(TreeNode t){
		return t.getRightChild();
	//
	
	
	public Tree(Object element){
		// Tree 의 생성자 메소드, root에 TreeNode 객체 지정하고, root 의 parent 는 null 로 설정
		// 생성한 후, 생성자 호출됨을 알리는 문장 출력
		this.root = new TreeNode(null, element);
		findNode = null;
		list = new List();
		subList = new List();
		//System.out.println("A Tree is Initialized by Constructor");
	}
	
	private void findRecursive(TreeNode t, String data){
		// 클래스 내에서 findNode 에 의해 호출되는 메소드,
		// 노드 객체와 문자열을 인자로 받아서, 객체의 element 와 문자열이 일치하면 findNode 에 현재 객체 저장
		// 다를 경우, 객체의 left 와 right 를 확인 후 left 와 right 각각으로 다시 메소드 호출
		if(t.getData().equals(data))
			findNode = t;
		else{
			if (t.isLeft())
				findRecursive(t.getLeftChild(), data);
			if (t.isRight())
				findRecursive(t.getRightChild(), data);
		}
	}
	
	public TreeNode findNode(String data){
		// main 함수에서 호출되고, 클래스 내의 findRecursive 메소드를 호출하는 용도
		// 우선, findNode 를 null 로 초기화한 후, 트리의 root 부터 시작해서 찾고자 하는 노드를 만나도록 findRecursive 메소드를 호출하고
		// findRecursive 를 통해 새로이 객체를 저장한 findNode 를 반환
		findNode = null;
		findRecursive(root, data);
		return findNode;
	}
	
	public TreeNode getRoot(){
		// root 의 getter 메소드
		return this.root;
	}
	
	//
	public Tree (TreeNode root){
		this.root = root;
	}
	//
	
	public void preOrder(TreeNode t){
		// tree 의 preorder 메소드
		// root 부터 시작해서, 자기 자신을 방문한 후, 자식이 존재하면 자식 방문(left 우선, right 나중)
		// visit 을 저장된 데이터 출력으로 표현
		System.out.println(t.getData());
		if (t.isLeft())
			preOrder(t.getLeftChild());
		if (t.isRight())
			preOrder(t.getRightChild());
	}
	public void printNodeList(){
		// 뭐하는 메소드였는지 기억이 안납니다.
		// list 출력하는 거였는지...
		for (int i = 0; i<list.getSize(); i++){
			System.out.println(list.getNode(i));
		}
	}
	
	
	////
	public boolean hasLeft(TreeNode t){ //앞에있는 isleft랑 동일
		if(t.getLeftChild()!=null){ //t의 left를 데려와서 null이 아니면
			return true; // true - 왼쪽에 자식이 있다는 의미
		}else{
			return false;
		}
	}
	public boolean hasRight(TreeNode t){//앞에있는 isright와동일
		if(t.getRightChild()!=null){
			return true;
		}else{
			return false; 
		}
	}
	public TreeNode insertLeft(TreeNode t, String data){//앞에있는 addleftchild와 비슷한거같..
		if(!hasLeft(t)){ //같은 클래스에있는건 그냥 가져다 쓸수있음 //!: not //hasleftt의 not이 true이면=왼쪽이 비어있으면
			TreeNode node = new TreeNode (t, data); //new : 객체생성키워드
			t.setLeft(node); //이거 앞에만들어놔야 쓸수있는건데..없으면 어찌할지 생각해보기
			return t; //node를 리턴해도 상관없음	
		}else return null; // 왼쪽이 안비어있으면
	}
	public TreeNode insertRight(TreeNode t, String data){
		if(!hasRight(t)){
			TreeNode node = new TreeNode (t, data);
			t.setRight(node);
			return t; //node든 v든 노상관
		}else return null;
	}
	public Object remove(TreeNode t){ // 그냥 받는 인수// treenode v : 지우려는 애 
		if(!hasLeft(t)&&!hasRight(t)){ //!함수 :(같지않음)//hasleft도 false고 hasright도 false 인 경우 = 양쪽이 비어있는경우 //양쪽이 비어있을때 지울 수 있으니까
			if (t.getParent().getLeftChild()==t){//부모의 왼쪽이랑 자식(지우려는애)이 같으면
				t.getParent().setLeft(null); // 부모와 v의 연결을 끊음. 데이터를 직접 지우는게 아님 data/left/right/parent 에서 right 값을 null로 
				return t.getData(); // 
			}else {   //if(t.getParent().getRightChild()==t)면
			    t.getParent().setRight(null);
				return t.getData();	
		}else return null; //자식이 있는경우 null return 
	}
	public void inOrder(TreeNode t){
	
		if (hasLeft(t)){
			inOrder(t.getLeftChild());
		}
		System.out.print(t.getData()); 
		if (hasRight(t)){
			inOrder(t.getRightChild());
		}	
	}
	public void preOrder(TreeNode t){
		System.out.print(t.getData());
		if (hasLeft(t)){
			preOrder(t.getLeftChild());
		}
		if (hasRight(t)){
			preOrder(t.getRightChild());
		}	
	}
	public void postOrder(TreeNode t){
		if (hasLeft(t)){
			postOrder(t.getLeftChild());
		}
		if (hasRight(t)){
			postOrder(t.getRightChild());
		}
		System.out.print(t.getData());
	}
	
	public int countChildren(TreeNode t){ //=get numbers of nodes
    if ( t == null )
        return 0;
    return 1 + countChildren(node.getLeftChild()) + countChildren(node.getRightChild());

}
	//

	
	
	public void getAncestor_toList(TreeNode node){
		list.addLast(node.getData());
		if (!node.isRoot())
			getAncestor_toList(node.getParent());
	}
	
	public void getAncestor_toSubList(TreeNode node){
		subList.addLast(node.getData());
		if (!node.isRoot())
			getAncestor_toSubList(node.getParent());
	}
	
	public void getAncestor(TreeNode node){
		if (!node.isRoot())
			getAncestor(node.getParent());
		System.out.println(node.getData());
	}
	public void getCommonNode(TreeNode n1, TreeNode n2){
		int edge=0;
		int i;
		list = new List();
		subList = new List();
		
		getAncestor_toList(n1);
		getAncestor_toSubList(n2);
		
		out:for (i = 0; i<list.getSize(); i++){
			for (int j = 0; j<subList.getSize(); j++){
				if (list.getNode(i).equals(subList.getNode(j))){
					edge = i+j;
					break out;
				}					
			}
		}
		System.out.println("공통 조상 : " + list.getNode(i));
		System.out.println("거리 : " + edge);		
	}
	public void printSameLevelNodes(int level){
		TreeNode temp = this.root;
		list.initialization();
		printSameLevelNodes(temp, level, 0);
		printNodeList();
	}
	private void printSameLevelNodes(TreeNode t, int level, int depth){
		if (depth == level)
			list.addLast(t.getData());
		if (t.isLeft())
			printSameLevelNodes(t.getLeftChild(), level, depth+1);
		if (t.isRight())
			printSameLevelNodes(t.getRightChild(), level, depth+1);
	}
	public void treeNumbering(TreeNode t, String str){
		System.out.println(str + " : " + t.getData());
		if (t.isLeft())
			treeNumbering(t.getLeftChild(), str+".1");
		if (t.isRight())
			treeNumbering(t.getRightChild(), str+".2");
	}
	public void printHeight(){
		getHeight(this.root, 0);
		System.out.println("Height of Tree : " + height);
	}
	public void getHeight(TreeNode t, int depth){
		if (height<depth)
			this.height = depth;
	
		if (t.isLeft())
			getHeight(t.getLeftChild(), depth+1);
		if (t.isRight())
			getHeight(t.getRightChild(), depth+1);		
	}

	///

	

	//
	public void depth(Tree t, TreeNode n){
		root= Treenode(null);
		if (n==root){ //treenode 의 루트이면 
			return 0;
		}else{
			return 1+depth(n);
		}
	}
	public static int minimumDepth(TreeNode root){
    // Corner case. Should never be hit unless the code is
    // called on root = NULL
		if (root == null)
			return 0;

    // Base case : Leaf Node. This accounts for height = 1.
		if (root.getLeft() == null && root.getRight() == null)
			return 1;

    // If left subtree is NULL, recur for right subtree
		if (root.getLeft() == null)
			return minimumDepth(root.getRight()) + 1;

    // If right subtree is NULL, recur for right subtree
		if (root.getRight() == null)
			return minimumDepth(root.getLeft()) + 1;

		return Math.min(minimumDepth(root.getLeft()),	
                    minimumDepth(root.getRight())) + 1;
	}
	//

	
	
	
______________________	
	
	
	
	public void newTree(TreeNode t, int height){
		// 노드 객체와 height 를 인자로 받아서,
		// 트리를 height 만큼의 full binary tree 로 만든다. (들어가는 element 값은 모두 "null" 로 세팅)
		if (height>=0){
			t.addLeftChild("null");
			t.addRightChild("null");
			
			if (t.isLeft())
				newTree(t.getLeftChild(),height-1);
			if (t.isRight())
				newTree(t.getRightChild(), height-1);
		}
	}
	public void treeCopy(TreeNode t1, TreeNode t2){
		// 트리노드를 두개 받아서, t1 에 t2 의 트리 복사
		t1.setData(t2.getData());
		if (t2.isLeft())
			treeCopy(t1.getLeftChild(), t2.getLeftChild());
		if (t2.isRight())
			treeCopy(t1.getRightChild(), t2.getRightChild());			
	}	
	private void treeToList(TreeNode t, int level, int depth){
		
		
		if (t.isRight())
			treeToList(t.getRightChild(), level, depth+1);
		if (t.isLeft())
			treeToList(t.getLeftChild(), level, depth+1);
		if (depth == level)
			list.addFirst(t.getData());
	}
	
	
__________________	
	public void treeToArray(){
		// height 를 구해서, 2^(height+1) 크기만큼의 배열을 만들고
		// 새로운 트리를 만들어서, 현재 트리를 새로운 트리에 저장
		// tree 의 각 level 별로 배열에 저장
		// 만약 일정 level 에서 해당 노드가 없을 경우, 배열에 "null" 저장
		
		getHeight(this.root, 0);
		treeToArray = new Object[(int)Math.pow(2, height+1)];
		Tree tree = new Tree("null");
		newTree(tree.getRoot(), height);
		treeCopy(tree.root, this.root);
		list.initialization();
		for (int i = 0; i<=height; i++){
			treeToList(tree.root, height, i);
		}
		for (int i = 0; i<list.getSize(); i++){
			treeToArray[i+1] = list.getNode(i); 
		}
		for (int i = 1; i<(int)Math.pow(2, height+1); i++){
			System.out.println(treeToArray[i]);
		}			
	}
}
=======

public class Tree {
	private TreeNode root;
	private TreeNode findNode;
	private List list;
	private List subList; //아래에 임의로 만든건데 사용하려면 이렇게 지정해줘야해
	private int height;
	private Object [] treeToArray;
	
	//이런식의 선언 혹시 문제에따라서
	public Tree (TreeNode root){
		this.root = root;
	}
	public TreeNode left(TreeNode t){
		return t.getLeftChild();
	}
	public TreeNode right(TreeNode t){
		return t.getRightChild();
	//
	
	
	public Tree(Object element){
		// Tree 의 생성자 메소드, root에 TreeNode 객체 지정하고, root 의 parent 는 null 로 설정
		// 생성한 후, 생성자 호출됨을 알리는 문장 출력
		this.root = new TreeNode(null, element);
		findNode = null;
		list = new List();
		subList = new List();
		//System.out.println("A Tree is Initialized by Constructor");
	}
	
	private void findRecursive(TreeNode t, String data){
		// 클래스 내에서 findNode 에 의해 호출되는 메소드,
		// 노드 객체와 문자열을 인자로 받아서, 객체의 element 와 문자열이 일치하면 findNode 에 현재 객체 저장
		// 다를 경우, 객체의 left 와 right 를 확인 후 left 와 right 각각으로 다시 메소드 호출
		if(t.getData().equals(data))
			findNode = t;
		else{
			if (t.isLeft())
				findRecursive(t.getLeftChild(), data);
			if (t.isRight())
				findRecursive(t.getRightChild(), data);
		}
	}
	
	public TreeNode findNode(String data){
		// main 함수에서 호출되고, 클래스 내의 findRecursive 메소드를 호출하는 용도
		// 우선, findNode 를 null 로 초기화한 후, 트리의 root 부터 시작해서 찾고자 하는 노드를 만나도록 findRecursive 메소드를 호출하고
		// findRecursive 를 통해 새로이 객체를 저장한 findNode 를 반환
		findNode = null;
		findRecursive(root, data);
		return findNode;
	}
	
	public TreeNode getRoot(){
		// root 의 getter 메소드
		return this.root;
	}
	
	//
	public Tree (TreeNode root){
		this.root = root;
	}
	//
	
	public void preOrder(TreeNode t){
		// tree 의 preorder 메소드
		// root 부터 시작해서, 자기 자신을 방문한 후, 자식이 존재하면 자식 방문(left 우선, right 나중)
		// visit 을 저장된 데이터 출력으로 표현
		System.out.println(t.getData());
		if (t.isLeft())
			preOrder(t.getLeftChild());
		if (t.isRight())
			preOrder(t.getRightChild());
	}
	public void printNodeList(){
		// 뭐하는 메소드였는지 기억이 안납니다.
		// list 출력하는 거였는지...
		for (int i = 0; i<list.getSize(); i++){
			System.out.println(list.getNode(i));
		}
	}
	
	
	////
	public boolean hasLeft(TreeNode t){ //앞에있는 isleft랑 동일
		if(t.getLeftChild()!=null){ //t의 left를 데려와서 null이 아니면
			return true; // true - 왼쪽에 자식이 있다는 의미
		}else{
			return false;
		}
	}
	public boolean hasRight(TreeNode t){//앞에있는 isright와동일
		if(t.getRightChild()!=null){
			return true;
		}else{
			return false; 
		}
	}
	public TreeNode insertLeft(TreeNode t, String data){//앞에있는 addleftchild와 비슷한거같..
		if(!hasLeft(t)){ //같은 클래스에있는건 그냥 가져다 쓸수있음 //!: not //hasleftt의 not이 true이면=왼쪽이 비어있으면
			TreeNode node = new TreeNode (t, data); //new : 객체생성키워드
			t.setLeft(node); //이거 앞에만들어놔야 쓸수있는건데..없으면 어찌할지 생각해보기
			return t; //node를 리턴해도 상관없음	
		}else return null; // 왼쪽이 안비어있으면
	}
	public TreeNode insertRight(TreeNode t, String data){
		if(!hasRight(t)){
			TreeNode node = new TreeNode (t, data);
			t.setRight(node);
			return t; //node든 v든 노상관
		}else return null;
	}
	public Object remove(TreeNode t){ // 그냥 받는 인수// treenode v : 지우려는 애 
		if(!hasLeft(t)&&!hasRight(t)){ //!함수 :(같지않음)//hasleft도 false고 hasright도 false 인 경우 = 양쪽이 비어있는경우 //양쪽이 비어있을때 지울 수 있으니까
			if (t.getParent().getLeftChild()==t){//부모의 왼쪽이랑 자식(지우려는애)이 같으면
				t.getParent().setLeft(null); // 부모와 v의 연결을 끊음. 데이터를 직접 지우는게 아님 data/left/right/parent 에서 right 값을 null로 
				return t.getData(); // 
			}else {   //if(t.getParent().getRightChild()==t)면
			    t.getParent().setRight(null);
				return t.getData();	
		}else return null; //자식이 있는경우 null return 
	}
	public void inOrder(TreeNode t){
	
		if (hasLeft(t)){
			inOrder(t.getLeftChild());
		}
		System.out.print(t.getData()); 
		if (hasRight(t)){
			inOrder(t.getRightChild());
		}	
	}
	public void preOrder(TreeNode t){
		System.out.print(t.getData());
		if (hasLeft(t)){
			preOrder(t.getLeftChild());
		}
		if (hasRight(t)){
			preOrder(t.getRightChild());
		}	
	}
	public void postOrder(TreeNode t){
		if (hasLeft(t)){
			postOrder(t.getLeftChild());
		}
		if (hasRight(t)){
			postOrder(t.getRightChild());
		}
		System.out.print(t.getData());
	}
	
	public int countChildren(TreeNode t){ //=get numbers of nodes
    if ( t == null )
        return 0;
    return 1 + countChildren(node.getLeftChild()) + countChildren(node.getRightChild());

}
	//

	
	
	public void getAncestor_toList(TreeNode node){
		list.addLast(node.getData());
		if (!node.isRoot())
			getAncestor_toList(node.getParent());
	}
	
	public void getAncestor_toSubList(TreeNode node){
		subList.addLast(node.getData());
		if (!node.isRoot())
			getAncestor_toSubList(node.getParent());
	}
	
	public void getAncestor(TreeNode node){
		if (!node.isRoot())
			getAncestor(node.getParent());
		System.out.println(node.getData());
	}
	public void getCommonNode(TreeNode n1, TreeNode n2){
		int edge=0;
		int i;
		list = new List();
		subList = new List();
		
		getAncestor_toList(n1);
		getAncestor_toSubList(n2);
		
		out:for (i = 0; i<list.getSize(); i++){
			for (int j = 0; j<subList.getSize(); j++){
				if (list.getNode(i).equals(subList.getNode(j))){
					edge = i+j;
					break out;
				}					
			}
		}
		System.out.println("공통 조상 : " + list.getNode(i));
		System.out.println("거리 : " + edge);		
	}
	public void printSameLevelNodes(int level){
		TreeNode temp = this.root;
		list.initialization();
		printSameLevelNodes(temp, level, 0);
		printNodeList();
	}
	private void printSameLevelNodes(TreeNode t, int level, int depth){
		if (depth == level)
			list.addLast(t.getData());
		if (t.isLeft())
			printSameLevelNodes(t.getLeftChild(), level, depth+1);
		if (t.isRight())
			printSameLevelNodes(t.getRightChild(), level, depth+1);
	}
	public void treeNumbering(TreeNode t, String str){
		System.out.println(str + " : " + t.getData());
		if (t.isLeft())
			treeNumbering(t.getLeftChild(), str+".1");
		if (t.isRight())
			treeNumbering(t.getRightChild(), str+".2");
	}
	public void printHeight(){
		getHeight(this.root, 0);
		System.out.println("Height of Tree : " + height);
	}
	public void getHeight(TreeNode t, int depth){
		if (height<depth)
			this.height = depth;
	
		if (t.isLeft())
			getHeight(t.getLeftChild(), depth+1);
		if (t.isRight())
			getHeight(t.getRightChild(), depth+1);		
	}

	///

	

	//
	public void depth(Tree t, TreeNode n){
		root= Treenode(null);
		if (n==root){ //treenode 의 루트이면 
			return 0;
		}else{
			return 1+depth(n);
		}
	}
	public static int minimumDepth(TreeNode root){
    // Corner case. Should never be hit unless the code is
    // called on root = NULL
		if (root == null)
			return 0;

    // Base case : Leaf Node. This accounts for height = 1.
		if (root.getLeft() == null && root.getRight() == null)
			return 1;

    // If left subtree is NULL, recur for right subtree
		if (root.getLeft() == null)
			return minimumDepth(root.getRight()) + 1;

    // If right subtree is NULL, recur for right subtree
		if (root.getRight() == null)
			return minimumDepth(root.getLeft()) + 1;

		return Math.min(minimumDepth(root.getLeft()),	
                    minimumDepth(root.getRight())) + 1;
	}
	//

	
	
	
______________________	
	
	
	
	public void newTree(TreeNode t, int height){
		// 노드 객체와 height 를 인자로 받아서,
		// 트리를 height 만큼의 full binary tree 로 만든다. (들어가는 element 값은 모두 "null" 로 세팅)
		if (height>=0){
			t.addLeftChild("null");
			t.addRightChild("null");
			
			if (t.isLeft())
				newTree(t.getLeftChild(),height-1);
			if (t.isRight())
				newTree(t.getRightChild(), height-1);
		}
	}
	public void treeCopy(TreeNode t1, TreeNode t2){
		// 트리노드를 두개 받아서, t1 에 t2 의 트리 복사
		t1.setData(t2.getData());
		if (t2.isLeft())
			treeCopy(t1.getLeftChild(), t2.getLeftChild());
		if (t2.isRight())
			treeCopy(t1.getRightChild(), t2.getRightChild());			
	}	
	private void treeToList(TreeNode t, int level, int depth){
		
		
		if (t.isRight())
			treeToList(t.getRightChild(), level, depth+1);
		if (t.isLeft())
			treeToList(t.getLeftChild(), level, depth+1);
		if (depth == level)
			list.addFirst(t.getData());
	}
	
	
__________________	
	public void treeToArray(){
		// height 를 구해서, 2^(height+1) 크기만큼의 배열을 만들고
		// 새로운 트리를 만들어서, 현재 트리를 새로운 트리에 저장
		// tree 의 각 level 별로 배열에 저장
		// 만약 일정 level 에서 해당 노드가 없을 경우, 배열에 "null" 저장
		
		getHeight(this.root, 0);
		treeToArray = new Object[(int)Math.pow(2, height+1)];
		Tree tree = new Tree("null");
		newTree(tree.getRoot(), height);
		treeCopy(tree.root, this.root);
		list.initialization();
		for (int i = 0; i<=height; i++){
			treeToList(tree.root, height, i);
		}
		for (int i = 0; i<list.getSize(); i++){
			treeToArray[i+1] = list.getNode(i); 
		}
		for (int i = 1; i<(int)Math.pow(2, height+1); i++){
			System.out.println(treeToArray[i]);
		}			
	}
}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
