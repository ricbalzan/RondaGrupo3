package br.upf.ads.paoo.proj01.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.upf.ads.paoo.proj01.domain.Localizacao;
import br.upf.ads.paoo.proj01.domain.Ronda;
import br.upf.ads.paoo.proj01.jpa.JpaUtil;

/**
 * Servlet implementation class LocomocaoServlet
 */
@WebServlet("/Privada/Localizacao/LocalizacaoServlet")
public class LocalizacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocalizacaoServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		if (request.getParameter("gravar") != null) {
           gravar(request, response);
		} else if (request.getParameter("incluir") != null) {
			incluir(request, response);
		} else if (request.getParameter("alterar") != null) {
			alterar(request, response);
		} else if (request.getParameter("excluir") != null) {
			excluir(request, response);
		} else if (request.getParameter("cancelar") != null) {
			cancelar(request, response);
		}
		else { // default = consultar
			listar(request, response);
		}
		
	}

	
	private void cancelar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listar(request, response); 
	}

	private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("excluir"));
		EntityManager em = JpaUtil.getEntityManager();
		em.getTransaction().begin();
		em.remove(em.find(Localizacao.class, id)); // localiza o objeto pelo id e exclui do BD
		em.getTransaction().commit();		
		em.close();
		listar(request, response); 
	}

	private void alterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("alterar"));
		EntityManager em = JpaUtil.getEntityManager();
		Localizacao o = em.find(Localizacao.class, id);
		List<Ronda> rondas =em.createQuery("from Ronda").getResultList();
		em.close();
		request.setAttribute("o", o);
		request.setAttribute("rondas", rondas);
		request.getRequestDispatcher("LocalizacaoForm.jsp").forward(request, response);
	}

	private void incluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		List<Ronda> rondas = em.createQuery("from Localizacao").getResultList();
		em.close();
		request.setAttribute("rondas", rondas);
		request.getRequestDispatcher("LocalizacaoForm.jsp").forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		List<Localizacao> lista = em.createQuery("from Localizacao").getResultList();
		em.close();
		request.setAttribute("lista", lista);
		request.getRequestDispatcher("LocalizacaoList.jsp").forward(request, response);
	}

	private void gravar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			Localizacao o = inicializarObjeto(request, em);
			em.merge(o);
			em.getTransaction().commit();
			List<Localizacao> lista = em.createQuery("from Localizacao").getResultList();
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("LocalizacaoList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
        
	}

	private Localizacao inicializarObjeto(HttpServletRequest request) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Ronda ronda = em.find(Ronda.class, Integer.parseInt(request.getParameter("ronda")));
		Localizacao o = new Localizacao(
				request.getParameter("id").equals("") ? null : Integer.parseInt(request.getParameter("id")), 
				sdf.parse(request.getParameter("dataHora").replaceAll("T", " ")),
				Float.parseFloat(request.getParameter("lat")),
				Float.parseFloat(request.getParameter("lon")),
				ronda);
		
		return o;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
