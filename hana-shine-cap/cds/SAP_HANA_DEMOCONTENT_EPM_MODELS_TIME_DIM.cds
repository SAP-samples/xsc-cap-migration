@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_TIME_DIM {
  key DATETIMESTAMP   : Timestamp        @title: 'DATETIMESTAMP';
      DATE_SQL        : Date             @title: 'DATE_SQL';
      DATETIME_SAP    : hana.VARCHAR(14) @title: 'DATETIME_SAP';
      DATE_SAP        : hana.VARCHAR(8)  @title: 'DATE_SAP';
      YEAR            : hana.VARCHAR(4)  @title: 'YEAR';
      QUARTER         : hana.VARCHAR(2)  @title: 'QUARTER';
      MONTH           : hana.VARCHAR(2)  @title: 'MONTH';
      WEEK            : hana.VARCHAR(2)  @title: 'WEEK';
      WEEK_YEAR       : hana.VARCHAR(4)  @title: 'WEEK_YEAR';
      DAY_OF_WEEK     : hana.VARCHAR(2)  @title: 'DAY_OF_WEEK';
      DAY             : hana.VARCHAR(2)  @title: 'DAY';
      HOUR            : hana.VARCHAR(2)  @title: 'HOUR';
      MINUTE          : hana.VARCHAR(2)  @title: 'MINUTE';
      SECOND          : hana.VARCHAR(2)  @title: 'SECOND';
      CALQUARTER      : hana.VARCHAR(5)  @title: 'CALQUARTER';
      CALMONTH        : hana.VARCHAR(6)  @title: 'CALMONTH';
      CALWEEK         : hana.VARCHAR(6)  @title: 'CALWEEK';
      YEAR_INT        : Integer          @title: 'YEAR_INT';
      QUARTER_INT     : hana.TINYINT     @title: 'QUARTER_INT';
      MONTH_INT       : hana.TINYINT     @title: 'MONTH_INT';
      WEEK_INT        : hana.TINYINT     @title: 'WEEK_INT';
      WEEK_YEAR_INT   : Integer          @title: 'WEEK_YEAR_INT';
      DAY_OF_WEEK_INT : hana.TINYINT     @title: 'DAY_OF_WEEK_INT';
      DAY_INT         : hana.TINYINT     @title: 'DAY_INT';
};
