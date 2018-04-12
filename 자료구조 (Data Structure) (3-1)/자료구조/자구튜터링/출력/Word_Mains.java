<<<<<<< HEAD
package Word_Main

import java.util.Scanner; //scanner������ import�ؾ���

import org.w3c.dom.stylesheets.LinkStyle;

public class Mains {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	String str = new String(); // �޾Ƽ� �������� new �� ���� (new�� �ؾ� ������ ��������)
	Scanner scanner = new Scanner(System.in); //scanner ���¹��
	System.out.print("ù �ܾ� �Է�:");

	str=scanner.nextLine(); //�����ܾ� �Է�
	LinkedList List = new LinkedList(); // �ؿ��� List �� linkedlist �ҷ���������
	int i =0;
	int j =0; // ù������ ����
	while(true){
		// exit�ܾ� Ȯ�� -> 
		if(str.equals("exit")) break; // break : while �� ������ �������� -> �ٽ� while�� ó������ ����
		//ó���� null�̶� �״������� �Ѿ���ϱ�����
		if(j==0){
			List.addLast(str);
			System.out.print("�����ܾ� �Է�:"); //println�ϸ� ���ٹؿ��� �Է¹޾�
			str= scanner.nextLine();
			j=1;
			continue; // continue: ���ǹ��ȿ��� �����ڵ�(�Ʒ����ִ� i=spell ��¼�� �� �����ϰ�, �ٽ� while�� ����)
		}
		//ö�ں� (�ȵǸ� ����) -> 
		i=spell(List, str); //�Լ�ȣ����Ҷ� �׻� ���ڰ� �ʿ�, ȣ���Ҷ� �����ִ� ���� �̸����� (���´� �ȹ���) 
		if(i!=1) break; // ������ ö�ڶ� ���°� ��ö�ڶ� ������ 1�̴ϱ� �ٸ��� break.
		//�ߺ�Ȯ���ϰ� (�ߺ��Ǹ� ������� �ƴϸ� ����Ʈ�� ����.) -> 
		i=dupli(List, str);
		if(i!=1){ // �ߺ����°� 1�̴ϱ� 1�̾ƴ϶��� �ߺ��̶���
			System.out.println("�ߺ��� �ܾ��Դϴ�");
		}else {
			List.addLast(str); // 1�̸� = �ߺ��� ������ addlast // addlast�� linkedlist class�� �ְ�, 
			                   //linkedlist�� ������ list �� �ϱ�������Ƿ� list.addLast(str)�� ���.                   
		}
		// ���Է� ("�����ܾ��Է�")
		System.out.print("�����ܾ� �Է�:");
		str=scanner.nextLine(); // �����ܾ� �Է¹ޱ����ؼ� str���� ����
	} // �ٽ� ���ΰ��� ���ǰ˻� 
	System.out.print("*���*");
	List.printAllNodes(); // list class �ȿ��Լ����.
	}
//spell(linkedlist l, string s) <- ���⼭�� list str �� �ƴ϶� ���� �� ���������	
public static int spell (LinkedList l, String s){
	String list_s=l.trailer.getPrev().getString();	
	if(list_s.charAt(list_s.length()-1)==s.charAt(0)){
		return 1; // ������ ö�ڶ� ���°� ��ö�ڶ� ������ 1
	}
		return -1; //������ ö�ڶ� ���°� ��ö�ڶ� �ٸ��� -1
}
public static int dupli (LinkedList l, String s){
	Word temp=l.header; // header�� �ּ� //word���ִ°� �������ؼ� word �տ� �������
	temp=temp.getNext(); //temp �ϳ��� �̵� // i=i++�� �������� //�� �����
	while(temp!=l.trailer){
		if(temp.getString().equals(s)) return -1; //�ϳ��� ���鼭 �ߺ�������  -1����
		temp=temp.getNext(); //temp �ϳ��� �̵� // i=i++�� �������� //�� �����
	}
	return 1; //�ߺ� ������ 1����	
}
	
}
//���⼭ Nodeclass �̸� word 



