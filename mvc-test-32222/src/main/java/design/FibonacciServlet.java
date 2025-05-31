package design;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class FibonacciServlet
 */
@WebServlet("/FibonacciServlet")
public class FibonacciServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FibonacciServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	// HTTPのGETリクエストを処理するメソッド（Controllerの役割）
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Model：Fibonacciクラスのインスタンスを生成（ビジネスロジックを扱う）
	    Fibonacci fib = new Fibonacci();

	    // Viewからの入力を取得（ユーザーが入力した「number」パラメータを受け取る）
	    String yosou = request.getParameter("number");
	    // 入力された数値をint型に変換し、モデルにセット（Modelへのデータ設定）
	    fib.setN(Integer.parseInt(yosou));

	    // フィボナッチ数列を計算（Model内のロジックを実行）
	    fib.calcFibonacci();

	    // JSPファイルの振り分け用のディスパッチャを用意（Viewの選択）
	    RequestDispatcher dispatcher;

	    // 計算結果のフィボナッチ数が偶数かどうかで表示するビューを分ける（Controllerの判断）
	    if(fib.isEven()) {
	        dispatcher = request.getRequestDispatcher("even.jsp");
	    } else {
	        dispatcher = request.getRequestDispatcher("odd.jsp");
	    }

	    // Modelの結果をリクエストスコープに保存（Viewにデータを渡す）
	    request.setAttribute("fibonacci", fib);

	    // Viewに処理を委譲（結果表示のページへ遷移）
	    dispatcher.forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
