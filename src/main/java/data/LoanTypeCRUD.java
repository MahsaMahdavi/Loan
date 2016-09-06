package data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Created by mahsa on 04/09/2016.
 */
public class LoanTypeCRUD {

    public static void save(LoanType loanType) {

        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");

        SessionFactory factory = cfg.buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
       // session.persist(loanType.getGrantCondition());
        session.persist(loanType);
        t.commit();
        session.close();
        System.out.println("successfully saved");
    }
}
