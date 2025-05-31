package design;
import java.util.Random;

public class Fortune {
	private static Random random = new Random();
	
	public String getFortune() {
		int n = random.nextInt(10);
		if (n > 4) {
			return "good";
		} else {
			return "bad";
		}
	}
}
