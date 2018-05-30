<% if $ShowTitle %>
    <h2 class="element-title">$Title</h2>
<% end_if %>

<div class="element-featuredblog width__{$Width} flex-wrap" id="e{$ID}">
    <% loop $FeaturedBlogPosts() %>
        <div class="element featured">
            <a href="{$FeaturedPage.Link}">
                <h3 class="featured-title">$FeaturedPage.Title</h3>
                <div class="featured-image">$FeaturedPage.FeatureImage</div>
                <p class="featured-summary">$FeaturedPage.FeatureSummary</p>
            </a>
        </div>
    <% end_loop %>
</div>
