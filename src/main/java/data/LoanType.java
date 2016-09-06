package data;

import java.util.ArrayList;
import java.util.Set;

/**
 * Created by mahsa on 04/09/2016.
 */
public class LoanType {
    private int loanTypeId;
    private int interestRate;
    private String loanTypeName;
    private Set<GrantCondition> grantCondition;

    public LoanType() {
    }

    public LoanType(String loanTypeName, int interestRate, Set<GrantCondition> grantConditions) {
        this.loanTypeName = loanTypeName;
        this.interestRate = interestRate;
        this.grantCondition = grantConditions;
    }

    public int getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(int interestRate) {
        this.interestRate = interestRate;
    }

    public String getLoanTypeName() {
        return loanTypeName;
    }

    public void setLoanTypeName(String loanTypeName) {
        this.loanTypeName = loanTypeName;
    }
    
    public Set<GrantCondition> getGrantCondition() {
        return grantCondition;
    }

    public void setGrantCondition(Set<GrantCondition> grantCondition) {
        this.grantCondition = grantCondition;
    }

    public int getLoanTypeId() {
        return loanTypeId;
    }

    public void setLoanTypeId(int loanTypeId) {
        this.loanTypeId = loanTypeId;
    }
}
