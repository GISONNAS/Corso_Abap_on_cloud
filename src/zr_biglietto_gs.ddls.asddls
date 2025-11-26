@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biglietti'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_BIGLIETTO_GS as select from zbiglietto_sg as biglietto
{
  key biglietto.id        as IdBiglietto,
  @Semantics.user.createdBy: true
  biglietto.creato_da     as CreatoDa,
  @Semantics: { systemDateTime.createdAt: true }
  biglietto.creato_a      as CreatoA,
  @Semantics.user.lastChangedBy: true
  biglietto.modificato_da as ModificatoDa,
  @Semantics: { systemDateTime.lastChangedAt: true }
  biglietto.modificato_a  as ModificatoA  
  }

