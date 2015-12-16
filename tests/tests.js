exports.defineAutoTests = function() {
  describe('Screen Size Information (window.plugins.screensize)', function () {
    it('should exist', function() {
      expect(window.plugins.screensize).toBeDefined();
    });

    it('should contain get that is a function', function() {
      expect(window.plugins.screensize.get).toBeDefined();
      expect(typeof window.plugins.screensize.get).toBe('function');
    });

  });
};

exports.defineManualTests = function(contentEl, createActionButton) {
  var logMessage = function (message, color) {
    var log = document.getElementById('info');
    var logLine = document.createElement('div');
    if (color) {
      logLine.style.color = color;
    }
    logLine.innerHTML = message;
    log.appendChild(logLine);
  };

  var clearLog = function () {
    var log = document.getElementById('info');
    log.innerHTML = '';
  };

  var device_tests = '<h3>Press Dump Screensize button to get SIM information</h3>' +
    '<div id="dump_screensize"></div>' +
    'Expected result: Status box will get updated with Screensize info.';

  contentEl.innerHTML = '<div id="info"></div>' + device_tests;

  createActionButton('Dump Screensize', function() {
    clearLog();
    window.plugins.screensize.get(
      function(result) {
        logMessage(JSON.stringify(result));
      },
      function(error) {
        logMessage(JSON.stringify(error));
      }
    );
  }, 'dump_screensize');
};
