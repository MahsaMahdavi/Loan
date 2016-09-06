package business;

import data.LoanType;
import data.LoanTypeCRUD;

/**
 * Created by mahsa on 04/09/2016.
 */
public class LoanTypeBusiness {

    public static void save(LoanType loanType){
        LoanTypeCRUD.save(loanType);
    }
}

