/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;


import entity.Spetsialnosti;
import hiber.HibernateUtil;
import java.util.List;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.enterprise.context.SessionScoped;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author kazakoff
 */
@Stateless
public class CustServ implements ICustServLocal {
    
    @Override
    public List<Spetsialnosti> getSpec(){
        
        SessionFactory sf =  HibernateUtil.getSessionFactory();
        Session s = sf.openSession();
        List <Spetsialnosti> q = s.createQuery("from Spetsialnosti s").list();
        s.close();
        return q;
    }

    
    
}
