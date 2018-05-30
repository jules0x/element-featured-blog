<% if $ShowTitle %>
    <h2 class="element-title">$Title</h2>
<% end_if %>

<div class="element-featuredblog width__{$Width} flex-wrap" id="e{$ID}">
    <% loop $FeaturedBlogPosts() %>
        <div class="element featured">
            <a href="{$AbsoluteLink}">
                <h3 class="featured-title">$Title</h3>
                <div class="featured-image">$FeaturedImage</div>
                <% if $Summary %>
                    <div class="featured-summary">$Summary</div>
                <% else %>
                    <p class="featured-summary">$Excerpt</p>
                <% end_if %>
            </a>
        </div>
    <% end_loop %>
</div>
