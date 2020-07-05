package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;

public class DaoCity {
	// 饼图显示死亡率视图，需要大于1
	@SuppressWarnings("rawtypes")
	public List listDeadchance(String province) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("SELECT `year`,dead_chance FROM measles WHERE areaname='"
							+ province + "' AND (dead_chance+0)");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1]);

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
	public List listSeakchance(String province) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("SELECT `year`,seak_chance FROM measles WHERE areaname='"
							+ province + "' AND (seak_chance+0)");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1]);

			}
			tx.commit();// 事务提交在底层是所有sql语句执行完后统一提交，取消自动提交

		} catch (Exception e) {
			tx.rollback();
		} finally {
			HibernateUtil.close(session);
		}
		return list;
	}

	// 直方图显示
	@SuppressWarnings("rawtypes")
	public List listSeakAndDeadchance(String province) {

		Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		List list = null;
		try {
			Query query = session
					.createSQLQuery("SELECT measles.year, measles.dead_chance,measles.seak_chance FROM measles WHERE areaname='"
							+ province + "'");
			list = (List) query.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] obj = (Object[]) list.get(i);
				System.out.println(obj[0] + "," + obj[1] + "," + obj[2]);

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
	 * public static void main(String[] args) { DaoCity dC = new DaoCity();
	 * dC.listSeakAndDeadchance("北京市"); }
	 */

}
