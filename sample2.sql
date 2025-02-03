
-- in big query ####
--create an audit table to check for log entries for each table in staging and history datasets
--audit table for staging table
create table vivekproject-28.snapshot_staging.snap_stg_audit(dataset_name string,table_name string,date_audit date,total_record_count int64,audited_by string)
--audit table for hist table
create table vivekproject-28.snapshot_history.snap_hist_audit(dataset_name string,table_name string,date_audit date,total_record_count int64,audited_by string)
--inserting dat into audit tables
--insert into audit table of staging
insert into vivekproject-28.snapshot_history.snap_hist_audit select 'snapshot_history' as dataset_name,'snap_hist_audit' as table_name,current_date() as date_audit,count(*) as total_record_count,"EMP-101" as audited_by from vivekproject-28.snapshot_history.snap_h0
--insert into audit table of history
insert into vivekproject-28.snapshot_staging.snap_stg_audit select 'snapshot_staging' as dataset_name,'snap_stg_audit' as table_name,current_date() as date_audit,count(*) as total_record_count,"EMP-101" as audited_by from vivekproject-28.snapshot_staging.snap_s0

-- row policy####
--create row acess policy
CREATE ROW ACCESS POLICY DEPT_policy
ON snapshot_history.snap_h0
GRANT TO ('user:viveksagarsingotam@gmail.com')
FILTER USING (DEPTID= 'Broadband');
--check now, only Broadband row will display
select * from `snapshot_history.snap_h0`;
--drop row acess
DROP ROW ACCESS POLICY DEPT_policy ON snapshot_history.snap_h0;
--drop all acess rows policy
DROP ALL ROW ACCESS POLICIES ON snapshot_history.snap_h0;
--after removing the policy,all the data is displayed
select * from `snapshot_history.snap_h0`;

