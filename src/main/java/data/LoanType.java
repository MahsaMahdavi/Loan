package data;

/**
 * Created by mahsa on 04/09/2016.
 */
public class LoanType {
    private int id;
    private int interestRate;
    private String loanTypeName;
    private GrantCondition grantCondition;

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

    public GrantCondition getGrantCondition() {
        return grantCondition;
    }

    public void setGrantCondition(GrantCondition grantCondition) {
        this.grantCondition = grantCondition;
    }
}
