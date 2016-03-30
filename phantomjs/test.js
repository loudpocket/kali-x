var phantom = require('phantom');
phantom.create().then(function(ph) {
    ph.createPage().then(function(page) {
        // use page
        ph.exit();
    });
});
