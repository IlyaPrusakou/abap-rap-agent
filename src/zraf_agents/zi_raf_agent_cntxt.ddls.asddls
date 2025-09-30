@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Context'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_RAF_AGENT_CNTXT
  as select from zraf_agent_cntxt
{
  key llm_func_name as LlmFuncName,
  key sequence_id   as SequenceId,
      chunk         as Chunk,
      created_by    as CreatedBy,
      changed_by    as ChangedBy,
      created_on    as CreatedOn,
      last_changed  as LastChanged
}
