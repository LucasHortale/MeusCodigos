package questao2;

import java.util.ArrayList;
import java.util.List;

public class Detran {
	public static List getVeiculosRoubados() {
		ArrayList x = new ArrayList();
		x.add(new Carro("MAN1245", "723LE", 1987));
		x.add(new Moto("LAM1233", "2324LE", 2019));
		return x;
	}
}
