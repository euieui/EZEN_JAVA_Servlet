package com.ezen.upload;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MutiFileUploadServlet
 */
@WebServlet("/upload2.do")
public class MutiFileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MutiFileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); // 이거틀리니 본문 한글ㅇ 안나옴
		PrintWriter out =response.getWriter();
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath("fileUpload");
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, uploadFilePath, 5*1024*1024,"UTF-8", new DefaultFileRenamePolicy()
			);
			// 하나의 폼안에 있던 <input type="file"> 의 파일들은 MultipartRequest 생성시 한번에 업로드 합니다.
			
			// 다만 전달된 파라미터의 file 은 multi.getFileNames(); 로 전달 받고,
			// Enumeration 으로 하나하나 꺼내서 사용합니다.
			Enumeration files = multi.getFileNames(); // 파일들의 객체를 추출
			while(files.hasMoreElements()) { // 파일 요소의 갯수 만큼 반복실행
				String file =(String) files.nextElement(); // 각각 파일객체 추출
				String file_name = multi.getFilesystemName(file); // 업로드된 파일이름 추출
				//DefaultFileRenamePolicy 에 의해 구분된 실제 파일 이름 추출
				String ori_file_name = multi.getOriginalFileName(file);
				out.print("<br> 업로드된 파일명 : " + file_name);
				out.print("<br> 원본 파일명 : " + ori_file_name);
				out.print("<hr>");
				
			}
			
		}catch (Exception e){
			System.out.print("파일 업로드 실패 : " + e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
