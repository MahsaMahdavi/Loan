package data;

/**
 * Created by mahsa on 04/09/2016.
 */
public class GrantCondition {
    private String name;
    private String minimumContractPeriod;
    private String maximumContractPeriod;
    private String minimumContractCost;
    private String maximumContractCost;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMinimumContractPeriod() {
        return minimumContractPeriod;
    }

    public void setMinimumContractPeriod(String minimumContractPeriod) {
        this.minimumContractPeriod = minimumContractPeriod;
    }

    public String getMaximumContractPeriod() {
        return maximumContractPeriod;
    }

    public void setMaximumContractPeriod(String maximumContractPeriod) {
        this.maximumContractPeriod = maximumContractPeriod;
    }

    public String getMinimumContractCost() {
        return minimumContractCost;
    }

    public void setMinimumContractCost(String minimumContractCost) {
        this.minimumContractCost = minimumContractCost;
    }

    public String getMaximumContractCost() {
        return maximumContractCost;
    }

    public void setMaximumContractCost(String maximumContractCost) {
        this.maximumContractCost = maximumContractCost;
    }
}
