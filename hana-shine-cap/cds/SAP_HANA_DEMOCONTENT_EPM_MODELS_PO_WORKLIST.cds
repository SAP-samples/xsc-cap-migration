@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_WORKLIST {
  key PURCHASEORDERID   : String(10)       @title: 'PURCHASEORDERID';
      PARTNERID         : String(10)       @title: 'PARTNERID';
      CURRENCY          : String(5)        @title: 'CURRENCY';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      APPROVALDESC      : String(60)       @title: 'APPROVALDESC';
      CONFIRMATIONDESC  : String(60)       @title: 'CONFIRMATIONDESC';
      LIFECYCLEDESC     : String(60)       @title: 'LIFECYCLEDESC';
      ORDERINGDESC      : String(60)       @title: 'ORDERINGDESC';
  key PURCHASEORDERITEM : String(10)       @title: 'PURCHASEORDERITEM';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      PRODUCTID         : String(10)       @title: 'PRODUCTID';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      DELIVERYDATE      : Date             @title: 'DELIVERYDATE';
      GROSSAMOUNT_1     : Decimal(15, 2)   @title: 'GROSSAMOUNT_1';
      TYPECODE          : String(2)        @title: 'TYPECODE';
      CATEGORY          : hana.VARCHAR(40) @title: 'CATEGORY';
      PRODUCTDESC       : String(1024)     @title: 'PRODUCTDESC';
      PRODUCTNAME       : String(1024)     @title: 'PRODUCTNAME';
      PRICE             : Decimal(15, 2)   @title: 'PRICE';
      PRODUCTPICURL     : String(255)      @title: 'PRODUCTPICURL';
      COMPANYNAME       : String(80)       @title: 'COMPANYNAME';
      CITY              : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE        : String(10)       @title: 'POSTALCODE';
};
