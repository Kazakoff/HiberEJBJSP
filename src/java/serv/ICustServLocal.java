/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import entity.Spetsialnosti;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author administrator
 */
@Local
public interface ICustServLocal {
    public List<Spetsialnosti> getSpec();
}
