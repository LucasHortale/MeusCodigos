package CaixaEletronico;

import java.util.Scanner;

public class GerenciarConta {
	public static void gerenciarconta(Conta l) {
		Scanner a = new Scanner(System.in);
		Conta c = new Conta(null, null, 0);
		int cod = -1;
		System.out.println(" *** SEJA BEM VINDO AO CAIXA ELETRONICO JAVA ***");
		System.out.println(
				"\nDigite 1 para realizar depósito:\nDigite 2 para consultar saldo:\nDigite 3 para realizar saque:\nDigite 4 para fazer um emprestimo:\nDigite 5 para consultar dívida:\nDigite 6 para pagar parcialmente ou totalmente a dívida:\nDigite 7 para ver o menu:\nDigite 8 para sair:");

		while (cod != 0) {
			System.out.println("\nQual operaçao voce deseja fazer? ");
			cod = a.nextInt();
			if (cod == 1) {
				System.out.println("Digite o valor do deposito: ");
				double b = a.nextDouble();
				c.depositar(b);

			} else if (cod == 2) {
				System.out.println("O seu saldo é de : " + c.getSaldo() + "0 reais.");

			} else if (cod == 3) {
				System.out.println("Digite o valor do saque: ");
				double f = a.nextDouble();
				try {
					c.sacar(f);
					// System.out.println("Liberando dinheiro");
				} catch (SemDinException e) {
					System.out.println("Voce quer um emprestimo?");
					System.out.println(e.getMessage());
				}

			} else if (cod == 4) {
				System.out.println("Digite o valor do emprestimo: ");
				double g = a.nextDouble();
				c.emprestimo(g);

			} else if (cod == 5) {
				System.out.println("A sua dívida é de: " + c.getDiv() + "0 reias.");

			} else if (cod == 6) {
				System.out.println("A sua dívida é de: " + c.getDiv() + "0 reias.");
				System.out.println("Digite o valor que deseja quitar da dívida: ");
				double q = a.nextDouble();
				c.quitar(q);

			} else if (cod == 7) {
				System.out.println(
						"\nDigite 1 para realizar depósito:\nDigite 2 para consultar saldo:\nDigite 3 para realizar saque:\nDigite 4 para fazer um emprestimo:\nDigite 5 para consultar dívida:\nDigite 6 para pagar parcialmente ou totalmente a dívida:\nDigite 7 para ver o menu:\nDigite 8 para sair:");

			} else if (cod == 8) {
				System.out.println("*** VOLTE SEMPRE *** ");
				cod = 0;
			}
		}
	}
}
