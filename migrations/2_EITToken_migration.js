const EITToken = artifacts.require("EITToken");

module.exports = function (deployer) {
  deployer.deploy(EITToken);
};
