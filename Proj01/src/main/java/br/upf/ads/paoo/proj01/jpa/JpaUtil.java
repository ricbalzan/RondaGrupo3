package br.upf.ads.paoo.proj01.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil {
	
	static EntityManagerFactory emf = null;
	
	public static EntityManager getEntityManager() {
		if (emf == null) {
			try {
				emf = Persistence.createEntityManagerFactory("Proj01");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return emf.createEntityManager();
	}

}
