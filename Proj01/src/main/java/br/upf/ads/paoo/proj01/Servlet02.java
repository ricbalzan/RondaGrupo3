package br.upf.ads.paoo.proj01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/Servlet02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html"); // setamos que a resposta será no formato HTML
	     PrintWriter out = response.getWriter(); // objeto para dar print nos HTML de resposta
		 
	     // Renderizar um pequeno formulário
	     String ret = "<form method='post'>";
	     ret += "Digite seu nome: <input type='text' name='nome'> <br>";
	     ret += "Digite sua idade: <input type='number' name='idade'> <br>";
	     ret += "<button type='submit'>Enviar</button>";
		 ret += "</form>";
         out.append(ret);		
         out.append("<br>");
         out.append("<br>");
         
         // Pegar os dados enviados pela requisição
         String nome = request.getParameter("nome");
         String idade = request.getParameter("idade");
         if (nome != null) {
        	 out.append("Nome digitado: "+nome);
        	 out.append("<br>");
        	 out.append("Idade digitada: "+idade);
        	 out.append("<br>");
        	 // vamos calcular quantos dias viveu aproximadamente
        	 int viveu = Integer.parseInt(idade) * 365;
        	 out.append("Dias que você viveu aproximadamente: "+viveu);
        	 
         }
         
         
         
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
