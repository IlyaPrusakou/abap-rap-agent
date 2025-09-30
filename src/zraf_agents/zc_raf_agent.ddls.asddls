@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZRAF_AGENT'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_RAF_AGENT
  provider contract transactional_query
  as projection on ZR_RAF_AGENT
  association [1..1] to ZR_RAF_AGENT as _BaseEntity on $projection.LlmFuncName = _BaseEntity.LlmFuncName
{
  key LlmFuncName,
      IsActive,
      LlmSummary,
      RapBoName,
      RapBoAction,
      @Semantics: {
        user.createdBy: true
      }
      CreatedBy,
      @Semantics: {
        user.lastChangedBy: true
      }
      ChangedBy,
      @Semantics: {
        systemDateTime.createdAt: true
      }
      CreatedOn,
      @Semantics: {
        systemDateTime.lastChangedAt: true
      }
      LastChanged,
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }
      LocalLastChanged,
      _BaseEntity,
      _parameters : redirected to composition child ZC_RAF_AGENT_PARAM,
      _context    : redirected to composition child ZC_RAF_AGENT_CNTXT
}
