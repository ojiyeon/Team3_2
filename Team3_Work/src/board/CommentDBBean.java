package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myUtil.HanConv;

public class CommentDBBean {

	private static CommentDBBean instance = new CommentDBBean(); // 객체 생성

	public static CommentDBBean getInstance() { // getInstance()호출 시 CommentDBBean을 참조하는 객체 리턴
		return instance;
	}

	public Connection getConnection() throws Exception { // db 연결하는 메소드

		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		Connection conn = ds.getConnection();
		return conn;
	}
	

	// 댓글 입력
	public int insertComment(CommentBean comment) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		int num = 0;
		int re = -1;
	

		try {
			con = getConnection();
			
			sql = "select max(cmt_num) from comments where cmt_index=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, comment.getCmt_index());

			rs = pstmt.executeQuery();

			if (rs.next()) { // null이 아니면
				num = rs.getInt(1) + 1; // 여기서 (1)은 컬럼 인덱스

			} else {
				num = 1;
				rs.getInt(2);
			}
			pstmt.close();
			rs.close();


			// 위에서 실행한 쿼리 중, 댓글번호 가장 큰 값에 +1 더한 값을 포함하여 모든 입력 값 저장
			sql = "insert into comments (cmt_index, cmt_num, cmt_writer, cmt_content, cmt_date, cmt_stu_id) values (?, ?, ?, ?, ?, ?)";

			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, comment.getCmt_index());
			pstmt.setInt(2, num);
			pstmt.setString(3, comment.getCmt_writer());
			pstmt.setString(4, comment.getCmt_content());
			pstmt.setTimestamp(5, comment.getCmt_date());
			pstmt.setInt(6, comment.getCmt_stu_id());

			re = pstmt.executeUpdate();

			pstmt.close();

			System.out.println(re);
			System.out.println("추가 성공");

		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return re;
	}

	// 게시물 번호에 해당하는 댓글 출력
	public ArrayList<CommentBean> getListComment(int cmt_index) { // 제네릭은 파일파라미터 라고도 함

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			ArrayList<CommentBean> commentList = new ArrayList<CommentBean>();

			String sql = "";

			try {
				con = getConnection();


				sql = "select * from (select a.*, to_char(cmt_date,'YYYY-MM-DD hh24:mi') date2 from comments a order by cmt_num) where cmt_index=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, cmt_index);
				
			
				rs = pstmt.executeQuery();

				while (rs.next()) {

					CommentBean comment = new CommentBean();
					
					comment.setCmt_index(rs.getInt(1));
					comment.setCmt_num(rs.getInt(2));
					comment.setCmt_writer(rs.getString(3));
					comment.setCmt_content(rs.getString(4));
					comment.setCmt_date(rs.getTimestamp(5));
					comment.setCmt_stu_id(rs.getInt(6));
					comment.setDate2(rs.getString(7));
					
					commentList.add(comment);
					
					
				}

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("조회 성공");
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return commentList;
		}
	
	// 댓글 개수 출력
	public int getCountComment(int cmt_index) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int re = -1;
		String sql = "";
		
		try {
			con = getConnection();
			sql = "select count(*) from comments where cmt_index=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cmt_index);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				re = rs.getInt(1);
				
			}

		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return re;
	}
	
	
	// 댓글 글 삭제
		public int deleteComment(int cmt_index, int cmt_num) {
			Connection con = null;
			PreparedStatement pstmt = null; // 쿼리사용
			ResultSet rs = null; // 결과값

			String sql = "";
			
			int re = -1;

			try {
				con = getConnection();
				
			
				sql = "delete comments where cmt_index=? and cmt_num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, cmt_index);
				pstmt.setInt(2, cmt_num);
					
				re = pstmt.executeUpdate();
				

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("삭제 실패");
				
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return re;

		}
		


		
}
