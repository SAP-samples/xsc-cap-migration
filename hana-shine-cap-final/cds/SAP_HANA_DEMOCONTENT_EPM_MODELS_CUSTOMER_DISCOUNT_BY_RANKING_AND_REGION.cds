@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_CUSTOMER_DISCOUNT_BY_RANKING_AND_REGION(IP_AMER : hana.VARCHAR(50), IP_EMEA : hana.VARCHAR(50), IP_AFR : hana.VARCHAR(50), IP_APJ : hana.VARCHAR(50)) {
  key REGION       : hana.VARCHAR(50) @title: 'REGION';
  key COMPANY_NAME : String(80)       @title: 'COMPANY_NAME';
  key DISCOUNT     : Decimal(3, 2)    @title: 'DISCOUNT';
      SALES_AMER   : Decimal(15, 2)   @title: 'SALES_AMER';
      SALES_EMEA   : Decimal(15, 2)   @title: 'SALES_EMEA';
      SALES_AFR    : Decimal(15, 2)   @title: 'SALES_AFR';
      SALES_APJ    : Decimal(15, 2)   @title: 'SALES_APJ';
};
