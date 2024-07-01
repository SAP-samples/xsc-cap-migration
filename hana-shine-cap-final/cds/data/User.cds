namespace sap.hana.democontent.epm.data;

using sap.hana.democontent.epm.data.EPM as EPM from './EPM';

context User {

  entity Details {
    key PERS_NO   : String(10);
        FIRSTNAME : EPM.SString;
        LASTNAME  : EPM.SString;
        E_MAIL    : EPM.LString;
  };

};
