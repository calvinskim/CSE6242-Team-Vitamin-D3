with review_count as
  (
    select
      business_id
      ,count(*) as review_count
      ,avg(stars) as rating
    from
      yelp.review
    where
      date between '2020-01-01' and '2022-12-31'
    group by
      1
  )
select
  b.city
  ,b.business_id
  ,rc.review_count
  ,rc.rating
from
  yelp.business b
left join
  review_count rc
  on b.business_id = rc.business_id
where
  categories LIKE '%Restaurant%'
  and rc.review_count is not null