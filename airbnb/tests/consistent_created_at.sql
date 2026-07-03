 select dl.listing_id,dl.listing_name from {{ref('dim_listings_cleansed')}} DL   
    JOIN {{ref('fct_reviews')}} FR
     ON DL.LISTING_ID=FR.LISTING_ID
     WHERE TO_DATE(FR.REVIEW_DATE) < TO_DATE(DL.CREATED_AT)