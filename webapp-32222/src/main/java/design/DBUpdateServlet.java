package design;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class DBUpdateServlet
 */
@WebServlet("/DBUpdateServlet")
public class DBUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher;

		//  ユーザ情報を処理する JavaBean をつくる
		studentBean sb = new studentBean();
		
		// 文字コードを UTF-8 として扱う
		request.setCharacterEncoding("UTF-8");
		
		 // フォームの入力データを文字列としてサーブレットで受け取る
		 String id = request.getParameter("id");
		 String name = request.getParameter("name");
		 String gpa = request.getParameter("gpa");
		
		 // セッターメソッドで、ブラウザから得たデータを JavaBean インスタンスにセットする
		 //   （引数にあたえると同時に型変換も行っている）
		 sb.setId( Integer.parseInt(id) );
		 sb.setName(name);
		 sb.setGpa( Float.parseFloat(gpa) );

		 //  データベースへの INSERT 処理の実行
		 if ( sb.insertRecord() ) {
		     dispatcher = request.getRequestDispatcher("studentDB-success.jsp");
		 } else {
		     dispatcher = request.getRequestDispatcher("studentDB-failed.jsp");
		 }
		 
		 // studentBean のインスタンスを request に詰めて
		 // 次に遷移する JSP に渡す
		 // JSP側 ではキーワード "studentBean" をつかってインスタンスを取り出す
		 //  二重引用符の中の単語はクラス名である必要はなく、自分で自由に決めてよい
		 request.setAttribute("studentBean", sb);

		 // 最後に JSP へ処理を遷移させる
		 dispatcher.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
