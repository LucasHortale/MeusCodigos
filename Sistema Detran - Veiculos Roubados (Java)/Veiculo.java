package questao2;

public abstract class Veiculo {
	private String placa;
	private String id;
	private int ano;

	public Veiculo(String placa, String id, int ano) {
		this.placa = placa;
		this.id = id;
		this.ano = ano;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

}
