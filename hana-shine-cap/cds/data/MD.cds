namespace sap.hana.democontent.epm.data;

using sap.hana.democontent.epm.data.EPM as EPM from './EPM';
using sap.hana.democontent.epm.data.Util as Util from './Util';

context MD {


  type HistT {
    CREATEDBY : Association to Employees;
    CREATEDAT : EPM.SDate;
    CHANGEDBY : Association to Employees;
    CHANGEDAT : EPM.SDate;
  };


  type NameT {
    FIRST    : EPM.SString;
    MIDDLE   : EPM.SString;
    LAST     : EPM.SString;
    INITIALS : EPM.BusinessKey;
  };

  type SexT : String(1);

  entity Addresses {
    key ADDRESSID   : EPM.BusinessKey;
        CITY        : EPM.SString;
        POSTALCODE  : EPM.BusinessKey;
        STREET      : EPM.MString;
        BUILDING    : EPM.BusinessKey;
        COUNTRY     : String(3);
        REGION      : String(4);
        ADDRESSTYPE : String(2);
        VALIDITY    : EPM.ValidityT;
        LATITUDE    : Double;
        LONGITUDE   : Double;
        POINT       : hana.ST_POINT;
  };

  entity BusinessPartner {
    key PARTNERID    : EPM.BusinessKey;
        PARTNERROLE  : String(3); //Business Partner Role
        EMAILADDRESS : EPM.LString;
        PHONENUMBER  : EPM.PhoneT;
        FAXNUMBER    : EPM.PhoneT null;
        WEBADDRESS   : EPM.VLString;
        ADDRESSES    : Association to Addresses null;
        COMPANYNAME  : String(80);
        LEGALFORM    : EPM.BusinessKey;
        HISTORY      : HistT;
        CURRENCY     : EPM.CurrencyT;
  };

  entity Employees {
    key EMPLOYEEID     : EPM.BusinessKey;
        NAME           : NameT null;
        SEX            : SexT;
        LANGUAGE       : EPM.ABAPLanguage;
        PHONENUMBER    : EPM.PhoneT null;
        EMAILADDRESS   : EPM.LString;
        LOGINNAME      : String(12);
        ADDRESSES      : Association to Addresses null;
        VALIDITY       : EPM.ValidityT;
        CURRENCY       : EPM.CurrencyT;
        SALARYAMOUNT   : EPM.AmountT;
        ACCOUNTNUMBER  : EPM.BusinessKey;
        BANKID         : EPM.BusinessKey;
        BANKNAME       : EPM.LString;
        EMPLOYEEPICURL : EPM.LString;
  };

  entity Products {
    key PRODUCTID     : EPM.BusinessKey;
        TYPECODE      : String(2);
        CATEGORY      : EPM.SString;
        HISTORY       : HistT;
        NAMEID        : EPM.BusinessKey;
        DESCID        : EPM.BusinessKey;
        SUPPLIER      : Association to MD.BusinessPartner;
        TAXTARIFFCODE : Integer;
        QUANTITYUNIT  : EPM.UnitT;
        WEIGHTMEASURE : EPM.QuantityT;
        WEIGHTUNIT    : EPM.UnitT;
        CURRENCY      : EPM.CurrencyT;
        PRICE         : EPM.AmountT;
        PRODUCTPICURL : EPM.LString null;
        WIDTH         : EPM.QuantityT;
        DEPTH         : EPM.QuantityT;
        HEIGHT        : EPM.QuantityT;
        DIMENSIONUNIT : EPM.UnitT;

  };

  entity productLog {
    key PRODUCTID : String(10);
    key LOGID     : Integer;
    key DATETIME  : DateTime;
    key USERNAME  : String(20);
        LOGTEXT   : String(500);
  };

  define view BuyerView as
    select from MD.BusinessPartner {
      PARTNERID                   as ![Id],
      EMAILADDRESS                as ![EmailAddress],
      COMPANYNAME                 as ![CompanyName],
      ADDRESSES.CITY              as ![City],
      ADDRESSES.POSTALCODE        as ![PostalCode],
      ADDRESSES.STREET            as ![Street],
      ADDRESSES.BUILDING          as ![Building],
      ADDRESSES.COUNTRY           as ![Country],
      ADDRESSES.REGION            as ![Region],
      HISTORY.CREATEDBY.LOGINNAME as ![CreatedBy]
    }
    where
      PARTNERROLE = '01';

  define view SupplierView as
    select from MD.BusinessPartner {
      PARTNERID                   as ![Id],
      EMAILADDRESS                as ![EmailAddress],
      COMPANYNAME                 as ![CompanyName],
      ADDRESSES.CITY              as ![City],
      ADDRESSES.POSTALCODE        as ![PostalCode],
      ADDRESSES.STREET            as ![Street],
      ADDRESSES.BUILDING          as ![Building],
      ADDRESSES.COUNTRY           as ![Country],
      ADDRESSES.REGION            as ![Region],
      HISTORY.CREATEDBY.LOGINNAME as ![CreatedBy]
    }
    where
      PARTNERROLE = '02';


  define view ProductView as
    select from MD.Products {
      PRODUCTID                     as ![Product_Id],
      NAMEID,
      DESCID,
      CATEGORY                      as ![Product_Category],
      CURRENCY                      as ![Product_Currency],
      PRICE                         as ![Product_Price],
      TYPECODE                      as ![Product_TypeCode],
      WEIGHTMEASURE                 as ![Product_WeightMeasure],
      WEIGHTUNIT                    as ![Product_WeightUnit],
      SUPPLIER.PARTNERID            as ![Supplier_Id],
      SUPPLIER.COMPANYNAME          as ![Supplier_CompanyName],
      SUPPLIER.ADDRESSES.CITY       as ![Supplier_City],
      SUPPLIER.ADDRESSES.POSTALCODE as ![Supplier_PostalCode],
      SUPPLIER.ADDRESSES.STREET     as ![Supplier_Street],
      SUPPLIER.ADDRESSES.BUILDING   as ![Supplier_Building],
      SUPPLIER.ADDRESSES.COUNTRY    as ![Supplier_Country]
    };

  @Search.searchable: true
  define view texts as
    select from Util.Texts as B {
      B.TEXTID,
      B.LANGUAGE,
      B.ISOLANGUAGE,
      @Search.defaultSearchElement: true B.TEXT
    };

  @Search.searchable: true
  define view productTexts as
    select from Products as A
    mixin {
      T : Association[1] to texts
            on A.NAMEID = T.TEXTID;
    }
    into {
      /*@EnterpriseSearch.key : true*/
      A.PRODUCTID,
      /*@EnterpriseSearch.usageMode: [ #AUTO_FACET ]*/
      @Search.defaultSearchElement: true A.CATEGORY,
      /*@EnterpriseSearch.highlighted : {enabled : true}*/
      @Search.defaultSearchElement: true T.TEXT
    };
};
