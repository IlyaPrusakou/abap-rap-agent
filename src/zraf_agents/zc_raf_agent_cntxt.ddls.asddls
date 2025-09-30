@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Context'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_RAF_AGENT_CNTXT 
as projection on ZR_RAF_AGENT_CNTXT
{
    key LlmFuncName,
    key SequenceId,
    Chunk,
    CreatedBy,
    ChangedBy,
    CreatedOn,
    LastChanged,
    /* Associations */
    _agent : redirected to parent ZC_RAF_AGENT
}
