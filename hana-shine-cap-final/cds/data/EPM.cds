namespace sap.hana.democontent.epm.data;

context EPM {

  type BusinessKey  : String(10);
  //SP09 requirement - HANA Primitive datatype
  type SString      : hana.VARCHAR(40);
  type MString      : String(60);
  type LString      : String(255);
  type VLString     : String(1024);
  type SDate        : Date;
  type PhoneT       : String(30);
  type CurrencyT    : String(5);
  type ABAPLanguage : String(1);
  type ISOLanguageT : String(2);
  type AmountT      : Decimal(15, 2);
  type QuantityT    : Decimal(13, 3);
  type UnitT        : String(3);
  type StatusT      : String(1);
  type ABAPDate     : String(8);
  //SP09 requirement - Multi File Support
  type Source       : String(30);
  //SP09 requirement - User Defined Annotations


  type ValidityT {
    STARTDATE : SDate;
    ENDDATE   : SDate;
  };

  entity MapKeys {
    key KEYID    : String(10);
        APP_ID   : String(50);
        APP_CODE : String(50);
        EXT1     : String(50);
        EXT2     : String(50);
  };
};
