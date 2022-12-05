with cte1 as (
SELECT `business`.`_id`.`oid` AS `Xid_oid`,
  `business`.`address` AS `address`,
  `business`.`business_id` AS `business_id`,
  `business`.`categories` AS `categories`,
  CASE
       WHEN LOWER(`business`.`city`) LIKE '%phila%' THEN 'Philadelphia, PA'
       WHEN LOWER(`business`.`city`) LIKE '%tampa%' THEN 'Tampa, FL'
       WHEN `business`.`city` = 'New Orleans' THEN 'New Orleans, LA'
       WHEN LOWER(`business`.`city`) LIKE '%nashville%' THEN 'Nashville, TN'
       WHEN LOWER(`business`.`city`) LIKE '%polis%' THEN 'Indianapolis, IN'
       WHEN LOWER(`business`.`city`) LIKE '%tucson%' THEN 'Tucson, AZ'
       WHEN `business`.`city` = 'Reno' THEN 'Reno, NV'
       WHEN LOWER(`business`.`city`) LIKE '%santa%' THEN 'Santa Barbara, CA'
       WHEN LOWER(`business`.`city`) LIKE '%louis%' THEN 'Saint Louis, MO'
       WHEN `business`.`city` = 'Boise' THEN 'Boise, ID'
       WHEN LOWER(`business`.`city`) LIKE '%clearwater%' THEN 'Clearwater, FL'
       WHEN LOWER(`business`.`city`) LIKE '%peters%' THEN 'Saint Petersburg, FL'
  END as city_state,
  `business`.`latitude` AS `latitude`,
  `business`.`longitude` AS `longitude`,
  `business`.`name` AS `name`,
  `business`.`postal_code` AS `postal_code`,
  `business`.`review_count` AS `review_count`,
  `business`.`stars` AS `stars`,
  `business`.`state` AS `state`
FROM `fresh-myth-366902.yelp`.`business` `business`)
select
    *
from
    cte1
where city_state is not null
or `Xid_oid` NOT IN ('6361bc1cce759c550ed3eb48'
,'6361bba9ce759c550ed25233'
,'6361bba6ce759c550ed24657'
,'6361bc12ce759c550ed3c7b8'
,'6361bbadce759c550ed25cd9'
,'6361bb9bce759c550ed21af1'
,'6361bbffce759c550ed38364'
,'6361bbf6ce759c550ed36276'
,'6361bbd8ce759c550ed2f5c6'
,'6361bbf6ce759c550ed3646a'
,'6361bc24ce759c550ed40975'
,'6361bbffce759c550ed380a2'
,'6361bc32ce759c550ed43a15'
,'6361bba0ce759c550ed22d48'
,'6361bbb4ce759c550ed27530'
,'6361bbe3ce759c550ed31d14'
,'6361bc31ce759c550ed43703'
,'6361bc28ce759c550ed414b5')
