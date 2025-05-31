package design;
import java.util.Random;

public class Guess {
		private int yosou, seikai;
		private static Random random = new Random();
		public Guess() {
			seikai = random.nextInt(10);
		}
		public void setYosou(int n) {
			yosou = n;
		}
		public int getYosou() {
			return yosou;
		}
		public int getSeikai() {
			return seikai;
		}
		public boolean getResult() {
			if( seikai == yosou) {
				return true;
			} else {
				return false;
			}
		}
}
