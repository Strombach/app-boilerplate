'use strict';
const indexController = {};

indexController.index = (req, res) => {
    const env = process.env.NODE_ENV;
    const test = process.env.TEST;

    res.send(`<h2>Hello From ${env} Docker!</h2>
    <p>IndexController</p>
    <p>${test}</p>`);
};

module.exports = indexController;
