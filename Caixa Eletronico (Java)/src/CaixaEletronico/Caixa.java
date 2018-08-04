package CaixaEletronico;

import java.util.ArrayList;
import java.util.Scanner;

public class Caixa {
	public static void main(String[] args) {
		ArrayList contas = new ArrayList();
		Scanner a = new Scanner(System.in);
		System.out.println(" *** SEJA BEM VINDO AO CAIXA ELETRONICO JAVA ***");
		System.out.println(
				"\nDigite 1 para criar uma nova conta: \nDigite 2 para entrar na sua conta:\nDigite 3 para cancelar.");
		int cod2 = 0;
		while (cod2 != 4) {
			System.out.println("\nQual operaçao voce deseja fazer? ");
			cod2 = a.nextInt();
			if (cod2 == 1) {
				System.out.println("Digite seu nome: ");
				String nome = a.next();
				System.out.println("Digite uma senha: ");
				String senha = a.next();
				contas.add(new Conta(nome, senha, 0));
				System.out.println("Conta criada");
				
			} else if (cod2 == 2) {
				System.out.println("Digite seu nome: ");
				String nome2 = a.next();
				System.out.println("Digite a sua senha: ");
				String senha2 = a.next();
				if (contas.contains(nome2) && contas.contains(senha2)) {
					Conta c = new Conta(null, null, 0);
					GerenciarConta.gerenciarconta(c);
				}else {
					System.out.println("Conta nao existe!");
				}

			} else if (cod2 == 3) {
				System.out.println("*** VOLTE SEMPRE *** ");
				cod2 = 4;
			}
		}

	}
}
