'use strict';
const indexController = {};

indexController.index = (req, res) => {
    const env = process.env.NODE_ENV;

    res.send(`<h2>Hello From ${env} Docker!</h2><p>IndexController</p>`);
};

module.exports = indexController;
