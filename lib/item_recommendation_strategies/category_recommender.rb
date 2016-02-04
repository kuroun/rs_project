class CategoryRecommender
  def output(user_id)
    sql = 
    "
      SELECT 
          item_id, COUNT(item_id) AS NumberCount 
      FROM
          categories_items
      WHERE
          categories_items.category_id IN (SELECT DISTINCT
                  categories_items.category_id
              FROM
                  items_users
                      INNER JOIN
                  categories_items
              WHERE
                  categories_items.item_id = items_users.item_id AND user_id = #{user_id})
              AND categories_items.item_id NOT IN (SELECT 
                  items_users.item_id
              FROM
                  items_users
              WHERE
                  items_users.user_id = #{user_id})
      GROUP BY item_id
      ORDER BY NumberCount DESC;  
    "
    records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end