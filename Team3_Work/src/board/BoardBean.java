package board;

import java.sql.Timestamp;

public class BoardBean {
	
	private int comm_index;
	private int comm_num;
	private int comm_groupn;
	private Timestamp comm_date;
	private String comm_title;
	private String comm_writer;
	private String comm_content;
	private int comm_hits;
	private String date2;
	private int comm_stu_id;
	private int comm_ref = 0; // �� �׷� ��ȣ �÷�
	private int comm_step = 0; // �� ��ġ
	private int comm_level = 0; // �亯 ����
	private String comm_originFileName;
	private String comm_systemFileName;
	
	public static int pageSize = 10; // �� �������� ��µ� �Խù� ����
	public static int pagecount = 1; // ������ ����
	public static int pageNUM = 1; // ���� ������
	
	// ����¡ ó��
	public static String pageNumber(int comm_groupn, int limit) {
		String str = "";
		int temp = (pageNUM - 1) % limit;
		int startPage = pageNUM - temp;

		if (comm_groupn == 1) {
			if ((startPage - limit) > 0) {
				str += "<a href='comm_Freeboard.jsp?pageNUM=" + (startPage - 1) + "'>[����]</a>&nbsp;&nbsp;";
			}
			for (int i = startPage; i < (startPage + limit); i++) {
				if (i == pageNUM) {
					str += "[" + i + "]&nbsp;&nbsp;";
				} else {
					str += "<a href='comm_Freeboard.jsp?pageNUM=" + i + "'>[" + i + "]</a>&nbsp;&nbsp;";
				}
				if (i >= pagecount)
					break;
			}
			if ((startPage + limit) <= pagecount) {
				str += "<a href='comm_Freeboard.jsp?pageNUM=" + (startPage + limit) + "'>[����]</a>&nbsp;&nbsp;";
			}
		}else if (comm_groupn == 2 || comm_groupn == 3) {
			if ((startPage - limit) > 0) {
				str += "<a href='comm_Q_And_A.jsp?pageNUM=" + (startPage - 1) + "'>[����]</a>&nbsp;&nbsp;";
			}
			for (int i = startPage; i < (startPage + limit); i++) {
				if (i == pageNUM) {
					str += "[" + i + "]&nbsp;&nbsp;";
				} else {
					str += "<a href='comm_Q_And_A.jsp?pageNUM=" + i + "'>[" + i + "]</a>&nbsp;&nbsp;";
				}
				if (i >= pagecount)
					break;
			}
			if ((startPage + limit) <= pagecount) {
				str += "<a href='comm_Q_And_A.jsp?pageNUM=" + (startPage + limit) + "'>[����]</a>&nbsp;&nbsp;";
			}
		}else if (comm_groupn == 4) {
			if ((startPage - limit) > 0) {
				str += "<a href='stu_Notice.jsp?pageNUM=" + (startPage - 1) + "'>[����]</a>&nbsp;&nbsp;";
			}
			for (int i = startPage; i < (startPage + limit); i++) {
				if (i == pageNUM) {
					str += "[" + i + "]&nbsp;&nbsp;";
				} else {
					str += "<a href='stu_Notice.jsp?pageNUM=" + i + "'>[" + i + "]</a>&nbsp;&nbsp;";
				}
				if (i >= pagecount)
					break;
			}
			if ((startPage + limit) <= pagecount) {
				str += "<a href='stu_Notice.jsp?pageNUM=" + (startPage + limit) + "'>[����]</a>&nbsp;&nbsp;";
			}
		}
		return str;
	}

	
	public BoardBean() {
		super();
	}
	
	public int getComm_index() {
		return comm_index;
	}

	public void setComm_index(int comm_index) {
		this.comm_index = comm_index;
	}

	public int getComm_num() {
		return comm_num;
	}
	public void setComm_num(int comm_num) {
		this.comm_num = comm_num;
	}
	public int getComm_groupn() {
		return comm_groupn;
	}
	public void setComm_groupn(int comm_groupn) {
		this.comm_groupn = comm_groupn;
	}
	public Timestamp getComm_date() {
		return comm_date;
	}
	public void setComm_date(Timestamp comm_date) {
		this.comm_date = comm_date;
	}
	public String getComm_title() {
		return comm_title;
	}
	public void setComm_title(String comm_title) {
		this.comm_title = comm_title;
	}
	public String getComm_writer() {
		return comm_writer;
	}
	public void setComm_writer(String comm_writer) {
		this.comm_writer = comm_writer;
	}
	public String getComm_content() {
		return comm_content;
	}
	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}
	public int getComm_hits() {
		return comm_hits;
	}
	public void setComm_hits(int comm_hits) {
		this.comm_hits = comm_hits;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public int getComm_stu_id() {
		return comm_stu_id;
	}

	public void setComm_stu_id(int comm_stu_id) {
		this.comm_stu_id = comm_stu_id;
	}
	public int getComm_ref() {
		return comm_ref;
	}
	public void setComm_ref(int comm_ref) {
		this.comm_ref = comm_ref;
	}
	public int getComm_step() {
		return comm_step;
	}
	public void setComm_step(int comm_step) {
		this.comm_step = comm_step;
	}
	public int getComm_level() {
		return comm_level;
	}
	public void setComm_level(int comm_level) {
		this.comm_level = comm_level;
	}

	public String getComm_originFileName() {
		return comm_originFileName;
	}
	public void setComm_originFileName(String comm_originFileName) {
		this.comm_originFileName = comm_originFileName;
	}
	public String getComm_systemFileName() {
		return comm_systemFileName;
	}
	public void setComm_systemFileName(String comm_systemFileName) {
		this.comm_systemFileName = comm_systemFileName;
	}
	
	
	

}
