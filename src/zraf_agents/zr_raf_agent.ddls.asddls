@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZRAF_AGENT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_RAF_AGENT
  as select from ZI_RAF_AGENT as Agent
  composition [ * ] of ZR_RAF_AGENT_CNTXT as _context
  composition [ * ] of ZR_RAF_AGENT_PARAM as _parameters
{
  key LlmFuncName,
      IsActive,
      LlmSummary,
      RapBoName,
      RapBoAction,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.user.lastChangedBy: true
      ChangedBy,
      @Semantics.systemDateTime.createdAt: true
      CreatedOn,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChanged,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChanged,
      _context,
      _parameters
}
