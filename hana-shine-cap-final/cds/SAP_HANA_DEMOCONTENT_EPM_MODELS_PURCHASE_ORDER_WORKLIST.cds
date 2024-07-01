@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PURCHASE_ORDER_WORKLIST {
  key PURCHASEORDERID   : String(10)       @title: 'PURCHASEORDERID';
      PARTNERID         : String(10)       @title: 'PARTNERID';
      CURRENCY          : String(5)        @title: 'CURRENCY';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      TAXAMOUNT         : Decimal(15, 2)   @title: 'TAXAMOUNT';
      APPROVALDESC      : String(60)       @title: 'APPROVALDESC';
      CONFIRMDESC       : String(60)       @title: 'CONFIRMDESC';
      LIFECYCLEDESC     : String(60)       @title: 'LIFECYCLEDESC';
      ORDERINGDESC      : String(60)       @title: 'ORDERINGDESC';
  key PURCHASEORDERITEM : String(10)       @title: 'PURCHASEORDERITEM';
      PRODUCTID         : String(10)       @title: 'PRODUCTID';
      GROSSAMOUNT_1     : Decimal(15, 2)   @title: 'GROSSAMOUNT_1';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      DELIVERYDATE      : Date             @title: 'DELIVERYDATE';
      TYPECODE          : String(2)        @title: 'TYPECODE';
      CATEGORY          : hana.VARCHAR(40) @title: 'CATEGORY';
      PRICE             : Decimal(15, 2)   @title: 'PRICE';
      PRODUCTNAME       : String(1024)     @title: 'PRODUCTNAME';
      PRODUCTDESC       : String(1024)     @title: 'PRODUCTDESC';
      PRODUCTPICURL     : String(255)      @title: 'PRODUCTPICURL';
      COMPANYNAME       : String(80)       @title: 'COMPANYNAME';
      CITY              : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE        : String(10)       @title: 'POSTALCODE';
};
