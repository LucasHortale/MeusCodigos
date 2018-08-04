package questao2;

import java.util.List;
import java.util.Scanner;

public class Principal {
	public static void main(String[] args) {
		Scanner c = new Scanner(System.in);
		System.out.println("Digite a placa: ");
		String placa = c.nextLine();
		List listaRoubados = Detran.getVeiculosRoubados();
	}
}
