CLASS zcl_gs_insert_biglietto DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gs_insert_biglietto IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA:
        lt_biglietto TYPE TABLE OF zbiglietto_sg WITH EMPTY KEY.

    DELETE FROM zbiglietto_sg.
    lt_biglietto = VALUE #(
     ( id            = '01'
       creato_da     = sy-uname )
     ( id            = '02'
      creato_da     = sy-uname ) ).

    INSERT zbiglietto_sg
        FROM TABLE @lt_biglietto.
    IF sy-subrc IS INITIAL.
      COMMIT WORK AND WAIT.
      out->write(
        EXPORTING
          data   = lt_biglietto
          name   = 'OK'
*          RECEIVING
*            output =
      ).
    ELSE.
      ROLLBACK WORK.
      out->write(
        EXPORTING
          data   = lt_biglietto
          name   = 'KO'
*          RECEIVING
*            output =
      ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
