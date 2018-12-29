const si = require('systeminformation');

/*
si.cpu((info) => {
    console.log('cpu: ', info);
});
*/

/*
si.bios((info) => {
    console.log('bios: ', info);
});
*/

/*
si.blockDevices((info) => {
    console.log('blockDevices: ', info);
});
*/

si.baseboard((info) => {
    console.log('baseboard: ', info);
});

si.diskLayout((info) => {
    console.log('diskLayout: ', info);
});

si.networkInterfaces((info) => {
    console.log('networkInterfaces: ', info);
});

si.dockerAll((info) => {
    console.log('dockerAll: ', info);
});
