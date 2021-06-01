package br.upf.ads.paoo.proj01.controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.upf.ads.paoo.proj01.domain.Usuario;
import br.upf.ads.paoo.proj01.jpa.JpaUtil;

/**
 * Servlet implementation class AtividadeServlet
 */
@WebServlet("/Privada/Usuario/AtividadeServlet")
public class AtividadeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AtividadeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
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
		} else {
			listar(request, response);
		}

	}

	private void cancelar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listar(request, response);

	}

	private void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("excluir"));
		EntityManager em = JpaUtil.getEntityManager();
		em.getTransaction().begin();
		em.remove(em.find(Usuario.class, id)); // localiza o objeto pelo id e exclui do BD
		em.getTransaction().commit();
		em.close();
		listar(request, response);
	}

	private void alterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("alterar"));
		EntityManager em = JpaUtil.getEntityManager();
		Usuario o = em.find(Usuario.class, id);
		em.close();
		request.setAttribute("o", o); // repassamos o objeto para a pessoa form inicializar os dados
		request.getRequestDispatcher("UsuarioForm.jsp").forward(request, response);

	}

	private void incluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("UsuarioForm.jsp").forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		List<Usuario> lista = em.createQuery("from Usuario").getResultList();
		em.close();
		request.getSession().setAttribute("lista", lista);
		request.getRequestDispatcher("UsuarioList.jsp").forward(request, response);
	}

	private void gravar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario o = inicializarObjeto(request);
		EntityManager em = JpaUtil.getEntityManager();
		em.getTransaction().begin();
		em.merge(o);
		em.getTransaction().commit();
		List<Usuario> lista = em.createQuery("from Usuario").getResultList();
		em.close();
		request.getSession().setAttribute("lista", lista);
		request.getRequestDispatcher("UsuarioList.jsp").forward(request, response);
	}

	private Usuario inicializarObjeto(HttpServletRequest request) {
		Usuario o = new Usuario(null, request.getParameter("nome"),
				request.getParameter("email"), request.getParameter("senha"));
		return o;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
