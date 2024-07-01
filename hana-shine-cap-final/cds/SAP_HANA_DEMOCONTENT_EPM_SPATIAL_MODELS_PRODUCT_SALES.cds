@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_SPATIAL_MODELS_PRODUCT_SALES {
      SALESORDERID      : String(10)       @title: 'SALESORDERID';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      CURRENCY          : String(5)        @title: 'CURRENCY';
      SALESORDERITEM    : String(10)       @title: 'SALESORDERITEM';
  key PRODUCT_PRODUCTID : String(10)       @title: 'PRODUCT_PRODUCTID';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      HISTORY_CREATEDAT : Date             @title: 'HISTORY_CREATEDAT';
      COMPANYNAME       : String(80)       @title: 'COMPANYNAME';
      LEGALFORM         : String(10)       @title: 'LEGALFORM';
      CITY              : hana.VARCHAR(40) @title: 'CITY';
      LATITUDE          : Double           @title: 'LATITUDE';
      LONGITUDE         : Double           @title: 'LONGITUDE';
      POSTALCODE        : String(10)       @title: 'POSTALCODE';
      STREET            : String(60)       @title: 'STREET';
      BUILDING          : String(10)       @title: 'BUILDING';
      COUNTRY           : String(3)        @title: 'COUNTRY';
      REGION            : String(4)        @title: 'REGION';
  key YEAR_OF_SALE      : hana.VARCHAR(4)  @title: 'YEAR_OF_SALE';
      GROSSAMOUNT_1     : Decimal(15, 2)   @title: 'GROSSAMOUNT_1';
};
