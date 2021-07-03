const express = require('express');
const router = express.Router();
const os = require("os");
const hostname = os.hostname();

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('index', {
        hostname: hostname
    });
});

module.exports = router;