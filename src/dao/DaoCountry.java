package dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;

public class DaoCountry {
	@SuppressWarnings("rawtypes")
	public List daoCountryGdp() {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("select c.`year`,c.GDP,c.MHI,c.DCP,n.dead_chance,n.seak_chance from country c , (select m.`year`,m.dead_chance,m.seak_chance from measles m where m.areaname='全国')  as n where c.`year`=n.`year`");
			list = (List) query.list();
			System.out.println(list.size());
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1]  + "," + obj[2]  + "," + obj[3]+"," + obj[4]+"," + obj[5]);

			}
			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

/*	public static void main(String[] args) {
		DaoCountry dC = new DaoCountry();
		dC.daoCountryGdp();
	}*/

}