=======
package Word_Main

import java.util.Scanner; //scanner������ import�ؾ���

import org.w3c.dom.stylesheets.LinkStyle;

public class Mains {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	String str = new String(); // �޾Ƽ� �������� new �� ���� (new�� �ؾ� ������ ��������)
	Scanner scanner = new Scanner(System.in); //scanner ���¹��
	System.out.print("ù �ܾ� �Է�:");

	str=scanner.nextLine(); //�����ܾ� �Է�
	LinkedList List = new LinkedList(); // �ؿ��� List �� linkedlist �ҷ���������
	int i =0;
	int j =0; // ù������ ����
	while(true){
		// exit�ܾ� Ȯ�� -> 
		if(str.equals("exit")) break; // break : while �� ������ �������� -> �ٽ� while�� ó������ ����
		//ó���� null�̶� �״������� �Ѿ���ϱ�����
		if(j==0){
			List.addLast(str);
			System.out.print("�����ܾ� �Է�:"); //println�ϸ� ���ٹؿ��� �Է¹޾�
			str= scanner.nextLine();
			j=1;
			continue; // continue: ���ǹ��ȿ��� �����ڵ�(�Ʒ����ִ� i=spell ��¼�� �� �����ϰ�, �ٽ� while�� ����)
		}
		//ö�ں� (�ȵǸ� ����) -> 
		i=spell(List, str); //�Լ�ȣ����Ҷ� �׻� ���ڰ� �ʿ�, ȣ���Ҷ� �����ִ� ���� �̸����� (���´� �ȹ���) 
		if(i!=1) break; // ������ ö�ڶ� ���°� ��ö�ڶ� ������ 1�̴ϱ� �ٸ��� break.
		//�ߺ�Ȯ���ϰ� (�ߺ��Ǹ� ������� �ƴϸ� ����Ʈ�� ����.) -> 
		i=dupli(List, str);
		if(i!=1){ // �ߺ����°� 1�̴ϱ� 1�̾ƴ϶��� �ߺ��̶���
			System.out.println("�ߺ��� �ܾ��Դϴ�");
		}else {
			List.addLast(str); // 1�̸� = �ߺ��� ������ addlast // addlast�� linkedlist class�� �ְ�, 
			                   //linkedlist�� ������ list �� �ϱ�������Ƿ� list.addLast(str)�� ���.                   
		}
		// ���Է� ("�����ܾ��Է�")
		System.out.print("�����ܾ� �Է�:");
		str=scanner.nextLine(); // �����ܾ� �Է¹ޱ����ؼ� str���� ����
	} // �ٽ� ���ΰ��� ���ǰ˻� 
	System.out.print("*���*");
	List.printAllNodes(); // list class �ȿ��Լ����.
	}
//spell(linkedlist l, string s) <- ���⼭�� list str �� �ƴ϶� ���� �� ���������	
public static int spell (LinkedList l, String s){
	String list_s=l.trailer.getPrev().getString();	
	if(list_s.charAt(list_s.length()-1)==s.charAt(0)){
		return 1; // ������ ö�ڶ� ���°� ��ö�ڶ� ������ 1
	}
		return -1; //������ ö�ڶ� ���°� ��ö�ڶ� �ٸ��� -1
}
public static int dupli (LinkedList l, String s){
	Word temp=l.header; // header�� �ּ� //word���ִ°� �������ؼ� word �տ� �������
	temp=temp.getNext(); //temp �ϳ��� �̵� // i=i++�� �������� //�� �����
	while(temp!=l.trailer){
		if(temp.getString().equals(s)) return -1; //�ϳ��� ���鼭 �ߺ�������  -1����
		temp=temp.getNext(); //temp �ϳ��� �̵� // i=i++�� �������� //�� �����
	}
	return 1; //�ߺ� ������ 1����	
}
	
}
//���⼭ Nodeclass �̸� word 



>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
