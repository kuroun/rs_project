class SimilarUsersRecommender
  def output(user_id)
    sql = "
      SELECT DISTINCT
          items_users.item_id
      FROM
          items_users
      WHERE
          items_users.user_id <> #{user_id}
          
              AND items_users.user_id IN (SELECT DISTINCT
                  items_users.user_id
              FROM
                  items_users
              WHERE
                  items_users.item_id IN (SELECT
                          items_users.item_id
                      FROM
                          items_users
                      WHERE
                          items_users.user_id = #{user_id}));
    "
    records_array = ActiveRecord::Base.connection.exec_query(sql)
    
  end
end