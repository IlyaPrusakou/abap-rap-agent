@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZRAF_AGENT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZI_RAF_AGENT
  as select from zraf_agent as Agent
{
  key llm_func_name  as LlmFuncName,
  is_active          as IsActive,
  llm_summary        as LlmSummary,
  rap_bo_name        as RapBoName,
  rap_bo_action      as RapBoAction,
  created_by         as CreatedBy,
  changed_by         as ChangedBy,
  created_on         as CreatedOn,
  last_changed       as LastChanged,
  local_last_changed as LocalLastChanged
}
