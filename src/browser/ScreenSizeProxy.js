
module.exports = {
    get: function (success, error) {
        setTimeout(function () {
            success({
                width: Math.max(document.documentElement.clientWidth, window.innerWidth || 0),
                height: Math.max(document.documentElement.clientHeight, window.innerHeight || 0)
            });
        }, 0);
    }
};

require('cordova/exec/proxy').add('ScreenSize', module.exports);
