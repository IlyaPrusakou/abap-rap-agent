@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agent Parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_RAF_AGENT_PARAM
  as select from zraf_agent_param
{
  key llm_func_name   as LlmFuncName,
  key parameter_id    as ParameterId,
      parent_id       as ParentId,
      param_name      as ParamName,
      llm_type        as LlmType,
      is_required     as IsRequired,
      llm_description as LlmDescription,
      created_by      as CreatedBy,
      changed_by      as ChangedBy,
      created_on      as CreatedOn,
      last_changed    as LastChanged
}
