@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Context'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_RAF_AGENT_CNTXT
  as select from ZI_RAF_AGENT_CNTXT
  association to parent ZR_RAF_AGENT as _agent on $projection.LlmFuncName = _agent.LlmFuncName
{
  key LlmFuncName,
  key SequenceId,
      Chunk,
      CreatedBy,
      ChangedBy,
      CreatedOn,
      LastChanged,
      _agent
}
