namespace sap.hana.democontent.epm.data;

//SP09 requirements - Multi File Support
using sap.hana.democontent.epm.data.EPM.Source as Source from './EPM';

context JobsDemo {
  entity Details {
    key TIME   : Timestamp;
        SOURCE : Source;
  };

  entity RuntimeSchedules {
    key NAME    : hana.VARCHAR(40);
        ID      : Integer;
        JOBTYPE : hana.VARCHAR(40);
  };
};
