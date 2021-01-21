function FollowToggle($el) {
    this.$el = $el;
    this.userId = $('#data-user-id');
    this.followState = $('#data-initial-follow-state');
};

module.exports = FollowToggle;