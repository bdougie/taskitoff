<%= form_for @todo do |f| %>

	<%= f.label :name, class: 'control-label' %>
  <div class="controls">
	  <%= f.text_field :name %>
	 </div>

  <%= f.label :description, class: 'control-label' %>
  <div class="controls">
	  <%= f.text_field :description %>
	 </div>

  <div class="control-group">
    <div class="controls">
      <%= f.submit "Save", class: 'btn' %>
    </div>
  </div>

<% end %>
