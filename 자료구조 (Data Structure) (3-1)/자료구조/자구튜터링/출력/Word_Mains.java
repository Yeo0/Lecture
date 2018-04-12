<<<<<<< HEAD
package Word_Main

import java.util.Scanner; //scanner쓰려면 import해야해

import org.w3c.dom.stylesheets.LinkStyle;

public class Mains {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	String str = new String(); // 받아서 쓰기위해 new 로 지정 (new로 해야 가져다 쓸수있음)
	Scanner scanner = new Scanner(System.in); //scanner 쓰는방법
	System.out.print("첫 단어 입력:");

	str=scanner.nextLine(); //다음단어 입력
	LinkedList List = new LinkedList(); // 밑에서 List 로 linkedlist 불러오기위해
	int i =0;
	int j =0; // 첫항조건 땜에
	while(true){
		// exit단어 확인 -> 
		if(str.equals("exit")) break; // break : while 문 밖으로 빠져나감 -> 다시 while문 처음부터 돌음
		//처음값 null이라서 그다음으로 넘어가게하기위해
		if(j==0){
			List.addLast(str);
			System.out.print("다음단어 입력:"); //println하면 한줄밑에서 입력받아
			str= scanner.nextLine();
			j=1;
			continue; // continue: 조건문안에서 다음코드(아래에있는 i=spell 어쩌고 다 무시하고, 다시 while문 시작)
		}
		//철자비교 (안되면 종료) -> 
		i=spell(List, str); //함수호출부할땐 항상 인자가 필요, 호출할때 위에있는 변수 이름만씀 (형태는 안밝힘) 
		if(i!=1) break; // 마지막 철자랑 들어온거 앞철자랑 같으면 1이니까 다르면 break.
		//중복확인하고 (중복되면 문구출력 아니면 리스트에 넣음.) -> 
		i=dupli(List, str);
		if(i!=1){ // 중복없는게 1이니까 1이아니란건 중복이란거
			System.out.println("중복된 단어입니다");
		}else {
			List.addLast(str); // 1이면 = 중복이 없으면 addlast // addlast는 linkedlist class에 있고, 
			                   //linkedlist를 위에서 list 라 하기로했으므로 list.addLast(str)로 사용.                   
		}
		// 재입력 ("다음단어입력")
		System.out.print("다음단어 입력:");
		str=scanner.nextLine(); // 다음단어 입력받기위해서 str새로 지정
	} // 다시 위로가서 조건검사 
	System.out.print("*기록*");
	List.printAllNodes(); // list class 안에함수사용.
	}
//spell(linkedlist l, string s) <- 여기서는 list str 이 아니라 형태 다 밝혀줘야함	
public static int spell (LinkedList l, String s){
	String list_s=l.trailer.getPrev().getString();	
	if(list_s.charAt(list_s.length()-1)==s.charAt(0)){
		return 1; // 마지막 철자랑 들어온거 앞철자랑 같으면 1
	}
		return -1; //마지막 철자랑 들어온거 앞철자랑 다르면 -1
}
public static int dupli (LinkedList l, String s){
	Word temp=l.header; // header의 주소 //word에있는거 쓰기위해서 word 앞에 밝혀줘야
	temp=temp.getNext(); //temp 하나씩 이동 // i=i++와 같은원리 //꼭 써줘야
	while(temp!=l.trailer){
		if(temp.getString().equals(s)) return -1; //하나씩 돌면서 중복있으면  -1리턴
		temp=temp.getNext(); //temp 하나씩 이동 // i=i++와 같은원리 //꼭 써줘야
	}
	return 1; //중복 없으면 1리턴	
}
	
}
//여기서 Nodeclass 이름 word 



=======
package Word_Main

import java.util.Scanner; //scanner쓰려면 import해야해

import org.w3c.dom.stylesheets.LinkStyle;

public class Mains {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	String str = new String(); // 받아서 쓰기위해 new 로 지정 (new로 해야 가져다 쓸수있음)
	Scanner scanner = new Scanner(System.in); //scanner 쓰는방법
	System.out.print("첫 단어 입력:");

	str=scanner.nextLine(); //다음단어 입력
	LinkedList List = new LinkedList(); // 밑에서 List 로 linkedlist 불러오기위해
	int i =0;
	int j =0; // 첫항조건 땜에
	while(true){
		// exit단어 확인 -> 
		if(str.equals("exit")) break; // break : while 문 밖으로 빠져나감 -> 다시 while문 처음부터 돌음
		//처음값 null이라서 그다음으로 넘어가게하기위해
		if(j==0){
			List.addLast(str);
			System.out.print("다음단어 입력:"); //println하면 한줄밑에서 입력받아
			str= scanner.nextLine();
			j=1;
			continue; // continue: 조건문안에서 다음코드(아래에있는 i=spell 어쩌고 다 무시하고, 다시 while문 시작)
		}
		//철자비교 (안되면 종료) -> 
		i=spell(List, str); //함수호출부할땐 항상 인자가 필요, 호출할때 위에있는 변수 이름만씀 (형태는 안밝힘) 
		if(i!=1) break; // 마지막 철자랑 들어온거 앞철자랑 같으면 1이니까 다르면 break.
		//중복확인하고 (중복되면 문구출력 아니면 리스트에 넣음.) -> 
		i=dupli(List, str);
		if(i!=1){ // 중복없는게 1이니까 1이아니란건 중복이란거
			System.out.println("중복된 단어입니다");
		}else {
			List.addLast(str); // 1이면 = 중복이 없으면 addlast // addlast는 linkedlist class에 있고, 
			                   //linkedlist를 위에서 list 라 하기로했으므로 list.addLast(str)로 사용.                   
		}
		// 재입력 ("다음단어입력")
		System.out.print("다음단어 입력:");
		str=scanner.nextLine(); // 다음단어 입력받기위해서 str새로 지정
	} // 다시 위로가서 조건검사 
	System.out.print("*기록*");
	List.printAllNodes(); // list class 안에함수사용.
	}
//spell(linkedlist l, string s) <- 여기서는 list str 이 아니라 형태 다 밝혀줘야함	
public static int spell (LinkedList l, String s){
	String list_s=l.trailer.getPrev().getString();	
	if(list_s.charAt(list_s.length()-1)==s.charAt(0)){
		return 1; // 마지막 철자랑 들어온거 앞철자랑 같으면 1
	}
		return -1; //마지막 철자랑 들어온거 앞철자랑 다르면 -1
}
public static int dupli (LinkedList l, String s){
	Word temp=l.header; // header의 주소 //word에있는거 쓰기위해서 word 앞에 밝혀줘야
	temp=temp.getNext(); //temp 하나씩 이동 // i=i++와 같은원리 //꼭 써줘야
	while(temp!=l.trailer){
		if(temp.getString().equals(s)) return -1; //하나씩 돌면서 중복있으면  -1리턴
		temp=temp.getNext(); //temp 하나씩 이동 // i=i++와 같은원리 //꼭 써줘야
	}
	return 1; //중복 없으면 1리턴	
}
	
}
//여기서 Nodeclass 이름 word 



>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
