/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pagectrl;

import entity.Spetsialnosti;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import serv.ICustServLocal;

/**
 *
 * @author kazakoff
 */
 @Stateless
//@Stateful
public class vCust implements vCustI {

  
   @Inject
   ICustServLocal custServ;  
 
   private  List<Spetsialnosti> lst;

    public ICustServLocal getCustServ() {
        return custServ;
    }
    
    public List<Spetsialnosti> getSpec() {
		System.out.println("ok");
		return custServ.getSpec();
    }
        
    public void setCustServ(ICustServLocal custServ) {
        this.custServ = custServ;
    }

    public List<Spetsialnosti> getLst() {
        return lst;
    }

        
    private void loadLst() {
        lst = custServ.getSpec();
    }
    
public void getPage(HttpServletResponse response) throws ServletException, IOException {
    PrintWriter out = response.getWriter();
    out.println("Список");
    
          
    /*   SessionFactory sf =  HibernateUtil.getSessionFactory();
        Session s = sf.openSession();
        List <Spetsialnosti> q = s.createQuery("from Spetsialnosti s").list();
        s.close();
    */
    
      out.println("<ul>"); 
      
      List<Spetsialnosti> lst  = custServ.getSpec();
              for (Spetsialnosti c : lst)
     {
         out.println("<li>"); 
         out.println(c.getNazvanie());
         out.println("</li>");
     } 
   out.println("</ul>");     
      
}
public String getP(){

    
    return "<p> kljhgjhgjh </p>";
}
}
