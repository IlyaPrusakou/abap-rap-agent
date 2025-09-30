@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Parameters'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_RAF_AGENT_PARAM
  as projection on ZR_RAF_AGENT_PARAM
{
  key LlmFuncName,
  key ParameterId,
      ParentId,
      ParamName,
      LlmType,
      IsRequired,
      LlmDescription,
      CreatedBy,
      ChangedBy,
      CreatedOn,
      LastChanged,
      _agent : redirected to parent ZC_RAF_AGENT
}
