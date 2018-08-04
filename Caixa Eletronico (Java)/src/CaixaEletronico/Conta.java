package CaixaEletronico;

public class Conta {
	private double saldo = 0;
	private double emp = 0;
	private double div = 0;
	private String nome;
	private String senha;
	
	public Conta(String Nome, String senha, double saldo) {
		this.saldo = saldo;
		this.nome = nome;
		this.senha = senha;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public double getEmp() {
		return emp;
	}

	public void setEmp(double emp) {
		this.emp = emp;
	}

	public double getDiv() {
		return div;
	}

	public void setDiv(double div) {
		this.div = div;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public void depositar(double d) {
		saldo += d;
	}
	
	public void emprestimo(double d) {
		div += d;
		saldo +=d;
	}
	public void quitar(double d) {
		div -=d;
		saldo -=d;
	}
	public void sacar(double d) throws SemDinException {
		if (d > saldo) {
			System.out.println("Sem saldo suficiente");
			throw new SemDinException("Saldo = " + saldo + "0 reais.\nTentativa de saque = " + d + "0 reais.");
		} else {
			saldo -= d;
			System.out.println("Liberando Dinheiro");
		}
	}
}
