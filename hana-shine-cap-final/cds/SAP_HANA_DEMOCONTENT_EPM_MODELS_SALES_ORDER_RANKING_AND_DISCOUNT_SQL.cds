@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_RANKING_AND_DISCOUNT_SQL(IP_FR_DTE : Date, IP_TO_DTE : Date, IP_REGION : String(4)) {
  key REGION       : hana.VARCHAR(50) @title: 'REGION';
  key COMPANY_NAME : String(80)       @title: 'COMPANY_NAME';
      ORDER_RANK   : Integer          @title: 'ORDER_RANK';
      SALES_RANK   : Integer          @title: 'SALES_RANK';
      ORDERS       : Integer          @title: 'ORDERS';
      SALES        : Decimal(15, 2)   @title: 'SALES';
      DISCOUNT     : Decimal(3, 2)    @title: 'DISCOUNT';
};
