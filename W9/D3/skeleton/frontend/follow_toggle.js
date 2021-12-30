// const { default: moduleTransformations } = require("@babel/preset-env/lib/module-transformations");

class FollowToggle{
    constructor(button){
        console.log(button)
        this.el = $(button);
        this.followState = this.el.data("initial-follow-state");
        this.userId = this.el.data("user-id");
        this.render();
        document.addEventListener("click", this.handleClick.bind(this))
    }

    render() {
        if (this.followState === "unfollowed") {
            this.el.html("Follow!");
        } else {
            this.el.html("Unfollow!");
        }
    }

    handleClick(event) {
        event.preventDefault();
        if (this.followState === "unfollowed") {
            $.ajax({
                url: `/users/${this.userId}/follow`,
                method: 'POST',
                dataType: 'JSON'
                // data: { user: { user_id: `${this.userId}`}}, //this isn't neccessary now, because we are passing the userId in the url, based the rails routes. The data represents the body
                //if this is successful
                //.then(change follow state to opposite, call render())
            }).then( () => {
                this.followState = "followed";
                this.render();
            })
        } else {
            $.ajax({
                url: `/users/${this.userId}/follow`,
                method: 'DESTROY',
                dataType: 'JSON'
            }).then( () => {
                this.followState = "unfollowed";
                this.render();
            })
        }
    }
}

module.exports = FollowToggle; 

//when would you need to use more ".then"s?
