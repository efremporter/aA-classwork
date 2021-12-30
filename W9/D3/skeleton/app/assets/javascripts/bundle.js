/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module) => {

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


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle */ "./frontend/follow_toggle.js")

$(() => {
  let buttons = $("button.follow-toggle");
  buttons.each( (index) => new FollowToggle(buttons[index]))
})
})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map