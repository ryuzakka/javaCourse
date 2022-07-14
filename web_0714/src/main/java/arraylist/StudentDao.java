package arraylist;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class StudentDao {
	
	public void getStudent(HttpServletRequest request) {
		// 테이블에서 학생명단을 가져온다.
		// (DB연결 없이) 3명의 레코드를 읽어왔다 가정한 후
		// 1명의 레코드를 하나의 DTO에 저장
		// Dto를 ArrayList에 하나씩 저장
		
		// 1. 34 홍길동 010-1234-5678
		// 2. 23 슈퍼맨 010-4444-5555
		// 3. 19 스파이더맨 010-7777-8888
		
		// DTO를 생성하여 한 명의 정보를 저장
		
		ArrayList<StudentDto> list = new ArrayList<StudentDto>();
		
		StudentDto sdto = new StudentDto();
		
		sdto.setId(1);
		sdto.setAge(34);
		sdto.setName("홍길동");
		sdto.setPhone("010-1234-5678");
		list.add(sdto);
		
		sdto = new StudentDto();
		sdto.setId(2);
		sdto.setAge(23);
		sdto.setName("슈퍼맨");
		sdto.setPhone("010-4444-5555");
		list.add(sdto);
		
		sdto = new StudentDto();
		sdto.setId(3);
		sdto.setAge(19);
		sdto.setName("스파이더맨");
		sdto.setPhone("010-7777-8888");
		list.add(sdto);
		
		//return list;
		request.setAttribute("list", list);
	}
	
}
