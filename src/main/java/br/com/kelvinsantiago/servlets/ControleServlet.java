package br.com.kelvinsantiago.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.kelvinsantiago.calculos.ImcCalc;

@WebServlet("/servletcontrole")
public class ControleServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		
		if (acao != null && acao.equals("calcular")) {
			
			ImcCalc imc = new ImcCalc();
			
			imc.setNome(request.getParameter("nome"));
			imc.setPeso(Double.parseDouble(request.getParameter("peso")));
			imc.setAltura(Double.parseDouble(request.getParameter("altura")));
			
			
			imc.calcular();
			imc.validarimc();
			
			request.setAttribute("resultado", imc.getStatusimc());
            

		}
		
		// Pedir para o JSP mostrar o resultado.
		request
			.getRequestDispatcher("index.jsp")
			.forward(request, response);
		
		
	}

}
