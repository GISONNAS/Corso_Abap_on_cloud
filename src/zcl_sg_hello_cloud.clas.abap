CLASS zcl_sg_hello_cloud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      _m_test
        IMPORTING iv_imput       TYPE char03
        RETURNING VALUE(rv_test) TYPE char05.

ENDCLASS.



CLASS zcl_sg_hello_cloud IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello, Cloud!' ).
    out->write( _m_test( 'OK' ) ).
  ENDMETHOD.

  METHOD _m_test.
    rv_test = 'OK'.
  ENDMETHOD.

ENDCLASS.
