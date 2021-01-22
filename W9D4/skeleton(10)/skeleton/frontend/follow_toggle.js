function FollowToggle($el) {
    this.$el = $el;
    this.userId = this.$el.data('user-id');
    this.followState = this.$el.data('initial-follow-state');
    this.render();
    this.$el.on("click", this.handleClick.bind(this))
};

FollowToggle.prototype.render = function () {
    // debugger
    if (this.followState === false) {
        this.$el.html("Follow!")
    } else if (this.followState === true) {
        this.$el.html("Unfollow!")
    }
};

FollowToggle.prototype.handleClick = function (event) {
    event.preventDefault()

    debugger
    if (this.followState === false) {
        $.ajax({
            url: "/users/:id/follow",
            type: "POST",
            dataType: "jsonp"
        })
        this.followState = true
        this.render()
    } else if (this.followState === true) {
        $.ajax({
            url: "/users/:id/follow",
            type: "DELETE",
            dataType: "jsonp"
        })
        this.followState = false
        this.render()
    }
}

module.exports = FollowToggle;

