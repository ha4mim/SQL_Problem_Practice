select customer_id,Count(v.visit_id) as count_no_trans   from Visits v
left join Transactions t on t.visit_id = v.visit_id
where t.visit_id is null
GROUP BY customer_id