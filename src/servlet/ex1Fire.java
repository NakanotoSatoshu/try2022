
package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1")

public class ex1Fire extends HttpServlet implements Runnable {
	private static final long serialVersionUID = 1L;
    public ex1Fire() {
        super();
    }
    public void run()  {
    }
    protected void doGet(HttpServletRequest request,
    	      HttpServletResponse response)
    	      throws ServletException, IOException {

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/input.jsp");
		dispatcher.forward(request, response);
	}
}
