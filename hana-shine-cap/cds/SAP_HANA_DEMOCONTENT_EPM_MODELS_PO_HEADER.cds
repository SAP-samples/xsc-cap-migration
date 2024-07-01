@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_HEADER {
  key PURCHASEORDERID              : String(10)     @title: 'PURCHASEORDERID';
  key HISTORY_CREATEDBY_EMPLOYEEID : String(10)     @title: 'HISTORY_CREATEDBY_EMPLOYEEID';
  key HISTORY_CHANGEDBY_EMPLOYEEID : String(10)     @title: 'HISTORY_CHANGEDBY_EMPLOYEEID';
  key NOTEID                       : String(10)     @title: 'NOTEID';
  key PARTNER_PARTNERID            : String(10)     @title: 'PARTNER_PARTNERID';
  key CURRENCY                     : String(5)      @title: 'CURRENCY';
  key LIFECYCLESTATUS              : String(1)      @title: 'LIFECYCLESTATUS';
  key APPROVALSTATUS               : String(1)      @title: 'APPROVALSTATUS';
  key CONFIRMSTATUS                : String(1)      @title: 'CONFIRMSTATUS';
  key ORDERINGSTATUS               : String(1)      @title: 'ORDERINGSTATUS';
  key INVOICINGSTATUS              : String(1)      @title: 'INVOICINGSTATUS';
  key APPROVALSTATUSDESC           : String(60)     @title: 'APPROVALSTATUSDESC';
  key CONFIRMSTATUSDESC            : String(60)     @title: 'CONFIRMSTATUSDESC';
  key LIFECYCLESTATUSDESC          : String(60)     @title: 'LIFECYCLESTATUSDESC';
  key ORDERINGSTATUSDESC           : String(60)     @title: 'ORDERINGSTATUSDESC';
      HISTORY_CREATEDAT            : Date           @title: 'HISTORY_CREATEDAT';
      HISTORY_CHANGEDAT            : Date           @title: 'HISTORY_CHANGEDAT';
      GROSSAMOUNT                  : Decimal(15, 2) @title: 'GROSSAMOUNT';
      NETAMOUNT                    : Decimal(15, 2) @title: 'NETAMOUNT';
      TAXAMOUNT                    : Decimal(15, 2) @title: 'TAXAMOUNT';
};
