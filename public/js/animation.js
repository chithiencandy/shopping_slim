/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
if (typeof jQuery === 'undefined') {
    throw new Error('Bootstrap\'s JavaScript requires jQuery');
}

+function ($) {
    $.fn.extend({
        animateCss: function (animationName, callback) {
            var animationEnd = (function (el) {
                var animations = {
                    animation: 'animationend',
                    OAnimation: 'oAnimationEnd',
                    MozAnimation: 'mozAnimationEnd',
                    WebkitAnimation: 'webkitAnimationEnd'
                };

                for (var t in animations) {
                    if (el.style[t] !== undefined) {
                        return animations[t];
                    }
                }
            })(document.createElement('div'));

            this.addClass('animated ' + animationName).one(animationEnd, function () {
                $(this).removeClass('animated ' + animationName);

                if (typeof callback === 'function')
                    callback();
            });

            return this;
        }
    });
    $.fn.extend({
        magicCss: function (animationName, callback) {
            var ins = $(this);
                ins.addClass('magictime ' + animationName);
		setTimeout( function(){
		   ins.removeClass('magictime ' + animationName);
                   if (typeof callback === 'function')
                    callback();
                }, 1000 );
            return this;
        }
    });
}(jQuery);


