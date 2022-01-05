const couplesList = artifacts.require("couplesList");

module.exports = function(deployer) {
  deployer.deploy(couplesList);
};
