SELECT
    qu.question_Id,
    qu.title,
    qu.content,
    qu.create_time,
    up.last_name,
    up.first_name,
    up.image_name
FROM
    question qu
INNER JOIN
    user_profile up
ON
    qu.create_user_id = up.user_id
ORDER BY
    qu.create_time DESC
