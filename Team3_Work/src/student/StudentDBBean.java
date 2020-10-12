package student;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.StringTokenizer;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.MultipartConfigElement;
import javax.servlet.annotation.MultipartConfig;
import javax.sql.DataSource;

import attend.AttendBean;
import attend.View2Bean;
import schedule.ScheduleBean;
import scoreclass.ScoreClassBean;
import subject.SubjectBean;
import timetable.TimeTableBean;


public class StudentDBBean {
	private static StudentDBBean instance = new StudentDBBean();
	
	public static StudentDBBean getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception { //oracle과 연결 메소드
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public StudentBean getStudent(int id) {
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		StudentBean stu = null;
		String sql="select s.*, p.pro_name from student s join professor p on s.stu_pro=p.pro_id where s.stu_id=?";
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			
			
			if(rs.next()) {
				stu=new StudentBean();
				stu.setStu_id(rs.getInt("STU_ID"));
				stu.setStu_pwd(rs.getString("STU_PWD"));
				stu.setStu_name(rs.getString("STU_NAME"));
				stu.setStu_eng_name(rs.getString("STU_ENG_NAME"));
				stu.setStu_jumin(rs.getLong("STU_JUMIN"));
				stu.setStu_state(rs.getInt("STU_STATE"));
				stu.setStu_major(rs.getInt("STU_MAJOR"));
				stu.setStu_grade(rs.getInt("STU_GRADE"));
				stu.setStu_pro(rs.getInt("STU_PRO"));
				stu.setStu_tel(rs.getString("STU_TEL"));
				stu.setStu_emg_tel(rs.getString("STU_EMG_TEL"));
				stu.setStu_addr(rs.getString("STU_ADDR"));
				stu.setStu_email(rs.getString("STU_EMAIL"));
				stu.setPro_name(rs.getString("PRO_NAME"));
				stu.setStu_img(rs.getBlob("STU_IMG")); //이미지컬럼 추가완료
				
			
			}
			rs.close();
			pstmt.close();
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return stu;
		}
	
	//================학생들이 정보 수정할 때 sql 업데이트 메소드=================//
	public int updateStudent(StudentBean stu_b, File file, FileInputStream fis) {
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql = null;
		if(fis != null) {
		sql ="update student set stu_pwd=?,stu_tel=?,"
						+ "stu_addr=?,stu_email=?,stu_img=? where stu_id=?"; 
		}else {
		sql ="update student set stu_pwd=?,stu_tel=?,"
					+ "stu_addr=?,stu_email=? where stu_id=?"; 			
		}
		int re=-1;
		try {
			con=getConnection();
			pstmt = con.prepareStatement(sql);
			//updateOk.jsp로 부터 받은 수정 항목의 값을 데이터베이스에 저장
			pstmt.setString(1, stu_b.getStu_pwd()); 
			pstmt.setString(2, stu_b.getStu_tel()+stu_b.getNum2()+stu_b.getNum3()); 
			pstmt.setString(3, stu_b.getStu_addr()+" "+stu_b.getDetailAddr());
			pstmt.setString(4, stu_b.getStu_email()+"@"+stu_b.getMail2());
			if(fis != null) {
				pstmt.setBinaryStream(5, fis, (int)file.length()); 
				pstmt.setInt(6, stu_b.getStu_id());
			}else {
				pstmt.setInt(5, stu_b.getStu_id());
			}

			re = pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
			
			System.out.println("변경 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("변경 실패");
		}
		
		return re;
	}
	
	//================출석정보 가져오는 메소드=================//
	
	public ArrayList<Integer> getGrade(int stu_id) {
		Connection con=null;
		PreparedStatement ps = null;
		ResultSet rs=null;
	      ArrayList<Integer> grade = new ArrayList<Integer>();
	      try {
	    	 con=getConnection();
	         ps = con.prepareStatement("SELECT DISTINCT SC_GRADE FROM SCORECLASS WHERE SC_STU_ID = " + stu_id + " ORDER BY 1");
	         rs = ps.executeQuery();
	         while (rs.next()) {
	        	 grade.add(rs.getInt("SC_GRADE"));
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
					if(con != null) con.close();
				}catch(Exception e2) {
					e2.printStackTrace();
				}
			}
	         
	      return grade;
	   }
	
	
	public ArrayList<View2Bean> listView(int id, int grade, int semester){
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		View2Bean v2 = null;
		String sql="select * from atd2 where sc_grade=? and sc_semester=? and sc_stu_id=?"; //학년,학기별 출석 조회하기 위함
		ArrayList<View2Bean> viewlist = new ArrayList<View2Bean>();
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, grade);
			pstmt.setInt(2, semester);
			pstmt.setInt(3, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				v2=new View2Bean();
				v2.setSc_subj_code(rs.getInt(1));
				v2.setStu_id(rs.getInt(2));
				v2.setSc_grade(rs.getInt(3));
				v2.setSc_semester(rs.getInt(4));
				v2.setSubj_state(rs.getString(5));
				v2.setSubj_name(rs.getString(6));
				v2.setSubj_hakjum(rs.getInt(7));
				v2.setPro_name(rs.getString(8));
				
				viewlist.add(v2);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewlist;
	}
	
	//================출석정보 가져오는 메소드=================//
	
	public ArrayList<AttendBean> listAtd(int id, int grade, int semester,int subj_code){
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		AttendBean attend = null;
		String sql="select to_char(atd_date,'YYYY-MM-DD'),atd_state,atd_remark from attend "
				+ "where atd_stu_id=? and atd_grade=? and atd_semester=? and atd_subj_code=?";
		ArrayList<AttendBean> viewlist = new ArrayList<AttendBean>();
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, grade);
			pstmt.setInt(3, semester);
			pstmt.setInt(4, subj_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				attend=new AttendBean(rs.getDate(1), rs.getString(2), rs.getString(3)==null? "":rs.getString(3));
																	//atd_remark(비고)가 null이면 공란,아니면  데이터 가져옴
				viewlist.add(attend);
			}
			System.out.println(viewlist.size());
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewlist;
	}
	
	//================성적정보 가져오는 메소드=================//
	
	public ArrayList<Integer> getYear(int stu_id) {
		Connection con=null;
		PreparedStatement ps = null;
		ResultSet rs=null;
	      ArrayList<Integer> year = new ArrayList<Integer>();
	      try {
	    	 con=getConnection();
	         ps = con.prepareStatement("SELECT DISTINCT SC_YEAR FROM SCORECLASS WHERE SC_STU_ID = " + stu_id + " ORDER BY 1");
	         rs = ps.executeQuery();
	         while (rs.next()) {
	        	 year.add(rs.getInt("SC_YEAR"));
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
					if(con != null) con.close();
				}catch(Exception e2) {
					e2.printStackTrace();
				}
			}
	         
	      return year;
	   }
	
	public ArrayList<ScoreClassBean> getScore(int id, int year, int semester) {
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		ScoreClassBean sc = null;
		String sql=null;
		
		ArrayList<ScoreClassBean> scorelist = new ArrayList<ScoreClassBean>();
		try {
			con=getConnection();
			sql ="SELECT C.SC_YEAR, C.SC_GRADE, C.SC_SEMESTER, S.SUBJ_STATE, S.SUBJ_NAME, S.SUBJ_HAKJUM, C.SC_SCORE, C.SC_SCORE2 FROM SCORECLASS C join SUBJECT S"
																+ " ON C.SC_SUBJ_CODE=S.SUBJ_CODE WHERE SC_STU_ID=? AND SC_YEAR=? AND SC_SEMESTER=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, year);
			pstmt.setInt(3, semester);
			rs=pstmt.executeQuery();
			
			
			while(rs.next()) {
				sc=new ScoreClassBean();
				
				sc.setSc_year(rs.getInt(1));
				sc.setSc_grade(rs.getInt(2));
				sc.setSc_semester(rs.getInt(3));
				sc.setSubj_state(rs.getString(4));
				sc.setSubj_name(rs.getString(5));
				sc.setSubj_hakjum(rs.getInt(6));
				sc.setSc_score(rs.getDouble(7));
				sc.setSc_score2(rs.getString(8));
			
				scorelist.add(sc);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return scorelist;
		}
	//================시간표 가져오는 메소드=================//
		
	
	public ArrayList<TimeTableBean> timeScheduleView(int id){
		StudentBean s = getStudent(id);
		int grade = s.getStu_grade();
		int semester = 0;

		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH)+1;
	
		if(3 <= month && month <= 6) {
			semester = 1;
		}else if(9 <= month && month <= 12) {
			semester = 2;
		}else {
			return null;
		}

		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		TimeTableBean tbl = null;
		String sql=null; 
		ArrayList<TimeTableBean> viewlist = new ArrayList<TimeTableBean>();
		
		try {
			con=getConnection();
			sql="SELECT SUBJ_NAME,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2 FROM SUBJECT, SCORECLASS"
					+ " WHERE SC_SUBJ_CODE=SUBJ_CODE AND SC_STU_ID=? AND SC_GRADE=? AND SC_SEMESTER=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, grade);
			pstmt.setInt(3, semester);
			
		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				tbl =new TimeTableBean();
				tbl.setSubj_name(rs.getString(1));
				tbl.setSubj_room(rs.getString(2));
				
				 StringTokenizer tokenizer1 = new StringTokenizer(rs.getString(3), ",");
			      StringTokenizer tokenizer2 = null;
			      if(rs.getString("subj_day2") != null){
			         String subj_day2 = rs.getString(4);
			         tokenizer2 = new StringTokenizer(subj_day2, ",");
			      }
			      
			      tbl.setSubj_day1(tokenizer1.nextToken());
			      tbl.setSubj_stime1(Integer.parseInt(tokenizer1.nextToken()));
			      tbl.setSubj_etime1(Integer.parseInt(tokenizer1.nextToken()));
			      
			      String subj_day2 = "";
			      int subj_stime2 = 0;
			      int subj_etime2 = 0;
			      
			      if(tokenizer2 != null){
			         subj_day2 = tokenizer2.nextToken();
				     subj_stime2 = Integer.parseInt(tokenizer2.nextToken());
				     subj_etime2 = Integer.parseInt(tokenizer2.nextToken());
			      }
			      tbl.setSubj_day2(subj_day2);
				  tbl.setSubj_stime2(subj_stime2);
				  tbl.setSubj_etime2(subj_etime2);
				viewlist.add(tbl);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewlist;
	}
	//================학사일정 가져오는 메소드=================//
	public ArrayList<ScheduleBean> ScheduleView(int year){
		Connection con=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		ScheduleBean schedule = null;
		String sql=null; 
		ArrayList<ScheduleBean> viewlist = new ArrayList<ScheduleBean>();
		
		try {
			con=getConnection();
			sql="SELECT * FROM SCHEDULE WHERE SCHE_STARTYEAR=? AND SCHE_STARTMONTH =? ORDER BY SCHE_STARTMONTH, SCHE_STARTDAY";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, year);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				schedule =new ScheduleBean();
				schedule.setSche_content(rs.getString(2));
				schedule.setShce_startyear(rs.getInt(3));
				schedule.setShce_startmonth(rs.getInt(4));
				schedule.setShce_startday(rs.getInt(5));
				schedule.setShce_endyear(rs.getInt(6));
				schedule.setShce_endmonth(rs.getInt(7));
				schedule.setShce_endday(rs.getInt(8));
				schedule.setShce_holiday(rs.getInt(9));
				viewlist.add(schedule);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewlist;
	}	
}



























