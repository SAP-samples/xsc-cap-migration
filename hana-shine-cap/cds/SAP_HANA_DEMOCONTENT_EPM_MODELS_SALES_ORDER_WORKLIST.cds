@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_WORKLIST {
  key SALESORDERID    : String(10)       @title: 'SALESORDERID';
      PARTNERID       : String(10)       @title: 'PARTNERID';
      LIFECYCLESTATUS : String(1)        @title: 'LIFECYCLESTATUS';
      CURRENCY        : String(5)        @title: 'CURRENCY';
      GROSSAMOUNT     : Decimal(15, 2)   @title: 'GROSSAMOUNT';
  key SALESORDERITEM  : String(10)       @title: 'SALESORDERITEM';
      PRODUCTID       : String(10)       @title: 'PRODUCTID';
      QUANTITY        : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT    : String(3)        @title: 'QUANTITYUNIT';
      TYPECODE        : String(2)        @title: 'TYPECODE';
      CATEGORY        : hana.VARCHAR(40) @title: 'CATEGORY';
      PRODUCTNAME     : String(1024)     @title: 'PRODUCTNAME';
      PRODUCTDESC     : String(1024)     @title: 'PRODUCTDESC';
      CITY            : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE      : String(10)       @title: 'POSTALCODE';
      COMPANYNAME     : String(80)       @title: 'COMPANYNAME';
};
