package br.com.kelvinsantiago.calculos;

import java.text.DecimalFormat;
import java.util.Locale;

public class ImcCalc {
	
	private String nome;
	private String statusimc;
	private Double peso;
	private Double altura;
	private Double resultado;

	public void calcular() {

		resultado = 0.0;
		
		resultado = peso / (altura * altura);
				
	}
	
	public void validarimc(){
		
		if(resultado < 18.5){
            statusimc = "Olá "+nome+" você está magro! Seu indice IMC é = "+getResultadoFormatado();
        }
        else if(resultado>=18.5 && resultado<24.9){
        	statusimc = "Olá "+nome+" você está com o peso normal! Seu indice IMC é = "+getResultadoFormatado();
        }
        else if(resultado>=25 && resultado<29.9) {
        	statusimc = "Olá "+nome+" você está sobre peso! Seu indice IMC é = "+getResultadoFormatado();
        }
        else if(resultado>=30 && resultado<39.9) {
        	statusimc = "Olá "+nome+" você está com obesidade! Seu indice IMC é = "+getResultadoFormatado();
        }
        else if (resultado>40){
        	statusimc = "Olá "+nome+" você está com obesidade grave! Seu indice IMC é = "+getResultadoFormatado();
        }
		
	}
	
	public String getNome() {return nome;}

	public void setNome(String nome) {this.nome = nome;}

	public Double getPeso() {return peso;}

	public void setPeso(Double peso) {this.peso = peso;}

	public Double getAltura() {return altura;}

	public void setAltura(Double altura) {this.altura = altura;}

	public Double getResultado() {return resultado;}

	public void setResultado(Double resultado) {this.resultado = resultado;}
	
	public String getResultadoFormatado() {
		Locale.setDefault(Locale.US); 
		DecimalFormat df = new DecimalFormat("0.00");
		return df.format(resultado);
	}

	public String getStatusimc() {
		return statusimc;
	}

	public void setStatusimc(String statusimc) {
		this.statusimc = statusimc;
	}
	
	
	

}
