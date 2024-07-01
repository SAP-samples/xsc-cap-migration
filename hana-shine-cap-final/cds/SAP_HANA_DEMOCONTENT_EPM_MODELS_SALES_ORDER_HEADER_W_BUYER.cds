@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_HEADER_W_BUYER {
  key BILLINGSTATUS                : String(1)        @title: 'BILLINGSTATUS';
      CURRENCY                     : String(5)        @title: 'CURRENCY';
      DELIVERYSTATUS               : String(1)        @title: 'DELIVERYSTATUS';
      GROSSAMOUNT                  : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      HISTORY_CHANGEDAT            : Date             @title: 'HISTORY_CHANGEDAT';
      HISTORY_CHANGEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CHANGEDBY_EMPLOYEEID';
      HISTORY_CREATEDAT            : Date             @title: 'HISTORY_CREATEDAT';
      HISTORY_CREATEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CREATEDBY_EMPLOYEEID';
      LIFECYCLESTATUS              : String(1)        @title: 'LIFECYCLESTATUS';
      NETAMOUNT                    : Decimal(15, 2)   @title: 'NETAMOUNT';
      NOTEID                       : String(10)       @title: 'NOTEID';
      PARTNER_PARTNERID            : String(10)       @title: 'PARTNER_PARTNERID';
      SALESORDERID                 : String(10)       @title: 'SALESORDERID';
      TAXAMOUNT                    : Decimal(15, 2)   @title: 'TAXAMOUNT';
      BUILDING                     : String(10)       @title: 'BUILDING';
      CITY                         : hana.VARCHAR(40) @title: 'CITY';
      COMPANYNAME                  : String(80)       @title: 'COMPANYNAME';
      COUNTRY                      : String(3)        @title: 'COUNTRY';
      EMAILADDRESS                 : String(255)      @title: 'EMAILADDRESS';
      LEGALFORM                    : String(10)       @title: 'LEGALFORM';
      PARTNERID                    : String(10)       @title: 'PARTNERID';
      PARTNERROLE                  : String(3)        @title: 'PARTNERROLE';
      POSTALCODE                   : String(10)       @title: 'POSTALCODE';
      REGION                       : String(4)        @title: 'REGION';
      STREET                       : String(60)       @title: 'STREET';
};
