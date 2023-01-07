defmodule TwitterCloneElixirWeb.PostLive.PostComponent do
  use TwitterCloneElixirWeb, :live_component

  def render(assigns) do
    ~H"""
      <div id={"post-#{@post.id}"} class="post" style="border-style: solid; border-color: #aaa; border-width: 2px; padding: 16px; margin-bottom: 8px;">
        <div class="row">
          <div class="column column-10">
            <div class="post-avatar">
              <img src="https://via.placeholder.com/100" alt={@post.username} />
            </div>
          </div>
          <div class="column column-90 post-body">
            <b>@<%= @post.username %></b>
            <br/>
            <p><%= @post.body %></p>
          </div>
        </div>

        <div class="row">

          <div class="column" style="display: flex; align-items: center">
            <div><%= @post.likes_count %></div>
            <image src="https://img.icons8.com/ios/512/loading-heart.png" style="width: 20px; height: 20px; margin-left: 8px"/>
          </div>

          <div class="column" style="display: flex; align-items: center">
            <div><%= @post.reposts_count %></div>
            <image src="https://img.icons8.com/ios/512/retweet.png" style="width: 20px; height: 20px; margin-left: 8px"/>
          </div>

          <div class="column" style="display: flex; align-items: center">
            <%= live_patch to: Routes.post_index_path(@socket, :edit, @post.id) do %>
              <image src="https://img.icons8.com/ios/512/pencil.png" style="width: 20px; height: 20px; margin-left: 8px"/>
            <% end %>
            <%= link to: "#", phx_click: "delete", phx_value_id: @post.id do %>
              <image src="https://img.icons8.com/ios/512/trash.png" style="width: 20px; height: 20px; margin-left: 8px"/>
            <% end %>
          </div>

        </div>
      </div>
    """
  end
end
