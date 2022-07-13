package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pttt;

@WebServlet("/ex2")
public class ex2Fire extends HttpServlet implements Runnable {
	private static final long serialVersionUID = 1L;

	public ex2Fire() {
		super();
	}

	public void run() {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> errorList = new ArrayList<>();
		Pttt po = new Pttt();

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String string_souce = request.getParameter("date");
		if (!isNotBlank(string_souce)) {
			errorList.add("誕生日が入力されていません");
		} else {
			Date birthday = strToDate(string_souce);
			if (birthday == null) {
				errorList.add("誕生日が不正です");
			}
			po.setDate(birthday);
		}
		String blood = request.getParameter("blood");
		String[] study = request.getParameterValues("study");
		String text = request.getParameter("text");
		if (!isNotBlank(text)) {
			errorList.add("備考が入力されていません");
		} else if (!isLength(text, 0, 100)) {
			errorList.add("備考は100文字以内にしてください");
		}
		po.setName(name);
		po.setGender(gender);
		po.setBlood(blood);
		po.setStudy(study);
		po.setText(text);
		request.setAttribute("yamizokusei", po);

		RequestDispatcher dispatcher ;
		if (errorList.size() > 0) {
			request.setAttribute("errors", errorList);
			dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/input.jsp");
		} else {
			dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/display.jsp");
		}
		dispatcher.forward(request, response);


	}

		private boolean isNotBlank(String value) {
			if (value == null || value.isBlank()) {
				return false;
			}
			return true;
		}
		private Date strToDate(String value) {
			try {
				return new SimpleDateFormat("yyyy-MM-dd").parse(value);
			} catch(ParseException e) {
				e.printStackTrace();
			}
			return null;
		}
		private boolean isLength(String value, int min, int max) {
			if (min <= value.length() && value.length() <= max) {
				return true;
			}
			return false;
		}

}
