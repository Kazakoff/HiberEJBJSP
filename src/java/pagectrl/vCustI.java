/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pagectrl;

import java.io.IOException;
import javax.ejb.Local;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author administrator
 */
@Local
public interface vCustI {
    public void getPage(HttpServletResponse response) throws ServletException, IOException;
    
}
