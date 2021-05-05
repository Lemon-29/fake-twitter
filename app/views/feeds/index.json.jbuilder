<h1>list of tweet</h1>
<table>
  <tr>
    <th>タイトル</th>
    <th>内容</th>
  </tr>
<% @blogs.each do |blog| %>
  <tr>
    <td><%= feed.title %></td>
    <td><%= feed.content %></td>
    <td><%= link_to '詳細を確認する', feed_path(blog.id) %></td>
    <td><%= link_to "ブログを編集する", edit_feed_path(blog.id) %></td>
  </tr>
<% end %>
</table>
<%= link_to '新しくブログを投稿する', new_blog_path %>