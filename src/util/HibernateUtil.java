package util;
import org.hibernate.cfg.Configuration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HibernateUtil {          
   private static SessionFactory sessionFactory;
      static{
    	  try {
			sessionFactory=new Configuration().configure().buildSessionFactory();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
      }
   public static Session openSession(){
	   Session session=sessionFactory.openSession();
	   return session;
   }
   public static void close(Session session){
	   if(null!=session){
		   session.close();
	   }
   }
}
