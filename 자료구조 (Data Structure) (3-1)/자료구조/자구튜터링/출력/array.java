<<<<<<< HEAD
	
	private int[] arr = new int [128]; //128칸짜리 array 생성 
	
	for (int i=0; i<arr.length; i++){
		arr[i]=0; // 혹은 arr[i]=new arr();
	} // array 초기화
	
	
	for (int i=0; i<arr.length; i++){
		arr[i]=x[i]; //x에 있는 값들을 다 복사해서 넣을때 
		
		/* 
		 * if x가 list 라면 x<- node라고 했을때
		 for문 시작을 list. header.getMext()
		 a[i]=x;
		 x=x.next()
		 이렇게 해줘야 array 복사
=======
	
	private int[] arr = new int [128]; //128칸짜리 array 생성 
	
	for (int i=0; i<arr.length; i++){
		arr[i]=0; // 혹은 arr[i]=new arr();
	} // array 초기화
	
	
	for (int i=0; i<arr.length; i++){
		arr[i]=x[i]; //x에 있는 값들을 다 복사해서 넣을때 
		
		/* 
		 * if x가 list 라면 x<- node라고 했을때
		 for문 시작을 list. header.getMext()
		 a[i]=x;
		 x=x.next()
		 이렇게 해줘야 array 복사
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
		 */ 