package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;

public class DaoYear {
	@SuppressWarnings("rawtypes")
	public List daoYearDeadchance(String year) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			/*
			 * Query query = session .createSQLQuery(
			 * "select c.province,c.lng,c.lat,n.pm_25 from address c , (select a.areaname as areaname,a.seak_sum as seak from measles a where a.year = '1950' ) as n where c.province=n.areaname "
			 * ); list= (List) query.list();
			 */
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.dead_chance from address c , (select m.areaname,m.dead_chance from measles m where m.year = '"
							+ year + "')  as n where c.province=n.areaname");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1] + "," + obj[2] + ","
						+ obj[3]);

			}

			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	public List<?> daoYearDeadchanceTop(String year) {
		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List<?> list = null;
		try {
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.dead_chance from address c , (select m.areaname,m.dead_chance from measles m where m.year = '"
							+ year
							+ "')  as n where c.province=n.areaname order by n.dead_chance+0 desc limit 5");
			list = (List<?>) query.list();
			/*
			 * for(int i=0;i<list.size();i++){ Object[]
			 * obj=(Object[])list.get(i);
			 * System.out.println(obj[0]+","+obj[1]+","+obj[2]+","+obj[3]);
			 * 
			 * }
			 */

			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	public List<?> daoYearDeadchanceMin(String year) {
		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List<?> list = null;
		try {
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.dead_chance from address c , (select m.areaname,m.dead_chance from measles m where m.year = '"
							+ year
							+ "')  as n where c.province=n.areaname order by n.dead_chance+0 limit 5");
			list = (List<?>) query.list();
			/*
			 * for(int i=0;i<list.size();i++){ Object[]
			 * obj=(Object[])list.get(i);
			 * System.out.println(obj[0]+","+obj[1]+","+obj[2]+","+obj[3]);
			 * 
			 * }
			 */

			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	@SuppressWarnings("rawtypes")
	public List daoYearSeakchance(String year) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.seak_chance from address c , (select m.areaname,m.seak_chance from measles m where m.year = '"
							+ year + "')  as n where c.province=n.areaname");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1] + "," + obj[2] + ","
						+ obj[3]);

			}
			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	@SuppressWarnings("rawtypes")
	public List daoYearSeakchanceTop(String year) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.seak_chance from address c , (select m.areaname,m.seak_chance from measles m where m.year = '"
							+ year
							+ "')  as n where c.province=n.areaname order by n.seak_chance+0 desc limit 5");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1] + "," + obj[2] + ","
						+ obj[3]);

			}
			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	@SuppressWarnings("rawtypes")
	public List daoYearSeakchanceMin(String year) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("select c.city,c.lng,c.lat,n.seak_chance from address c , (select m.areaname,m.seak_chance from measles m where m.year = '"
							+ year
							+ "')  as n where c.province=n.areaname order by n.seak_chance+0 limit 5");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1] + "," + obj[2] + ","
						+ obj[3]);

			}
			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	/*
	 * public static void main(String[] args) { DaoCitySeekSum ds = new
	 * DaoCitySeekSum(); ds.listAllSeakchanceTop("1958"); }
	 */

}
