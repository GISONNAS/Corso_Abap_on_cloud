CLASS zcl_sg_estrazione_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sg_estrazione_flight IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
      DATA: lt_flight TYPE TABLE OF /dmo/flight,
            ls_flight TYPE /dmo/flight.

        " Select all records from the SFLIGHT table
        SELECT * FROM /dmo/flight INTO TABLE @lt_flight.
     out->write( lt_flight ).

  ENDMETHOD.

ENDCLASS.
