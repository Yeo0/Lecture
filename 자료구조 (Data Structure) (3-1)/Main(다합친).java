<<<<<<< HEAD

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1번.		
		System.out.println("==========");
		System.out.println("###1번###");
		List list = new List();
		list.addLast("A");
		list.addLast("B");
		list.addLast("C");
		System.out.println(list.getNode(2));
		System.out.println(list.getNode(0));
		System.out.println(list.getNode(1));
		System.out.println("===========");
		
		// 2번.
		System.out.println("###2번###");
		Tree tree = new Tree("root");
		tree.getRoot().addLeftChild("mammal");
		tree.getRoot().addRightChild("bird");
		tree.findNode("mammal").addLeftChild("cat");
		tree.findNode("mammal").addRightChild("dog");
		tree.findNode("bird").addLeftChild("eagle");
		tree.findNode("bird").addRightChild("sparrow");
		tree.preOrder(tree.getRoot());
		System.out.println("===========");
		
		// 3번.
		System.out.println("###3번###");
		tree = new Tree("Data Structure");
		tree.findNode("Data Structure").addLeftChild("Primitive Data Structure");
		tree.findNode("Primitive Data Structure").addRightChild("String");
		tree.findNode("Primitive Data Structure").addLeftChild("Number");
		tree.findNode("Data Structure").addRightChild("Non-Primitive Data Structure");
		tree.findNode("Non-Primitive Data Structure").addLeftChild("Linear");
		tree.findNode("Non-Primitive Data Structure").addRightChild("Non-Linear");
		tree.findNode("Linear").addLeftChild("Static");
		tree.findNode("Static").addLeftChild("Array");
		tree.findNode("Linear").addRightChild("Dynamic");
		tree.findNode("Dynamic").addLeftChild("Linked List");
		tree.findNode("Dynamic").addRightChild("Stack/Queue");
		tree.findNode("Non-Linear").addRightChild("Graph");
		tree.findNode("Non-Linear").addLeftChild("Trees");
		
		tree.preOrder(tree.getRoot());
		System.out.println("==========");
		tree.getAncestor(tree.findNode("Dynamic"));
		System.out.println("==========");
		tree.getCommonNode(tree.findNode("Trees"), tree.findNode("Array"));
		System.out.println();
		tree.printSameLevelNodes(2);
		System.out.println("==========");
		
		// 4번.
		System.out.println("###4번###");
		tree.treeNumbering(tree.getRoot(), "1");
		System.out.println("==========");
		tree.printHeight();
		System.out.println("==========");
		tree.treeToArray();
	}

}
=======

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1번.		
		System.out.println("==========");
		System.out.println("###1번###");
		List list = new List();
		list.addLast("A");
		list.addLast("B");
		list.addLast("C");
		System.out.println(list.getNode(2));
		System.out.println(list.getNode(0));
		System.out.println(list.getNode(1));
		System.out.println("===========");
		
		// 2번.
		System.out.println("###2번###");
		Tree tree = new Tree("root");
		tree.getRoot().addLeftChild("mammal");
		tree.getRoot().addRightChild("bird");
		tree.findNode("mammal").addLeftChild("cat");
		tree.findNode("mammal").addRightChild("dog");
		tree.findNode("bird").addLeftChild("eagle");
		tree.findNode("bird").addRightChild("sparrow");
		tree.preOrder(tree.getRoot());
		System.out.println("===========");
		
		// 3번.
		System.out.println("###3번###");
		tree = new Tree("Data Structure");
		tree.findNode("Data Structure").addLeftChild("Primitive Data Structure");
		tree.findNode("Primitive Data Structure").addRightChild("String");
		tree.findNode("Primitive Data Structure").addLeftChild("Number");
		tree.findNode("Data Structure").addRightChild("Non-Primitive Data Structure");
		tree.findNode("Non-Primitive Data Structure").addLeftChild("Linear");
		tree.findNode("Non-Primitive Data Structure").addRightChild("Non-Linear");
		tree.findNode("Linear").addLeftChild("Static");
		tree.findNode("Static").addLeftChild("Array");
		tree.findNode("Linear").addRightChild("Dynamic");
		tree.findNode("Dynamic").addLeftChild("Linked List");
		tree.findNode("Dynamic").addRightChild("Stack/Queue");
		tree.findNode("Non-Linear").addRightChild("Graph");
		tree.findNode("Non-Linear").addLeftChild("Trees");
		
		tree.preOrder(tree.getRoot());
		System.out.println("==========");
		tree.getAncestor(tree.findNode("Dynamic"));
		System.out.println("==========");
		tree.getCommonNode(tree.findNode("Trees"), tree.findNode("Array"));
		System.out.println();
		tree.printSameLevelNodes(2);
		System.out.println("==========");
		
		// 4번.
		System.out.println("###4번###");
		tree.treeNumbering(tree.getRoot(), "1");
		System.out.println("==========");
		tree.printHeight();
		System.out.println("==========");
		tree.treeToArray();
	}

}
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
