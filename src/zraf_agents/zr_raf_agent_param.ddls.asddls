@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Parameters'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_RAF_AGENT_PARAM
  as select from ZI_RAF_AGENT_PARAM
  association to parent ZR_RAF_AGENT as _agent on $projection.LlmFuncName = _agent.LlmFuncName
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
      _agent
}
