<<<<<<< HEAD

public class Tree {
	private TreeNode root;
	private TreeNode findNode;
	private List list;
	private List subList; //�Ʒ��� ���Ƿ� ����ǵ� ����Ϸ��� �̷��� �����������
	private int height;
	private Object [] treeToArray;
	
	//�̷����� ���� Ȥ�� ����������
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
		// Tree �� ������ �޼ҵ�, root�� TreeNode ��ü �����ϰ�, root �� parent �� null �� ����
		// ������ ��, ������ ȣ����� �˸��� ���� ���
		this.root = new TreeNode(null, element);
		findNode = null;
		list = new List();
		subList = new List();
		//System.out.println("A Tree is Initialized by Constructor");
	}
	
	private void findRecursive(TreeNode t, String data){
		// Ŭ���� ������ findNode �� ���� ȣ��Ǵ� �޼ҵ�,
		// ��� ��ü�� ���ڿ��� ���ڷ� �޾Ƽ�, ��ü�� element �� ���ڿ��� ��ġ�ϸ� findNode �� ���� ��ü ����
		// �ٸ� ���, ��ü�� left �� right �� Ȯ�� �� left �� right �������� �ٽ� �޼ҵ� ȣ��
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
		// main �Լ����� ȣ��ǰ�, Ŭ���� ���� findRecursive �޼ҵ带 ȣ���ϴ� �뵵
		// �켱, findNode �� null �� �ʱ�ȭ�� ��, Ʈ���� root ���� �����ؼ� ã���� �ϴ� ��带 �������� findRecursive �޼ҵ带 ȣ���ϰ�
		// findRecursive �� ���� ������ ��ü�� ������ findNode �� ��ȯ
		findNode = null;
		findRecursive(root, data);
		return findNode;
	}
	
	public TreeNode getRoot(){
		// root �� getter �޼ҵ�
		return this.root;
	}
	
	//
	public Tree (TreeNode root){
		this.root = root;
	}
	//
	
	public void preOrder(TreeNode t){
		// tree �� preorder �޼ҵ�
		// root ���� �����ؼ�, �ڱ� �ڽ��� �湮�� ��, �ڽ��� �����ϸ� �ڽ� �湮(left �켱, right ����)
		// visit �� ����� ������ ������� ǥ��
		System.out.println(t.getData());
		if (t.isLeft())
			preOrder(t.getLeftChild());
		if (t.isRight())
			preOrder(t.getRightChild());
	}
	public void printNodeList(){
		// ���ϴ� �޼ҵ忴���� ����� �ȳ��ϴ�.
		// list ����ϴ� �ſ�����...
		for (int i = 0; i<list.getSize(); i++){
			System.out.println(list.getNode(i));
		}
	}
	
	
	////
	public boolean hasLeft(TreeNode t){ //�տ��ִ� isleft�� ����
		if(t.getLeftChild()!=null){ //t�� left�� �����ͼ� null�� �ƴϸ�
			return true; // true - ���ʿ� �ڽ��� �ִٴ� �ǹ�
		}else{
			return false;
		}
	}
	public boolean hasRight(TreeNode t){//�տ��ִ� isright�͵���
		if(t.getRightChild()!=null){
			return true;
		}else{
			return false; 
		}
	}
	public TreeNode insertLeft(TreeNode t, String data){//�տ��ִ� addleftchild�� ����ѰŰ�..
		if(!hasLeft(t)){ //���� Ŭ�������ִ°� �׳� ������ �������� //!: not //hasleftt�� not�� true�̸�=������ ���������
			TreeNode node = new TreeNode (t, data); //new : ��ü����Ű����
			t.setLeft(node); //�̰� �տ��������� �����ִ°ǵ�..������ �������� �����غ���
			return t; //node�� �����ص� �������	
		}else return null; // ������ �Ⱥ��������
	}
	public TreeNode insertRight(TreeNode t, String data){
		if(!hasRight(t)){
			TreeNode node = new TreeNode (t, data);
			t.setRight(node);
			return t; //node�� v�� ����
		}else return null;
	}
	public Object remove(TreeNode t){ // �׳� �޴� �μ�// treenode v : ������� �� 
		if(!hasLeft(t)&&!hasRight(t)){ //!�Լ� :(��������)//hasleft�� false�� hasright�� false �� ��� = ������ ����ִ°�� //������ ��������� ���� �� �����ϱ�
			if (t.getParent().getLeftChild()==t){//�θ��� �����̶� �ڽ�(������¾�)�� ������
				t.getParent().setLeft(null); // �θ�� v�� ������ ����. �����͸� ���� ����°� �ƴ� data/left/right/parent ���� right ���� null�� 
				return t.getData(); // 
			}else {   //if(t.getParent().getRightChild()==t)��
			    t.getParent().setRight(null);
				return t.getData();	
		}else return null; //�ڽ��� �ִ°�� null return 
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
		System.out.println("���� ���� : " + list.getNode(i));
		System.out.println("�Ÿ� : " + edge);		
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
		if (n==root){ //treenode �� ��Ʈ�̸� 
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
		// ��� ��ü�� height �� ���ڷ� �޾Ƽ�,
		// Ʈ���� height ��ŭ�� full binary tree �� �����. (���� element ���� ��� "null" �� ����)
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
		// Ʈ����带 �ΰ� �޾Ƽ�, t1 �� t2 �� Ʈ�� ����
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
		// height �� ���ؼ�, 2^(height+1) ũ�⸸ŭ�� �迭�� �����
		// ���ο� Ʈ���� ����, ���� Ʈ���� ���ο� Ʈ���� ����
		// tree �� �� level ���� �迭�� ����
		// ���� ���� level ���� �ش� ��尡 ���� ���, �迭�� "null" ����
		
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
	private List subList; //�Ʒ��� ���Ƿ� ����ǵ� ����Ϸ��� �̷��� �����������
	private int height;
	private Object [] treeToArray;
	
	//�̷����� ���� Ȥ�� ����������
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
		// Tree �� ������ �޼ҵ�, root�� TreeNode ��ü �����ϰ�, root �� parent �� null �� ����
		// ������ ��, ������ ȣ����� �˸��� ���� ���
		this.root = new TreeNode(null, element);
		findNode = null;
		list = new List();
		subList = new List();
		//System.out.println("A Tree is Initialized by Constructor");
	}
	
	private void findRecursive(TreeNode t, String data){
		// Ŭ���� ������ findNode �� ���� ȣ��Ǵ� �޼ҵ�,
		// ��� ��ü�� ���ڿ��� ���ڷ� �޾Ƽ�, ��ü�� element �� ���ڿ��� ��ġ�ϸ� findNode �� ���� ��ü ����
		// �ٸ� ���, ��ü�� left �� right �� Ȯ�� �� left �� right �������� �ٽ� �޼ҵ� ȣ��
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
		// main �Լ����� ȣ��ǰ�, Ŭ���� ���� findRecursive �޼ҵ带 ȣ���ϴ� �뵵
		// �켱, findNode �� null �� �ʱ�ȭ�� ��, Ʈ���� root ���� �����ؼ� ã���� �ϴ� ��带 �������� findRecursive �޼ҵ带 ȣ���ϰ�
		// findRecursive �� ���� ������ ��ü�� ������ findNode �� ��ȯ
		findNode = null;
		findRecursive(root, data);
		return findNode;
	}
	
	public TreeNode getRoot(){
		// root �� getter �޼ҵ�
		return this.root;
	}
	
	//
	public Tree (TreeNode root){
		this.root = root;
	}
	//
	
	public void preOrder(TreeNode t){
		// tree �� preorder �޼ҵ�
		// root ���� �����ؼ�, �ڱ� �ڽ��� �湮�� ��, �ڽ��� �����ϸ� �ڽ� �湮(left �켱, right ����)
		// visit �� ����� ������ ������� ǥ��
		System.out.println(t.getData());
		if (t.isLeft())
			preOrder(t.getLeftChild());
		if (t.isRight())
			preOrder(t.getRightChild());
	}
	public void printNodeList(){
		// ���ϴ� �޼ҵ忴���� ����� �ȳ��ϴ�.
		// list ����ϴ� �ſ�����...
		for (int i = 0; i<list.getSize(); i++){
			System.out.println(list.getNode(i));
		}
	}
	
	
	////
	public boolean hasLeft(TreeNode t){ //�տ��ִ� isleft�� ����
		if(t.getLeftChild()!=null){ //t�� left�� �����ͼ� null�� �ƴϸ�
			return true; // true - ���ʿ� �ڽ��� �ִٴ� �ǹ�
		}else{
			return false;
		}
	}
	public boolean hasRight(TreeNode t){//�տ��ִ� isright�͵���
		if(t.getRightChild()!=null){
			return true;
		}else{
			return false; 
		}
	}
	public TreeNode insertLeft(TreeNode t, String data){//�տ��ִ� addleftchild�� ����ѰŰ�..
		if(!hasLeft(t)){ //���� Ŭ�������ִ°� �׳� ������ �������� //!: not //hasleftt�� not�� true�̸�=������ ���������
			TreeNode node = new TreeNode (t, data); //new : ��ü����Ű����
			t.setLeft(node); //�̰� �տ��������� �����ִ°ǵ�..������ �������� �����غ���
			return t; //node�� �����ص� �������	
		}else return null; // ������ �Ⱥ��������
	}
	public TreeNode insertRight(TreeNode t, String data){
		if(!hasRight(t)){
			TreeNode node = new TreeNode (t, data);
			t.setRight(node);
			return t; //node�� v�� ����
		}else return null;
	}
	public Object remove(TreeNode t){ // �׳� �޴� �μ�// treenode v : ������� �� 
		if(!hasLeft(t)&&!hasRight(t)){ //!�Լ� :(��������)//hasleft�� false�� hasright�� false �� ��� = ������ ����ִ°�� //������ ��������� ���� �� �����ϱ�
			if (t.getParent().getLeftChild()==t){//�θ��� �����̶� �ڽ�(������¾�)�� ������
				t.getParent().setLeft(null); // �θ�� v�� ������ ����. �����͸� ���� ����°� �ƴ� data/left/right/parent ���� right ���� null�� 
				return t.getData(); // 
			}else {   //if(t.getParent().getRightChild()==t)��
			    t.getParent().setRight(null);
				return t.getData();	
		}else return null; //�ڽ��� �ִ°�� null return 
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
		System.out.println("���� ���� : " + list.getNode(i));
		System.out.println("�Ÿ� : " + edge);		
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
		if (n==root){ //treenode �� ��Ʈ�̸� 
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
		// ��� ��ü�� height �� ���ڷ� �޾Ƽ�,
		// Ʈ���� height ��ŭ�� full binary tree �� �����. (���� element ���� ��� "null" �� ����)
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
		// Ʈ����带 �ΰ� �޾Ƽ�, t1 �� t2 �� Ʈ�� ����
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
		// height �� ���ؼ�, 2^(height+1) ũ�⸸ŭ�� �迭�� �����
		// ���ο� Ʈ���� ����, ���� Ʈ���� ���ο� Ʈ���� ����
		// tree �� �� level ���� �迭�� ����
		// ���� ���� level ���� �ش� ��尡 ���� ���, �迭�� "null" ����
		
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
