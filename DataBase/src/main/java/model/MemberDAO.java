package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


//오라클 데이터 베이스에 연결하고 SELECT, INSERT, UPDATE, DELETE
//작업을 실행해주는 클래스입니다.

public class MemberDAO {
	String id = "scott";
	String pass = "tiger";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl11";
	// 전변으로 저장
	Connection con; // 데이터베이스에 접근할수 있도록 설정
	PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs; // 데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체.
	// 데이터베이스에 접근할수 있도록 도와주는 메소드를 만들자

public void getCon() {
		
		//커넥션 풀을 이용하여 데이터베이스에 접근
		try {
			//외부에서 데이터를 읽어드려야 하기에
			Context initctx = new InitialContext();
			//톰캣 서버에 정보를 담아 놓은 곳으로 이동
			Context envctx = (Context) initctx.lookup("java:comp/env");
			//데이터 소스 객체를 선언
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			//데이터 소스를 기준으로 커넥션을 연결해 주시오
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		/*
		 * try { Class.forName("oracle.jdbc.driver.OracleDriver"); // 2.해당 데이터 베이스에 접속을
		 * 한다. con = DriverManager.getConnection(url, id, pass);
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 */

	}

	// 회원을 추가하는 메소드
	public void insertMember(MemberBean mbean) {

		try {
			getCon(); // 연결하기
			// 3. 3번쨰 쿼리를 준비하여 쿼리를 사용하도록 설정
			String sql = "insert into member1 values (?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			// ?에 맞게 데이터를 매핑할것임
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			// 4.오라클에서 쿼리를 실행하시오.

			pstmt.executeUpdate(); // insert update delete
			// 5.자원반납
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 모든 회원의 정보를 리턴해주는 메소드 호출

	public Vector<MemberBean> allSelectMember() {

		Vector<MemberBean> v = new Vector<>();

		
		// 무조건 데이터 베이스는 예외처리를 해야한다.
		try {
			getCon(); // 연결하기
			
			String sql = "select * from member1";
			pstmt = con.prepareStatement(sql);
			//바로 실행을 시켜서 결과 리턴
			rs = pstmt.executeQuery();
			//반복문을 사용해서 rs에 저장된 데이터를 추출해놔야 한다.
			while(rs.next()) { //저장된 데이터 만큼까지 반복문을 돌리겠다는 뜻.
				MemberBean bean = new MemberBean(); // 컬럼으로 나뉘어진 데이터를 빈클래스에 저장.
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				//패키징된 멤버빈 클래스를 백터에 저장해야함
				
				v.add(bean); // 0번지부터 순서대로 저장이 됨
				
			}
			con.close();
		} catch (Exception e) {

		e.printStackTrace();
		}
		//다 저장된 백터를 리턴한다.
		return v;
	}
	
	//한 사람의 대한 정보를 리턴하는 메소드를 작성
	
	public MemberBean oneSelectMember(String id) {
		//한사람에 대한 정보만 리턴하기에 빈클래스 객체 생성
		MemberBean bean = new MemberBean();
		
		try {
			//커넥션연결
			getCon();
			String sql = "SELECT * FROM MEMBER1 WHERE id=? ";
			pstmt = con.prepareStatement(sql);
			//?값을 매핑
			pstmt.setString(1, id);
			//쿼리실행
			rs= pstmt.executeQuery();
			
			if(rs.next()) { //레코드가 있다면
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				//패키징된 멤버빈 클래스를 백터에 저장해야함
				
			}
			//자원 반납
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
		//리턴된 baen의 값이 멤버인포로 넘어갈 것이다.
	}
	
	//한 회원의 패스워드를 리턴하는 메소드 작성.
	public String getPass(String id) {
		//스트링 변수 선언
		String pass = "";
		try {
			getCon();
			//쿼리 준비하기
			String sql = "select pass1 from member1 where id=?";
			pstmt = con.prepareStatement(sql);
			//?값을 매핑
			pstmt.setString(1, id);
			//쿼리실행
			rs= pstmt.executeQuery();
			if(rs.next()) {
				pass = rs.getString(1); // 패스워드값이 저장된 컬럼인덱스
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pass;
	}
	//한 회원의 정보를 수정하는 메서드
	public void updateMember(MemberBean bean) {
		getCon();
		try {
			//쿼리 준비
			String sql = "update member1 set email=?,tel=? where id=?";
			//쿼리실행 객체 선언
			pstmt = con.prepareStatement(sql);
			//?에 값을 맵핑
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getTel());
			pstmt.setString(3, bean.getId());
			//쿼리 실행
			pstmt.executeUpdate();	//sql에서 셀렉트를 쓸때는 executeQuery(), insert, update, delete를 쓸때는 executeUpdate()
			//자원 반납
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//한 회원을 삭제하는 메소드 작성하기.
	//삭제만 하는거지 값을 반환할 필요가 없기 때문에 void인것이고.
	//id를 받아와서 찾아야 하니까 파라미터에 스트링 id를 넣어준것이다.
	public void deleteMember(String id) {
		getCon();
		
		try {
			//쿼리 준비
			String sql = "delete from member1 where id=?";
			//쿼리 실행
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			//쿼리 실행
			pstmt.executeUpdate();	//sql에서 셀렉트를 쓸때는 executeQuery(), insert, update, delete를 쓸때는 executeUpdate()
			//자원 반납
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
}