@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View di Consumption'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_BIGLIETTO_GS
  provider contract transactional_query
  as projection on ZR_BIGLIETTO_GS
{
  key IdBiglietto,
      CreatoDa,
      CreatoA,
      ModificatoDa,
      ModificatoA
}
