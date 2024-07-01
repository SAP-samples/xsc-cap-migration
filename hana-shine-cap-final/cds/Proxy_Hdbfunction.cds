@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_FUNCTIONS_APPLY_DISCOUNT(im_price : Decimal(15, 2), im_discount : Decimal(15, 2)) {
  RESULT : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_FUNCTIONS_GET_EMPLOYEES_BY_NAME_FILTER(lastNameFilter : String(40)) {
  EMPLOYEEID   : String(10);
  NAME_FIRST   : String(40);
  NAME_LAST    : String(40);
  EMAILADDRESS : String(255);
  ADDRESSID    : String(10);
  CITY         : String(40);
  POSTALCODE   : String(10);
  STREET       : String(60);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_FUNCTIONS_SALES_ORDER_RANKING_AND_DISCOUNT(IP_FR_DTE : Date, IP_TO_DTE : Date, IP_REGION : String(5)) {
  COMPANY_NAME : String(80);
  REGION       : String(4);
  SALES        : Decimal(18, 2);
  ORDERS       : Integer64;
  SALES_RANK   : Integer64;
  ORDER_RANK   : Integer64;
  DISCOUNT     : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_FUNCTIONS_TAX_CALCULATION {
  PARTNERID   : String(10);
  COMPANYNAME : String(80);
  PRODUCTID   : String(10);
  TAX         : Decimal(15, 3)
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_TABLE_FUNCTION_PRODUCT_SALE_PRICE(PRODUCT_ID : String(10)) {
  PRODUCTID : String(10);
  CATEGORY  : String(40);
  PRICE     : Decimal(15, 2);
  SALEPRICE : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_TABLE_FUNCTION_SALES_ORDER_RANKING_AND_DISCOUNT_SQL(IP_FR_DTE : Date, IP_TO_DTE : Date, IP_REGION : String(4)) {
  ORDER_RANK   : Integer;
  SALES_RANK   : Integer;
  ORDERS       : Integer;
  SALES        : Decimal(15, 2);
  REGION       : hana.VARCHAR(50);
  COMPANY_NAME : String(80);
  DISCOUNT     : Decimal(3, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_TABLE_FUNCTION_SALESORDER_RANKING_SQL(IP_FR_DTE : Date, IP_TO_DTE : Date) {
  COMPANY_NAME : hana.VARCHAR(20);
  SALES        : hana.VARCHAR(20);
  ORDERS       : hana.VARCHAR(20);
  SALES_RANK   : hana.VARCHAR(20);
  ORDER_RANK   : hana.VARCHAR(20);
}

@cds.persistence.exists
@cds.persistence.udf
entity SAP_HANA_DEMOCONTENT_EPM_SERIESDATA_GENERATE_EXCHANGE_RATE_HISTORY {
  FCURR  : String(5);
  TCURR  : String(5);
  TS     : Timestamp;
  FACTOR : Decimal(9, 6)
}
