package design;

public class Fibonacci {
	private int n;
	private int result;
	
	public Fibonacci() {
	}
	
	public void setN(int number) {
		n = number;
	}
	
	public int getN() {
		return n;
	}
	public int getResult() {
		return result;
	}
	
	public void calcFibonacci() {
		result = fib(n);
	}
	
	public boolean isEven() {
		if(result%2 == 0)
			return true;
		else
			return false;
	}
	
	private int fib(int x) {
		if(x >= 2)
			return fib(x-1)+fib(x-2);
		else
			return x;
	}

}
